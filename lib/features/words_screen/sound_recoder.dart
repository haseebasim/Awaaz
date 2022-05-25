import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sound_lite/flutter_sound.dart';
import 'package:flutter_sound_lite/public/flutter_sound_recorder.dart';
import 'package:path_provider/path_provider.dart';

class SoundRecorder {
  FlutterSoundRecorder? _audioRecorder;
  bool _isRecorderInitialized = false;
  Future init() async {
    _audioRecorder = FlutterSoundRecorder();
    await _audioRecorder!.openAudioSession();
    _isRecorderInitialized = true;
    _audioRecorder?.setSubscriptionDuration(const Duration(milliseconds: 500));
  }

  Future dispose() async {
    await _audioRecorder!.closeAudioSession();
    _audioRecorder = null;
    _isRecorderInitialized = false;
  }

  dynamic get onProgress => _audioRecorder?.onProgress;
  bool get isRecording => _audioRecorder!.isRecording;

  Future record() async {
    final directory = await getApplicationDocumentsDirectory();
    if (!_isRecorderInitialized) return;

    await _audioRecorder!.startRecorder(
      toFile: '${directory.path}/test_audio.wav',
      codec: Codec.pcm16WAV,
    );
  }

  Future stop() async {
    if (!_isRecorderInitialized) return '';
    final path = await _audioRecorder!.stopRecorder();
    print(path);
    return path;
    // File file = File(path!);
    // print(await file.exists());
    // try {
    //   final firebaseStorage = FirebaseStorage.instance;
    //   var recordingRef = await firebaseStorage
    //       .ref()
    //       .child('recordings/${file.path.split('/').last}');
    //   await recordingRef.putFile(file);

    //   var downloadUrl = await recordingRef.getDownloadURL();
    //   print('printing url $downloadUrl');
    //   return downloadUrl;
    // } catch (e) {
    //   print(e);
    // }
  }
}
