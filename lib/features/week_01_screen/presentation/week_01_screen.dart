import 'dart:developer';

import 'package:haseeb_s_application/core/firebase.dart';
import 'package:haseeb_s_application/provider/course.dart';
import 'package:haseeb_s_application/provider/patients.dart';
import 'package:provider/provider.dart';

import './widgets/group207_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haseeb_s_application/core/app_export.dart';

class Week01Screen extends StatefulWidget {
  static const routeName = '/showPatientWeeklyProgress';

  @override
  State<Week01Screen> createState() => _Week01ScreenState();
}

class _Week01ScreenState extends State<Week01Screen> {
  var _patientProgress;
  var _patientId;
  var _counter = 0;
  @override
  void initState() {
    _patientProgress =
        Provider.of<Patients>(context, listen: false).PatientProgress;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as String;
    _patientId = args.split('-')[0];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: ColorConstant.blue700,
          title: Text(
            "Week ${args.split('-')[1]}",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: ColorConstant.whiteA700,
              fontSize: getFontSize(
                22,
              ),
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(
                    top: getVerticalSize(
                      29,
                    ),
                    bottom: getVerticalSize(
                      20,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Consumer<Course>(
                        builder: (context, value, child) => Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              22,
                            ),
                            top: getVerticalSize(
                              17,
                            ),
                            right: getHorizontalSize(
                              19,
                            ),
                          ),
                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: value.dayCourseItem.length,
                            itemBuilder: (context, index) {
                              print('value.dayCourseItem');
                              print(_patientId);
                              print(_patientProgress);
                              var dayId =
                                  value.dayCourseItem['days'][index]['_id'];
                              bool flag = false;
                              var data;
                              _patientProgress.forEach((e) {
                                if (e['day']['_id'] == dayId &&
                                    _patientId == e['patientId']) {
                                  flag = true;
                                  data = e['day'];
                                  _counter += 1;
                                }
                              });
                              return flag
                                  ? Group207ItemWidget(
                                      id: data['_id'],
                                      accuracy: data['accuracy'],
                                      index: index,
                                      recording: data['recording'],
                                    )
                                  : SizedBox();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
