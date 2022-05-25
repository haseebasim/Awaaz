import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Course with ChangeNotifier {
  List<dynamic> _courseItems = [];
  Map<String, dynamic> _dayCourseItems = {};

  List<dynamic> get courseItem {
    return [..._courseItems];
  }

  Map<String, dynamic> get dayCourseItem {
    return _dayCourseItems;
  }

  void setDayCourseItem(int index) {
    _dayCourseItems = {
      'weekId': _courseItems[index]['_id'],
      'days': [..._courseItems[index]['days']]
    };
    print('daycourseItem');
    print(_dayCourseItems);
  }

  Future<void> fetchAndSetCourse() async {
    final url = Uri.parse(
        'https://awaaz-db4a4-default-rtdb.firebaseio.com/course.json');

    try {
      final response = await http.get(url);
      final extractedResponse = jsonDecode(response.body);
      _courseItems = extractedResponse;
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }
}
