import 'dart:convert';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:haseeb_s_application/core/firebase.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  String _userId = '';
  var _userDetails = null;

  dynamic get userDetails {
    return _userDetails;
  }

  void set userDetails(var details) {
    userDetails = details;
  }

  Future<void> signout() async {
    await FirebaseInit.auth.signOut();
    FirebaseInit.prefs.then((value) {
      value.remove('name');
      value.remove('_id');
      value.remove('userType');
    });
  }

  Future<void> login(String email, String password) async {
    try {
      await FirebaseInit.auth
          .signInWithEmailAndPassword(email: email, password: password);
      await getTherapistDetails(email);
      if (_userDetails == null) {
        await getPatientDetails(email);
      }
      _userId = FirebaseInit.auth.currentUser!.uid;
      print(_userDetails);
      print(_userDetails['_id']);

      await FirebaseInit.prefs.then((value) {
        value.setString('name', _userDetails['name']);
        value.setString('_id', _userDetails['_id']);
      });
      notifyListeners();
    } catch (e) {
      throw (e);
    }
  }

  Future<String> signup(String email, String password) async {
    final url = Uri.parse(
        'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyAqWoNl-4nWLN67i0ih_qeNyxq1Z_58RXM');

    try {
      final response = await http.post(url,
          body: jsonEncode({
            'email': email,
            'password': password,
            'returnSecureToken': true
          }));

      final extractedData = json.decode(response.body);
      if (extractedData['error'] != null) {
        throw HttpException(extractedData['error']['message']);
      } else {
        return extractedData['localId'];
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> getTherapistDetails(String email) async {
    final url = Uri.parse(
        'https://awaaz-db4a4-default-rtdb.firebaseio.com/users/therapists.json');

    final response = await http.get(url);

    final extractedData = jsonDecode(response.body);
    print('printing extracted data ');
    print(extractedData);
    var userData = null;
    extractedData.forEach((user) {
      if (user['email'] == email) {
        userData = user;
      }
    });
    print(email);
    print('printing therapist ${userData}');
    if (userData != null) {
      _userDetails = userData;
      await FirebaseInit.prefs
          .then((value) => value.setString('userType', 'therapist'));
    }
  }

  Future<void> getPatientDetails(String email) async {
    final url = Uri.parse(
        'https://awaaz-db4a4-default-rtdb.firebaseio.com/users/patients.json');

    final response = await http.get(url);

    final extractedData = json.decode(response.body) as Map<String, dynamic>;

    var userData;
    print('extracted Data lenght ${extractedData.length}');
    extractedData.forEach((patientId, patientData) async {
      print('patientData ${patientData['email']}');
      if (patientData != null) if (patientData['email'] == email) {
        print('inside if');
        _userDetails = {'name': patientData['name'], '_id': patientData['_id']};
        var shared = await FirebaseInit.prefs;
        shared.setString('userType', 'patient');
      }
    });
    print(_userDetails);
    // if (userDataIndex != -1) {
    //   await FirebaseInit.prefs
    //       .then((value) => value.setString('userType', 'patient'));
    //   _userDetails = patients[userDataIndex];
    // }
  }
}
