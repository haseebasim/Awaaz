import 'dart:async';
import 'dart:convert';
import 'dart:io' as io;
import 'dart:isolate';
import 'package:audioplayers/audioplayers.dart';
import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sound_lite/public/flutter_sound_recorder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haseeb_s_application/core/firebase.dart';
import 'package:haseeb_s_application/features/words_screen/sound_player.dart';
import 'package:haseeb_s_application/features/words_screen/sound_recoder.dart';
import 'package:haseeb_s_application/provider/course.dart';
import 'package:haseeb_s_application/provider/patients.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'package:requests/requests.dart';
import 'package:tuple/tuple.dart';

import '../../core/app_export.dart';
import '../../core/utils/color_constant.dart';

class WordsScreen extends StatefulWidget {
  static const routeName = '/recordingScreen';
  @override
  State<WordsScreen> createState() => _WordsScreenState();
}

class _WordsScreenState extends State<WordsScreen> {
  var _words;
  var _textPath;
  final recorder = SoundRecorder();
  bool _recordingStatus = false;
  final player = SoundPlayer();
  double _accuracy = 0.0;
  String _recordedFilePath = '';
  var _dayId;
  var _dayCourseList;
  var _isloading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    recorder.init();
    player.init();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    _dayId = ModalRoute.of(context)?.settings.arguments;
    _dayCourseList = Provider.of<Course>(context, listen: false).dayCourseItem;
    print(_dayCourseList);
    _dayCourseList['days'].forEach((e) {
      print('printinge');
      print('printing id $_dayId');
      if (e['_id'] == _dayId) {
        print(e);
        _words = e['words'];
      }
      ;
    });
    print('printing words');
    print(_words);
    super.didChangeDependencies();
  }

  Future<dynamic> MLModel(String audioPath, String textPath) async {

    var file = io.File(audioPath);
    var body = file.openRead();
    var text = io.File(textPath);

    Map<String, Tuple3> values = {
      "file": Tuple3(audioPath, body, "audio/wav"),
      "text": Tuple3(textPath, text, "text/txt")
    };

    print(await file.exists());
    print(await text.exists());
    print(await text.readAsString());

    var httpResponse = http.MultipartRequest(
        'POST', Uri.parse('http://35.225.252.85/predict'));

    Map<String, String> headers = {"Content-type": "multipart/form-data"};
    httpResponse.files.add(http.MultipartFile(
      'file',
      file.readAsBytes().asStream(),
      file.lengthSync(),
      filename: "${audioPath.split('/').last}",
    ));
    httpResponse.files.add(http.MultipartFile(
        'text', text.readAsBytes().asStream(), text.lengthSync(),
        filename: "${textPath.split('/').last}"));

    var tres = await httpResponse.send();

    var response = await http.Response.fromStream(tres);
    print(response.json());
    return response.json();
  }

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return [if (duration.inHours > 0) hours, minutes, seconds].join(':');
  }

  void tryAgain() {
    setState(() {
      _recordedFilePath = '';
    });
  }

  Future _submitRecording() async {
    setState(() {
      _isloading = true;
    });
    io.File file = io.File(_recordedFilePath);
    print(await file.exists());
    try {
      final firebaseStorage = FirebaseStorage.instance;
      var recordingRef = await firebaseStorage
          .ref()
          .child('recordings/${file.path.split('/').last}');
      await recordingRef.putFile(file);

      var downloadUrl = await recordingRef.getDownloadURL();
      print('printing url $downloadUrl');
      var patientId;
      await FirebaseInit.prefs
          .then((value) => patientId = value.getString('_id'));

      var progressObject = {
        'patientId': patientId,
        'weekId': _dayCourseList['weekId'],
        'day': {
          '_id': _dayId,
          'accuracy': _accuracy * 100,
          'recording': downloadUrl,
        }
      };
      var url = Uri.parse(
          'https://awaaz-db4a4-default-rtdb.firebaseio.com/progress.json');
      final response = await http.get(url);
      print('printing response' + response.body);
      if (response.body.toString() == 'null') {
        await http.put(url, body: jsonEncode([progressObject]));
      } else {
        var extractedData = jsonDecode(response.body);
        var exits = false;
        extractedData.forEach((e) {
          if (e['day']['_id'] == _dayId) {
            e['day']['accuracy'] = _accuracy *100;
            e['day']['recording'] = downloadUrl;
            exits = true;
          }
        });

        if (exits) {
          await http.put(url, body: jsonEncode(extractedData));
        } else {
          await http.put(url,
              body: jsonEncode([...extractedData, progressObject]));
        }
        // await http.put(url,
        //     body: jsonEncode([...extractedData, progressObject]));
      }
      setState(() {
        _isloading = false;
      });
      Navigator.pop(context, true);
      // await Provider.of<Patients>(context).addProgress(downloadUrl, _accuracy);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isPlayerPlaying = player.isPlaying;
    print('recording ${recorder.isRecording}');
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: ColorConstant.whiteA700,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: getVerticalSize(
                        162.00,
                      ),
                      width: getHorizontalSize(
                        334.00,
                      ),
                      margin: EdgeInsets.only(
                        left: getHorizontalSize(
                          28.00,
                        ),
                        top: getVerticalSize(
                          30.00,
                        ),
                        right: getHorizontalSize(
                          28.00,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.gray200,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  140.00,
                                ),
                                top: getVerticalSize(
                                  44.00,
                                ),
                                right: getHorizontalSize(
                                  140.00,
                                ),
                                bottom: getVerticalSize(
                                  44.00,
                                ),
                              ),
                              child: Text(
                                _words[0],
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: ColorConstant.gray600,
                                  fontSize: getFontSize(
                                    38,
                                  ),
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          37.00,
                        ),
                        top: getVerticalSize(
                          37.00,
                        ),
                        right: getHorizontalSize(
                          37.00,
                        ),
                      ),
                      child: Container(
                        height: getVerticalSize(
                          22.00,
                        ),
                        width: getHorizontalSize(
                          25.00,
                        ),
                        child: SvgPicture.asset(
                          ImageConstant.imgVector,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  if (_recordedFilePath != '')
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            37.00,
                          ),
                          top: getVerticalSize(
                            26.00,
                          ),
                          right: getHorizontalSize(
                            37.00,
                          ),
                        ),
                        child: Container(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              GestureDetector(
                                onTap: () async {
                                  print(_recordedFilePath);
                                  await player.toggle(
                                      path: _recordedFilePath,
                                      whenFinished: () => setState(() {}));
                                  setState(() {});
                                },
                                child: SvgPicture.asset(
                                  ImageConstant.imgGroup,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ])),
                      ),
                    ),
                  _isloading
                      ? Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              260.50,
                            ),
                          ),
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        )
                      : Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  260.50,
                                ),
                                bottom: getVerticalSize(
                                  23.00,
                                ),
                              ),
                              child: _recordedFilePath == ''
                                  ? _recordingStatus
                                      ? GestureDetector(
                                          onTap: () async {
                                            setState(() {
                                              _recordingStatus = false;
                                            });
                                            final directory =
                                                await getApplicationDocumentsDirectory();
                                            io.File file = await io.File(
                                                '${directory.path}/text.txt');
                                            await file.writeAsString(_words[0]);
                                            print('reading file');
                                            print(await file.readAsString());
                                            print(file.path);
                                            print(await file.exists());
                                            var temp = await recorder.stop();
                                            if (temp != '')
                                              setState(() {
                                                _recordedFilePath = temp;
                                              });

                                            setState(() {
                                              _isloading = true;
                                            });
                                            print('after load');
                                            final tempAcc = await MLModel(
                                                _recordedFilePath, file.path);
                                            print('printing $tempAcc');
                                            _accuracy = 1.0 - tempAcc['wer'];

                                            setState(() {
                                              _isloading = false;
                                            });
                                           
                                          },
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                  child: Icon(
                                                Icons.stop,
                                                size: 60,
                                              )),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              StreamBuilder<
                                                      RecordingDisposition>(
                                                  stream: recorder.onProgress,
                                                  builder: (context, snapshot) {
                                                    final duration =
                                                        snapshot.hasData
                                                            ? snapshot
                                                                .data!.duration
                                                            : Duration.zero;
                                                    return Text(
                                                        '${duration.inSeconds} s');
                                                  }),
                                            ],
                                          ),
                                        )
                                      : GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _recordingStatus = true;
                                            });
                                            recorder.record();
                                          },
                                          child: Container(
                                            height: getVerticalSize(
                                              47.00,
                                            ),
                                            width: getHorizontalSize(
                                              32.00,
                                            ),
                                            child: SvgPicture.asset(
                                              ImageConstant.imgVector1,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        )
                                  : Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(
                                              bottom: getVerticalSize(30)),
                                          child: Text(
                                            '${_accuracy *100}%',
                                            style: TextStyle(
                                                color: ColorConstant.blue700,
                                                fontSize: getFontSize(50)),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: getHorizontalSize(100),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color:
                                                      ColorConstant.amber700),
                                              child: TextButton(
                                                onPressed: tryAgain,
                                                child: Text(
                                                  'Try again',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: getHorizontalSize(20),
                                            ),
                                            Container(
                                              width: getHorizontalSize(100),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: ColorConstant.blue700),
                                              child: TextButton(
                                                onPressed: _submitRecording,
                                                child: Text(
                                                  'Submit',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )),
                        )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
