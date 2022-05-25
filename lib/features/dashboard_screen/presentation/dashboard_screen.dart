import 'dart:async';

import 'package:haseeb_s_application/core/common/bottom_navigation_bar.dart';
import 'package:haseeb_s_application/core/firebase.dart';
import 'package:haseeb_s_application/features/dashboard_screen/presentation/widgets/patient_progress.dart';
import 'package:haseeb_s_application/features/login_screen/presentation/login_screen.dart';
import 'package:haseeb_s_application/provider/auth.dart';
import 'package:haseeb_s_application/provider/course.dart';
import 'package:haseeb_s_application/provider/patients.dart';
import 'package:provider/provider.dart';

import 'widgets/active_patient_card.dart';
import 'widgets/appointments_list_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haseeb_s_application/core/app_export.dart';

class DashboardScreen extends StatefulWidget {
  static const routeName = '/dashboard';

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  var _userName;
  var _userType;
  var _courseItems;
  var _isloading;
  @override
  void initState() {
    setState(() {
      _isloading = true;
    });
    FirebaseInit.prefs.then((value) => setState(() {
          _userName = value.getString('name');
          _userType = value.getString('userType');
        }));
    Provider.of<Patients>(context, listen: false)
        .fetchAndSetProducts()
        .then((value) {});

    Provider.of<Patients>(context, listen: false)
        .fetchPatientProgress()
        .then((value) {});
    Provider.of<Course>(context, listen: false)
        .fetchAndSetCourse()
        .then((value) {
      setState(() {
        _courseItems = Provider.of<Course>(context, listen: false).courseItem;

        _isloading = false;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBarWidget(),
        appBar: AppBar(
          backgroundColor: ColorConstant.whiteA700,
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(6),
              right: getHorizontalSize(
                6,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                // Padding(
                //   padding: EdgeInsets.only(
                //       top: getVerticalSize(
                //         2,
                //       ),
                //       bottom: getVerticalSize(
                //         2,
                //       ),
                //       left: getHorizontalSize(2)),
                //   child: Container(
                //     height: getSize(
                //       24,
                //     ),
                //     width: getSize(
                //       24,
                //     ),
                //     child: SvgPicture.asset(
                //       ImageConstant.imgGroup36407,
                //       fit: BoxFit.fill,
                //     ),
                //   ),
                // ),
                PopupMenuButton(
                  itemBuilder: (context) => [
                    // PopupMenuItem(
                    //     child: Row(
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   children: [
                    //     Container(
                    //       width: 24,
                    //       height: 24,
                    //       margin: EdgeInsets.only(right: 8),
                    //       child: CircleAvatar(
                    //         backgroundImage:
                    //             AssetImage(ImageConstant.imgImage7),
                    //       ),
                    //     ),
                    //     Text('Hina Jaffery')
                    //   ],
                    // )),
                    // PopupMenuItem(
                    //     child: Row(
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   children: [
                    //     Container(
                    //       margin: EdgeInsets.only(right: 8),
                    //       child: Icon(
                    //         Icons.settings,
                    //         color: ColorConstant.gray400,
                    //       ),
                    //     ),
                    //     Text(
                    //       'Settings',
                    //       style: TextStyle(
                    //         color: ColorConstant.gray400,
                    //       ),
                    //     )
                    //   ],
                    // )),
                    PopupMenuItem(
                        onTap: () async {
                          await Provider.of<Auth>(context, listen: false)
                              .signout();
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                              ModalRoute.withName(LoginScreen.routeName));
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 8),
                              child: Icon(
                                Icons.logout,
                                color: ColorConstant.gray400,
                              ),
                            ),
                            Text(
                              'Logout',
                              style: TextStyle(
                                color: ColorConstant.gray400,
                              ),
                            )
                          ],
                        ))
                  ],
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: getVerticalSize(
                          2,
                        ),
                        bottom: getVerticalSize(
                          2,
                        ),
                        left: getHorizontalSize(2)),
                    child: InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          // color: ColorConstant.gray400,
                          // borderRadius: BorderRadius.circular(100)
                        ),
                        child: Icon(Icons.menu,color: ColorConstant.blue700,size: 26,),
                        height: getSize(
                          28,
                        ),
                        width: getSize(
                          28,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: ColorConstant.whiteA700,
        body: _isloading
            ? Center(child: CircularProgressIndicator())
            : Container(
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
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              14,
                            ),
                            bottom: getVerticalSize(
                              25,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                20,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: getVerticalSize(
                                          10,
                                        ),
                                        right: getHorizontalSize(
                                          10,
                                        ),
                                      ),
                                      child: Consumer<Auth>(
                                        builder: (context, value, child) =>
                                            RichText(
                                          text: TextSpan(
                                            children: <InlineSpan>[
                                              TextSpan(
                                                text: 'Good Morning ',
                                                style: TextStyle(
                                                  color: ColorConstant.gray600,
                                                  fontSize: getFontSize(
                                                    26,
                                                  ),
                                                  fontFamily: 'DM Sans',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              TextSpan(
                                                text: _userName,
                                                style: TextStyle(
                                                  color: ColorConstant.blue700,
                                                  fontSize: getFontSize(
                                                    26,
                                                  ),
                                                  fontFamily: 'DM Sans',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              )
                                            ],
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                // Container(
                                //   height: getVerticalSize(
                                //     209,
                                //   ),
                                //   width: getHorizontalSize(
                                //     350,
                                //   ),
                                //   margin: EdgeInsets.only(
                                //     top: getVerticalSize(
                                //       19,
                                //     ),
                                //     right: getHorizontalSize(
                                //       10,
                                //     ),
                                //   ),
                                //   child: Stack(
                                //     alignment: Alignment.centerLeft,
                                //     children: [
                                //       Align(
                                //         alignment: Alignment.bottomLeft,
                                //         child: Padding(
                                //           padding: EdgeInsets.only(
                                //             left: getHorizontalSize(
                                //               15,
                                //             ),
                                //             top: getVerticalSize(
                                //               18,
                                //             ),
                                //             right: getHorizontalSize(
                                //               15,
                                //             ),
                                //             bottom: getVerticalSize(
                                //               18,
                                //             ),
                                //           ),
                                //           child: Text(
                                //             "Active Patients",
                                //             overflow: TextOverflow.ellipsis,
                                //             textAlign: TextAlign.center,
                                //             style: TextStyle(
                                //               color: ColorConstant.gray600,
                                //               fontSize: getFontSize(
                                //                 24,
                                //               ),
                                //               fontFamily: 'DM Sans',
                                //               fontWeight: FontWeight.w500,
                                //             ),
                                //           ),
                                //         ),
                                //       ),
                                //       Align(
                                //         alignment: Alignment.centerLeft,
                                //         child: Container(
                                //           height: getVerticalSize(
                                //             209,
                                //           ),
                                //           width: getHorizontalSize(
                                //             350,
                                //           ),
                                //           child: Stack(
                                //             alignment: Alignment.topLeft,
                                //             children: [
                                //               Align(
                                //                 alignment: Alignment.bottomLeft,
                                //                 child: Container(
                                //                   height: getVerticalSize(
                                //                     166,
                                //                   ),
                                //                   width: getHorizontalSize(
                                //                     350,
                                //                   ),
                                //                   margin: EdgeInsets.only(
                                //                     top: getVerticalSize(
                                //                       10,
                                //                     ),
                                //                   ),
                                //                   child: Stack(
                                //                     alignment:
                                //                         Alignment.topRight,
                                //                     children: [
                                //                       Align(
                                //                         alignment: Alignment
                                //                             .bottomLeft,
                                //                         child: Container(
                                //                           margin:
                                //                               EdgeInsets.only(
                                //                             top:
                                //                                 getVerticalSize(
                                //                               10,
                                //                             ),
                                //                           ),
                                //                           decoration:
                                //                               BoxDecoration(
                                //                             color: ColorConstant
                                //                                 .blue700,
                                //                             borderRadius:
                                //                                 BorderRadius
                                //                                     .circular(
                                //                               getHorizontalSize(
                                //                                 10,
                                //                               ),
                                //                             ),
                                //                             boxShadow: [
                                //                               BoxShadow(
                                //                                 color: ColorConstant
                                //                                     .gray40040,
                                //                                 spreadRadius:
                                //                                     getHorizontalSize(
                                //                                   2,
                                //                                 ),
                                //                                 blurRadius:
                                //                                     getHorizontalSize(
                                //                                   2,
                                //                                 ),
                                //                                 offset: Offset(
                                //                                   0,
                                //                                   2,
                                //                                 ),
                                //                               ),
                                //                             ],
                                //                           ),
                                //                           child: Column(
                                //                             mainAxisSize:
                                //                                 MainAxisSize
                                //                                     .min,
                                //                             mainAxisAlignment:
                                //                                 MainAxisAlignment
                                //                                     .end,
                                //                             children: [
                                //                               Align(
                                //                                 alignment: Alignment
                                //                                     .centerLeft,
                                //                                 child: Padding(
                                //                                   padding:
                                //                                       EdgeInsets
                                //                                           .only(
                                //                                     top:
                                //                                         getVerticalSize(
                                //                                       23,
                                //                                     ),
                                //                                   ),
                                //                                   child: Column(
                                //                                     mainAxisSize:
                                //                                         MainAxisSize
                                //                                             .min,
                                //                                     mainAxisAlignment:
                                //                                         MainAxisAlignment
                                //                                             .start,
                                //                                     children: [
                                //                                       Align(
                                //                                         alignment:
                                //                                             Alignment.centerLeft,
                                //                                         child:
                                //                                             Row(
                                //                                           mainAxisAlignment:
                                //                                               MainAxisAlignment.start,
                                //                                           crossAxisAlignment:
                                //                                               CrossAxisAlignment.start,
                                //                                           mainAxisSize:
                                //                                               MainAxisSize.max,
                                //                                           children: [
                                //                                             Padding(
                                //                                               padding: EdgeInsets.only(
                                //                                                 left: getHorizontalSize(
                                //                                                   15,
                                //                                                 ),
                                //                                                 top: getVerticalSize(
                                //                                                   3,
                                //                                                 ),
                                //                                                 bottom: getVerticalSize(
                                //                                                   2,
                                //                                                 ),
                                //                                               ),
                                //                                               child: Container(
                                //                                                 height: getSize(
                                //                                                   16,
                                //                                                 ),
                                //                                                 width: getSize(
                                //                                                   16,
                                //                                                 ),
                                //                                                 child: SvgPicture.asset(
                                //                                                   ImageConstant.imgGroup1,
                                //                                                   fit: BoxFit.fill,
                                //                                                 ),
                                //                                               ),
                                //                                             ),
                                //                                             Padding(
                                //                                               padding: EdgeInsets.only(
                                //                                                 left: getHorizontalSize(
                                //                                                   23,
                                //                                                 ),
                                //                                                 right: getHorizontalSize(
                                //                                                   143,
                                //                                                 ),
                                //                                               ),
                                //                                               child: Text(
                                //                                                 "Monday, 6 July 2022",
                                //                                                 overflow: TextOverflow.ellipsis,
                                //                                                 textAlign: TextAlign.left,
                                //                                                 style: TextStyle(
                                //                                                   color: ColorConstant.whiteA700,
                                //                                                   fontSize: getFontSize(
                                //                                                     16,
                                //                                                   ),
                                //                                                   fontFamily: 'DM Sans',
                                //                                                   fontWeight: FontWeight.w400,
                                //                                                 ),
                                //                                               ),
                                //                                             ),
                                //                                           ],
                                //                                         ),
                                //                                       ),
                                //                                       Align(
                                //                                         alignment:
                                //                                             Alignment.centerLeft,
                                //                                         child:
                                //                                             Padding(
                                //                                           padding:
                                //                                               EdgeInsets.only(
                                //                                             left:
                                //                                                 getHorizontalSize(
                                //                                               54,
                                //                                             ),
                                //                                             top:
                                //                                                 getVerticalSize(
                                //                                               3,
                                //                                             ),
                                //                                             right:
                                //                                                 getHorizontalSize(
                                //                                               54,
                                //                                             ),
                                //                                           ),
                                //                                           child:
                                //                                               Text(
                                //                                             "8:00 AM",
                                //                                             overflow:
                                //                                                 TextOverflow.ellipsis,
                                //                                             textAlign:
                                //                                                 TextAlign.left,
                                //                                             style:
                                //                                                 TextStyle(
                                //                                               color: ColorConstant.whiteA700,
                                //                                               fontSize: getFontSize(
                                //                                                 16,
                                //                                               ),
                                //                                               fontFamily: 'DM Sans',
                                //                                               fontWeight: FontWeight.w400,
                                //                                             ),
                                //                                           ),
                                //                                         ),
                                //                                       ),
                                //                                     ],
                                //                                   ),
                                //                                 ),
                                //                               ),
                                //                               Align(
                                //                                 alignment: Alignment
                                //                                     .centerLeft,
                                //                                 child:
                                //                                     Container(
                                //                                   width:
                                //                                       getHorizontalSize(
                                //                                     238,
                                //                                   ),
                                //                                   margin:
                                //                                       EdgeInsets
                                //                                           .only(
                                //                                     left:
                                //                                         getHorizontalSize(
                                //                                       15,
                                //                                     ),
                                //                                     top:
                                //                                         getVerticalSize(
                                //                                       15,
                                //                                     ),
                                //                                     right:
                                //                                         getHorizontalSize(
                                //                                       15,
                                //                                     ),
                                //                                     bottom:
                                //                                         getVerticalSize(
                                //                                       9,
                                //                                     ),
                                //                                   ),
                                //                                   child:
                                //                                       RichText(
                                //                                     text:
                                //                                         TextSpan(
                                //                                       children: <
                                //                                           InlineSpan>[
                                //                                         TextSpan(
                                //                                           text:
                                //                                               'You have',
                                //                                           style:
                                //                                               TextStyle(
                                //                                             color:
                                //                                                 ColorConstant.whiteA700,
                                //                                             fontSize:
                                //                                                 getFontSize(
                                //                                               16,
                                //                                             ),
                                //                                             fontFamily:
                                //                                                 'DM Sans',
                                //                                             fontWeight:
                                //                                                 FontWeight.w400,
                                //                                           ),
                                //                                         ),
                                //                                         TextSpan(
                                //                                           text:
                                //                                               '10 meetings',
                                //                                           style:
                                //                                               TextStyle(
                                //                                             color:
                                //                                                 ColorConstant.amber300,
                                //                                             fontSize:
                                //                                                 getFontSize(
                                //                                               16,
                                //                                             ),
                                //                                             fontFamily:
                                //                                                 'DM Sans',
                                //                                             fontWeight:
                                //                                                 FontWeight.w400,
                                //                                           ),
                                //                                         ),
                                //                                         TextSpan(
                                //                                           text:
                                //                                               'today!',
                                //                                           style:
                                //                                               TextStyle(
                                //                                             color:
                                //                                                 ColorConstant.whiteA700,
                                //                                             fontSize:
                                //                                                 getFontSize(
                                //                                               16,
                                //                                             ),
                                //                                             fontFamily:
                                //                                                 'DM Sans',
                                //                                             fontWeight:
                                //                                                 FontWeight.w400,
                                //                                           ),
                                //                                         )
                                //                                       ],
                                //                                     ),
                                //                                     textAlign:
                                //                                         TextAlign
                                //                                             .left,
                                //                                   ),
                                //                                 ),
                                //                               ),
                                //                             ],
                                //                           ),
                                //                         ),
                                //                       ),
                                //                       Align(
                                //                         alignment:
                                //                             Alignment.topRight,
                                //                         child: Padding(
                                //                           padding:
                                //                               EdgeInsets.only(
                                //                             left:
                                //                                 getHorizontalSize(
                                //                               10,
                                //                             ),
                                //                             bottom:
                                //                                 getVerticalSize(
                                //                               10,
                                //                             ),
                                //                           ),
                                //                           child: Image.asset(
                                //                             ImageConstant
                                //                                 .imgDesignd2220791,
                                //                             height:
                                //                                 getVerticalSize(
                                //                               145,
                                //                             ),
                                //                             width:
                                //                                 getHorizontalSize(
                                //                               115,
                                //                             ),
                                //                             fit: BoxFit.fill,
                                //                           ),
                                //                         ),
                                //                       ),
                                //                     ],
                                //                   ),
                                //                 ),
                                //               ),
                                //               Align(
                                //                 alignment: Alignment.topLeft,
                                //                 child: Container(
                                //                   width: getHorizontalSize(
                                //                     225,
                                //                   ),
                                //                   margin: EdgeInsets.only(
                                //                     right: getHorizontalSize(
                                //                       10,
                                //                     ),
                                //                     bottom: getVerticalSize(
                                //                       10,
                                //                     ),
                                //                   ),
                                //                   child: Text(
                                //                     "Let’s check\nyour schedule today!",
                                //                     maxLines: null,
                                //                     textAlign: TextAlign.left,
                                //                     style: TextStyle(
                                //                       color:
                                //                           ColorConstant.gray600,
                                //                       fontSize: getFontSize(
                                //                         22,
                                //                       ),
                                //                       fontFamily: 'DM Sans',
                                //                       fontWeight:
                                //                           FontWeight.w700,
                                //                     ),
                                //                   ),
                                //                 ),
                                //               ),
                                //             ],
                                //           ),
                                //         ),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: getVerticalSize(
                                      17,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          right: getHorizontalSize(
                                            10,
                                          ),
                                        ),
                                        child: Text(
                                          _userType == 'patient'
                                              ? "Progress"
                                              : "Active Patients",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: ColorConstant.gray600,
                                            fontSize: getFontSize(
                                              22,
                                            ),
                                            fontFamily: 'DM Sans',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      Consumer<Patients>(
                                        builder: (context, value, child) =>
                                            Container(
                                          height: getVerticalSize(
                                            267,
                                          ),
                                          width: getHorizontalSize(
                                            370,
                                          ),
                                          child: ListView.builder(
                                            padding: EdgeInsets.only(
                                              top: getVerticalSize(
                                                17,
                                              ),
                                            ),
                                            scrollDirection: Axis.horizontal,
                                            physics: BouncingScrollPhysics(),
                                            itemCount: _userType == 'patient'
                                                ? _courseItems.length
                                                : value.PatientList.length,
                                            itemBuilder: (context, index) {
                                              if (_userType == 'patient') {
                                                var weekId =
                                                    _courseItems[index]['_id'];
                                                var weekLength =
                                                    _courseItems.length;
                                                var count = 0;
                                                value.PatientProgress.forEach(
                                                    (e) {
                                                  if (e['weekId'] == weekId) {
                                                    count += 1;
                                                  }
                                                });
                                                var progress;
                                                if (count != 0) {
                                                  progress =
                                                      (count / weekLength) *
                                                          100;
                                                } else {
                                                  progress = count;
                                                }

                                                return PatientProgress(
                                                  index: index,
                                                  progress: progress,
                                                );
                                              } else {
                                                return ActivePatientCard(
                                                  patientDetails:
                                                      value.PatientList[index],
                                                );
                                              }
                                            },
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        margin: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            1,
                                          ),
                                          top: getVerticalSize(
                                            17,
                                          ),
                                          right: getHorizontalSize(
                                            22,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.gray200,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              10,
                                            ),
                                          ),
                                          border: Border.all(
                                            color: ColorConstant.bluegray100,
                                            width: getHorizontalSize(
                                              1,
                                            ),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  17,
                                                ),
                                                top: getVerticalSize(
                                                  22,
                                                ),
                                                right: getHorizontalSize(
                                                  17,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    "Today’s Appointments",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color:
                                                          ColorConstant.gray600,
                                                      fontSize: getFontSize(
                                                        20,
                                                      ),
                                                      fontFamily: 'DM Sans',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: getVerticalSize(
                                                        7,
                                                      ),
                                                      bottom: getVerticalSize(
                                                        1,
                                                      ),
                                                    ),
                                                    child: Text(
                                                      "See all",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .gray600,
                                                        fontSize: getFontSize(
                                                          14,
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
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  17,
                                                ),
                                                top: getVerticalSize(
                                                  12,
                                                ),
                                                right: getHorizontalSize(
                                                  17,
                                                ),
                                                bottom: getVerticalSize(
                                                  21,
                                                ),
                                              ),
                                              child: ListView.builder(
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                itemCount: 8,
                                                itemBuilder: (context, index) {
                                                  return AppointmentsListCard();
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
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
