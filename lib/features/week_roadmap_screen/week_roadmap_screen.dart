import 'package:haseeb_s_application/provider/course.dart';
import 'package:provider/provider.dart';

import '../../core/app_export.dart';
import '../../provider/patients.dart';
import '../week_roadmap_screen/widgets/course_roadmap_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WeekRoadmapScreen extends StatefulWidget {
  static const routeName = '/weekCourse';

  @override
  State<WeekRoadmapScreen> createState() => _WeekRoadmapScreenState();
}

class _WeekRoadmapScreenState extends State<WeekRoadmapScreen> {
  var _weekCourse;
  var _patientProgress;
  var _isloading;
  @override
  void initState() {
    setState(() {
      _isloading = true;
    });
    final courseProvider = Provider.of<Course>(context, listen: false);
    courseProvider.fetchAndSetCourse();
    Provider.of<Patients>(context, listen: false)
        .fetchPatientProgress()
        .then((value) {
      setState(() {
        _patientProgress =
            Provider.of<Patients>(context, listen: false).PatientProgress;
        _isloading = false;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(_weekCourse);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: ColorConstant.blue700,
          title: Text(
            "Weekly Tasks",
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
        body: _isloading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Container(
                decoration: BoxDecoration(
                  color: ColorConstant.whiteA700,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          decoration: BoxDecoration(
                            color: ColorConstant.whiteA700,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  right: getHorizontalSize(
                                    22.00,
                                  ),
                                  bottom: getVerticalSize(
                                    221.00,
                                  ),
                                ),
                                child: Consumer<Course>(
                                  builder: (context, value, child) =>
                                      ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: value.courseItem.length,
                                    itemBuilder: (context, index) {
                                      var weekId =
                                          value.courseItem[index]['_id'];
                                      var daysLength = value
                                          .courseItem[index]['days'].length;
                                      var count = 0;
                                      var bool = false;
                                      _patientProgress.forEach((e) {
                                        if (e['weekId'] == weekId) {
                                          count += 1;
                                        }
                                      });
                                      if (count == daysLength) bool = true;
                                      return CourseRoadmapItemWidget(
                                          value.courseItem[index]['_id'],
                                          value.courseItem[index]['title'],
                                          index,
                                          bool);
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
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
