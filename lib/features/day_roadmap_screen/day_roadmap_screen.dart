import 'package:haseeb_s_application/provider/course.dart';
import 'package:haseeb_s_application/provider/patients.dart';
import 'package:provider/provider.dart';

import '../../core/app_export.dart';
import '../day_roadmap_screen/widgets/course_roadmap1_item_widget.dart';
import '../day_roadmap_screen/widgets/course_roadmap2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DayRoadmapScreen extends StatefulWidget {
  static const routeName = '/daysRoadMap';

  @override
  State<DayRoadmapScreen> createState() => _DayRoadmapScreenState();
}

class _DayRoadmapScreenState extends State<DayRoadmapScreen> {
  // var dayCourse;
  var _weekIndex;
  var _isloading;
  @override
  void initState() {
    setState(() {
      _isloading = true;
    });
    super.initState();
  }

  var _patientProgress;

  @override
  void didChangeDependencies() {
    _weekIndex = ModalRoute.of(context)?.settings.arguments;
    Provider.of<Course>(context, listen: false).setDayCourseItem(_weekIndex);
    _patientProgress =
        Provider.of<Patients>(context, listen: false).PatientProgress;
    print('$_weekIndex printing weekindex');
    setState(() {
      _isloading = false;
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: ColorConstant.blue700,
          title: Text(
            "Daily Tasks",
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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SingleChildScrollView(
                    child: Container(
                      height: getVerticalSize(
                        1063.00,
                      ),
                      width: size.width,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              margin: EdgeInsets.only(
                                top: getVerticalSize(
                                  10.00,
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: getVerticalSize(
                                      199.00,
                                    ),
                                    width: getHorizontalSize(
                                      348.00,
                                    ),
                                    margin: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        22.00,
                                      ),
                                      top: getVerticalSize(
                                        30.00,
                                      ),
                                      right: getHorizontalSize(
                                        20.00,
                                      ),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                16.00,
                                              ),
                                              top: getVerticalSize(
                                                33.00,
                                              ),
                                              right: getHorizontalSize(
                                                16.00,
                                              ),
                                              bottom: getVerticalSize(
                                                33.00,
                                              ),
                                            ),
                                            child: GridView.builder(
                                              shrinkWrap: true,
                                              gridDelegate:
                                                  SliverGridDelegateWithFixedCrossAxisCount(
                                                mainAxisExtent: getVerticalSize(
                                                  26.00,
                                                ),
                                                crossAxisCount: 3,
                                                mainAxisSpacing:
                                                    getHorizontalSize(
                                                  13.00,
                                                ),
                                                crossAxisSpacing:
                                                    getHorizontalSize(
                                                  13.00,
                                                ),
                                              ),
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              itemCount: 6,
                                              itemBuilder: (context, index) {
                                                return CourseRoadmap1ItemWidget();
                                              },
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: ColorConstant.blue700,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  7.00,
                                                ),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                      14.00,
                                                    ),
                                                    top: getVerticalSize(
                                                      20.00,
                                                    ),
                                                    right: getHorizontalSize(
                                                      14.00,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "Course Description",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color:
                                                          ColorConstant.blue700,
                                                      fontSize: getFontSize(
                                                        22,
                                                      ),
                                                      fontFamily: 'DM Sans',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                      16.00,
                                                    ),
                                                    top: getVerticalSize(
                                                      7.00,
                                                    ),
                                                    right: getHorizontalSize(
                                                      16.00,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "Bi-Labial Sounds",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      fontSize: getFontSize(
                                                        18,
                                                      ),
                                                      fontFamily: 'DM Sans',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: getHorizontalSize(
                                                    302.00,
                                                  ),
                                                  margin: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                      15.00,
                                                    ),
                                                    top: getVerticalSize(
                                                      16.00,
                                                    ),
                                                    right: getHorizontalSize(
                                                      15.00,
                                                    ),
                                                    bottom: getVerticalSize(
                                                      41.00,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "This includes sounds/words when both lips join together and offer complete constriction for out coming air.",
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      fontSize: getFontSize(
                                                        16,
                                                      ),
                                                      fontFamily: 'DM Sans',
                                                      fontWeight:
                                                          FontWeight.w400,
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
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          // bottom: getVerticalSize(
                                          //   158.00,
                                          // ),
                                          ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Consumer<Course>(
                                            builder: (context, value, child) =>
                                                ListView.builder(
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              shrinkWrap: true,
                                              itemCount: value
                                                  .dayCourseItem['days'].length,
                                              itemBuilder: (context, index) {
                                                var bool = false;
                                                print(_patientProgress);
                                                final day =
                                                    value.dayCourseItem['days']
                                                        [index]['_id'];
                                                _patientProgress.forEach((e) {
                                                  print(day);
                                                  if (e['day']['_id'] == day) {
                                                    bool = true;
                                                  }
                                                });
                                                return CourseRoadmap2ItemWidget(
                                                    value.dayCourseItem['days']
                                                        [index]['_id'],
                                                    value.dayCourseItem['days']
                                                        [index]['title'],
                                                    value.dayCourseItem['days']
                                                        [index]['words'],
                                                    index,
                                                    bool);
                                              },
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
                        ],
                      ),
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
