//import 'dart:convert';
//import 'dart:web_audio';

import 'package:requests/requests.dart';
import 'dart:io';
import 'package:tuple/tuple.dart';
import 'package:http/http.dart' as http;

final URL = "http://35.225.252.85/predict";
final Local_URL = "http://127.0.0.1:5000/predict";

//audio file we'd like to send for predicting keyword
// final FILE_PATH = "1.wav";
// final TEXT_PATH = "1.txt";

dynamic MLModel(audioPath, textPath) async {
  print('ML model 0');
  
  var file = File(audioPath);
  var body = file.openRead();
  var text = File(textPath);

  print(audioPath);
  print(textPath);
  Map<String, Tuple3> values = {
    "file": Tuple3(audioPath, body, "audio/wav"),
    "text": Tuple3(textPath, text, "text/txt")
  };

  print('ML model 1');
  print(audioPath.path);
  print(textPath.path);
  var httpResponse = http.MultipartRequest('POST', Uri.parse(URL));

  Map<String, String> headers = {"Content-type": "multipart/form-data"};
  httpResponse.files.add(http.MultipartFile(
    'file',
    file.readAsBytes().asStream(),
    file.lengthSync(),
    filename: "${audioPath.path.split('/').last}",
  ));
  httpResponse.files.add(http.MultipartFile(
      'text', text.readAsBytes().asStream(), text.lengthSync(),
      filename: "${textPath.path.split('/').last}"));
  print('ML model 2');

  var tres = await httpResponse.send();
  print('ML model 3');

  var response = await http.Response.fromStream(tres);
  print(response.json());
  return response.json();
}
