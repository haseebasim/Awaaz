import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/firebase.dart';
import 'auth.dart';

class Patient {
  final String id;
  final String name;
  final int age;
  final String disorderLevel;
  final bool active;
  final String contact;
  final String profileImage;
  final String email;
  final String address;
  final String gender;
  final String therapistId;

  Patient(
      this.id,
      this.name,
      this.age,
      this.disorderLevel,
      this.active,
      this.contact,
      this.profileImage,
      this.email,
      this.address,
      this.gender,
      this.therapistId);
}

class Patients with ChangeNotifier {
  List<Patient> _patientList = [];
  List<dynamic> _patientProgress = [];

  final _remoteURL = Uri.parse(
      'https://awaaz-db4a4-default-rtdb.firebaseio.com/users/patients.json');

  List<Patient> get PatientList {
    return [..._patientList];
  }

  dynamic get PatientProgress {
    return _patientProgress;
  }

  Future fetchPatientProgress() async {
    final response = await http.get(Uri.parse(
        'https://awaaz-db4a4-default-rtdb.firebaseio.com/progress.json'));
    print('printing response');
    print(response.body);
    var extracted = jsonDecode(response.body);
    var patientId;
    await FirebaseInit.prefs.then((value) {
      if (value.getString('userType') == 'patient') {
        patientId = value.getString('_id');
      }
    });
    print(extracted);
    print('printing patietnID' + patientId);
    if (patientId != null) {
      _patientProgress = extracted
          .where((element) => element['patientId'] == patientId)
          .toList();
    }

    print(_patientProgress);
  }

  Future fetchProgressByWeek(String weekId) async {
    final response = await http.get(Uri.parse(
        'https://awaaz-db4a4-default-rtdb.firebaseio.com/progress.json'));
    print('printing response');
    print(response.body);
    var extracted = jsonDecode(response.body);

    print(extracted);
    _patientProgress = extracted
        .where((element) => element['weekId'] == weekId)
        .toList();

    print(_patientProgress);
  }
  // List<Map<String, dynamic>> getJsonFormat() {
  //   List<Map<String, dynamic>> parsedList = _patientList
  //       .map((e) => {
  //             'name': e.name,
  //             'age': e.age,
  //             'disorderLevel': e.disorderLevel,
  //             'active': e.active,
  //             'contact': e.contact,
  //             'profileImage': e.profileImage,
  //             'email': e.email,
  //             'address': e.address,
  //             'gender': e.gender,
  //             'therapistId': e.therapistId
  //           })
  //       .toList();

  //   return parsedList;
  // }

  Future<void> addProgress(String downloadUrl, String accuracy) async {}

  Future<void> addPatient(Patient PatientData) async {
    Auth _auth = new Auth();
    try {
      var localId =
          await _auth.signup(PatientData.email, '${PatientData.name}123');
      var response = await http.post(_remoteURL,
          body: jsonEncode({
            '_id': localId,
            'name': PatientData.name,
            'age': PatientData.age,
            'disorderLevel': PatientData.disorderLevel,
            'active': PatientData.active,
            'contact': PatientData.contact,
            'profileImage': PatientData.profileImage,
            'email': PatientData.email,
            'address': PatientData.address,
            'gender': PatientData.gender,
            'therapistId': PatientData.therapistId
          }));
      final extractedData = jsonDecode(response.body);
      if (extractedData['error'] != null) {
        throw extractedData['error']['message'];
      } else {
        await fetchAndSetProducts();
      }
      print('printing patientList');
      print(_patientList);
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  Future<void> fetchAndSetProducts() async {
    try {
      final response = await http.get(_remoteURL);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      final List<Patient> loadedPatients = [];
      extractedData.forEach((patientId, patientData) {
        print('printing patientdata');
        print(patientData);
        loadedPatients.add(Patient(
            patientData['_id'],
            patientData['name'],
            patientData['age'],
            patientData['disorderLevel'],
            patientData['active'],
            patientData['contact'],
            patientData['profileImage'],
            patientData['email'],
            patientData['address'],
            patientData['gender'],
            patientData['therapistId']));
      });

      _patientList = loadedPatients;
      notifyListeners();
    } catch (e) {
      rethrow;
    }
  }
}
