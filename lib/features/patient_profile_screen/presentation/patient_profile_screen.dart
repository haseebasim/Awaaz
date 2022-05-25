import 'package:haseeb_s_application/features/patient_profile1_dialog/presentation/patient_profile1_dialog.dart';
import 'package:haseeb_s_application/provider/course.dart';
import 'package:provider/provider.dart';

import '../../../provider/patients.dart';
import 'widgets/patient_profile_week_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haseeb_s_application/core/app_export.dart';

class PatientProfileScreen extends StatefulWidget {
  static const routeName = '/profileScreen';

  @override
  State<PatientProfileScreen> createState() => _PatientProfileScreenState();
}

class _PatientProfileScreenState extends State<PatientProfileScreen> {
  var patientDetails;
  _showSimpleModalDialog(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(child: PatientProfile1Dialog());
        });
  }

  @override
  void didChangeDependencies() async {
    String routeParam = ModalRoute.of(context)?.settings.arguments as String;
    setState(() {
      patientDetails = Provider.of<Patients>(context, listen: false)
          .PatientList
          .firstWhere((element) => element.id == routeParam);
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print(patientDetails);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: ColorConstant.blue700,
          title: Text(
            "Patient Profile",
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
        body: SingleChildScrollView(
          child: Stack(alignment: AlignmentDirectional.center, children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(color: ColorConstant.blue700),
                  height: getVerticalSize(
                    150,
                  ),
                  width: size.width,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: getVerticalSize(32)),
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(60)),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              20,
                            ),
                            top: getVerticalSize(
                              94,
                            ),
                            right: getHorizontalSize(
                              20,
                            ),
                          ),
                          child: Text(
                            patientDetails.name,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: ColorConstant.indigo400,
                              fontSize: getFontSize(
                                18,
                              ),
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              20,
                            ),
                            top: getVerticalSize(
                              10.139984,
                            ),
                            right: getHorizontalSize(
                              20,
                            ),
                          ),
                          child: Text(
                            "${patientDetails.age} years old",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: ColorConstant.gray600,
                              fontSize: getFontSize(
                                18,
                              ),
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              20,
                            ),
                            top: getVerticalSize(
                              7.5999756,
                            ),
                            right: getHorizontalSize(
                              20,
                            ),
                          ),
                          child: Text(
                            "${patientDetails.disorderLevel} Articulation Disorder",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: ColorConstant.gray600,
                              fontSize: getFontSize(
                                18,
                              ),
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              20,
                            ),
                            top: getVerticalSize(
                              20,
                            ),
                            right: getHorizontalSize(
                              20,
                            ),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            height: getVerticalSize(
                              70,
                            ),
                            width: getHorizontalSize(
                              347,
                            ),
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                30,
                              ),
                              top: getVerticalSize(
                                11,
                              ),
                              right: getHorizontalSize(
                                30,
                              ),
                              bottom: getVerticalSize(
                                10,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.amber700,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  10,
                                ),
                              ),
                            ),
                            child: Text(
                              'Meeting Scheduled: Tuesday, 14:00PM, 16th December, 2021',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: ColorConstant.whiteA700,
                                fontSize: getFontSize(
                                  16,
                                ),
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            20,
                          ),
                          top: getVerticalSize(
                            20,
                          ),
                          right: getHorizontalSize(
                            20,
                          ),
                        ),
                        child: Text(
                          "Progress:",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.gray600,
                            fontSize: getFontSize(
                              20,
                            ),
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Consumer<Course>(
                        builder: (context, value, child) => Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              20,
                            ),
                            top: getVerticalSize(
                              15,
                            ),
                            right: getHorizontalSize(
                              20,
                            ),
                          ),
                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: value.courseItem.length,
                            itemBuilder: (context, index) {
                              return PatientProfileWeekWidget(
                                index: index,
                                id: value.courseItem[index]['_id'],
                                patientId: patientDetails.id,
                              );
                            },
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //     left: getHorizontalSize(
                      //       20,
                      //     ),
                      //     top: getVerticalSize(
                      //       20,
                      //     ),
                      //     right: getHorizontalSize(
                      //       20,
                      //     ),
                      //   ),
                      //   child: Text(
                      //     "Analytics",
                      //     overflow: TextOverflow.ellipsis,
                      //     textAlign: TextAlign.left,
                      //     style: TextStyle(
                      //       color: ColorConstant.gray601,
                      //       fontSize: getFontSize(
                      //         20,
                      //       ),
                      //       fontFamily: 'DM Sans',
                      //       fontWeight: FontWeight.w500,
                      //     ),
                      //   ),
                      // ),
                      // // Align(
                      // //   alignment: Alignment.center,
                      // //   child: Container(
                      // //     height: getVerticalSize(
                      // //       209,
                      // //     ),
                      // //     width: getHorizontalSize(
                      // //       347,
                      // //     ),
                      // //     margin: EdgeInsets.only(
                      // //       left: getHorizontalSize(
                      // //         20,
                      // //       ),
                      // //       top: getVerticalSize(
                      // //         15,
                      // //       ),
                      // //       right: getHorizontalSize(
                      // //         20,
                      // //       ),
                      // //     ),
                      // //     child: Card(
                      // //       clipBehavior: Clip.antiAlias,
                      // //       elevation: 0,
                      // //       margin: EdgeInsets.all(0),
                      // //       color: ColorConstant.whiteA700,
                      // //       shape: RoundedRectangleBorder(
                      // //         borderRadius: BorderRadius.circular(
                      // //           getHorizontalSize(
                      // //             10,
                      // //           ),
                      // //         ),
                      // //       ),
                      // //       child: Stack(
                      // //         alignment: Alignment.topLeft,
                      // //         children: [
                      // //           Align(
                      // //             alignment: Alignment.center,
                      // //             child: Padding(
                      // //               padding: EdgeInsets.only(
                      // //                 left: getHorizontalSize(
                      // //                   24,
                      // //                 ),
                      // //                 top: getVerticalSize(
                      // //                   15,
                      // //                 ),
                      // //                 right: getHorizontalSize(
                      // //                   24,
                      // //                 ),
                      // //                 bottom: getVerticalSize(
                      // //                   12,
                      // //                 ),
                      // //               ),
                      // //               child: Column(
                      // //                 mainAxisSize: MainAxisSize.min,
                      // //                 mainAxisAlignment:
                      // //                     MainAxisAlignment.start,
                      // //                 children: [
                      // //                   Align(
                      // //                     alignment: Alignment.centerLeft,
                      // //                     child: Padding(
                      // //                       padding: EdgeInsets.only(
                      // //                         left: getHorizontalSize(
                      // //                           42,
                      // //                         ),
                      // //                         right: getHorizontalSize(
                      // //                           42,
                      // //                         ),
                      // //                       ),
                      // //                       child: Text(
                      // //                         "y-axis   days",
                      // //                         overflow: TextOverflow.ellipsis,
                      // //                         textAlign: TextAlign.left,
                      // //                         style: TextStyle(
                      // //                           color: ColorConstant.gray601,
                      // //                           fontSize: getFontSize(
                      // //                             14,
                      // //                           ),
                      // //                           fontFamily: 'DM Sans',
                      // //                           fontWeight: FontWeight.w400,
                      // //                         ),
                      // //                       ),
                      // //                     ),
                      // //                   ),
                      // //                   Align(
                      // //                     alignment: Alignment.centerLeft,
                      // //                     child: Column(
                      // //                       mainAxisSize: MainAxisSize.min,
                      // //                       mainAxisAlignment:
                      // //                           MainAxisAlignment.start,
                      // //                       children: [
                      // //                         Align(
                      // //                           alignment: Alignment.centerLeft,
                      // //                           child: Row(
                      // //                             mainAxisAlignment:
                      // //                                 MainAxisAlignment
                      // //                                     .spaceBetween,
                      // //                             crossAxisAlignment:
                      // //                                 CrossAxisAlignment.center,
                      // //                             mainAxisSize:
                      // //                                 MainAxisSize.max,
                      // //                             children: [
                      // //                               Column(
                      // //                                 mainAxisSize:
                      // //                                     MainAxisSize.min,
                      // //                                 crossAxisAlignment:
                      // //                                     CrossAxisAlignment
                      // //                                         .start,
                      // //                                 mainAxisAlignment:
                      // //                                     MainAxisAlignment
                      // //                                         .start,
                      // //                                 children: [
                      // //                                   Text(
                      // //                                     "5",
                      // //                                     overflow: TextOverflow
                      // //                                         .ellipsis,
                      // //                                     textAlign:
                      // //                                         TextAlign.center,
                      // //                                     style: TextStyle(
                      // //                                       color: ColorConstant
                      // //                                           .gray400,
                      // //                                       fontSize:
                      // //                                           getFontSize(
                      // //                                         14,
                      // //                                       ),
                      // //                                       fontFamily:
                      // //                                           'DM Sans',
                      // //                                       fontWeight:
                      // //                                           FontWeight.w400,
                      // //                                     ),
                      // //                                   ),
                      // //                                   Padding(
                      // //                                     padding:
                      // //                                         EdgeInsets.only(
                      // //                                       top:
                      // //                                           getVerticalSize(
                      // //                                         14,
                      // //                                       ),
                      // //                                     ),
                      // //                                     child: Text(
                      // //                                       "4",
                      // //                                       overflow:
                      // //                                           TextOverflow
                      // //                                               .ellipsis,
                      // //                                       textAlign: TextAlign
                      // //                                           .center,
                      // //                                       style: TextStyle(
                      // //                                         color:
                      // //                                             ColorConstant
                      // //                                                 .gray400,
                      // //                                         fontSize:
                      // //                                             getFontSize(
                      // //                                           14,
                      // //                                         ),
                      // //                                         fontFamily:
                      // //                                             'DM Sans',
                      // //                                         fontWeight:
                      // //                                             FontWeight
                      // //                                                 .w400,
                      // //                                       ),
                      // //                                     ),
                      // //                                   ),
                      // //                                   Padding(
                      // //                                     padding:
                      // //                                         EdgeInsets.only(
                      // //                                       top:
                      // //                                           getVerticalSize(
                      // //                                         14,
                      // //                                       ),
                      // //                                     ),
                      // //                                     child: Text(
                      // //                                       "3",
                      // //                                       overflow:
                      // //                                           TextOverflow
                      // //                                               .ellipsis,
                      // //                                       textAlign: TextAlign
                      // //                                           .center,
                      // //                                       style: TextStyle(
                      // //                                         color:
                      // //                                             ColorConstant
                      // //                                                 .gray400,
                      // //                                         fontSize:
                      // //                                             getFontSize(
                      // //                                           14,
                      // //                                         ),
                      // //                                         fontFamily:
                      // //                                             'DM Sans',
                      // //                                         fontWeight:
                      // //                                             FontWeight
                      // //                                                 .w400,
                      // //                                       ),
                      // //                                     ),
                      // //                                   ),
                      // //                                   Padding(
                      // //                                     padding:
                      // //                                         EdgeInsets.only(
                      // //                                       top:
                      // //                                           getVerticalSize(
                      // //                                         14,
                      // //                                       ),
                      // //                                     ),
                      // //                                     child: Text(
                      // //                                       "2",
                      // //                                       overflow:
                      // //                                           TextOverflow
                      // //                                               .ellipsis,
                      // //                                       textAlign: TextAlign
                      // //                                           .center,
                      // //                                       style: TextStyle(
                      // //                                         color:
                      // //                                             ColorConstant
                      // //                                                 .gray400,
                      // //                                         fontSize:
                      // //                                             getFontSize(
                      // //                                           14,
                      // //                                         ),
                      // //                                         fontFamily:
                      // //                                             'DM Sans',
                      // //                                         fontWeight:
                      // //                                             FontWeight
                      // //                                                 .w400,
                      // //                                       ),
                      // //                                     ),
                      // //                                   ),
                      // //                                   Align(
                      // //                                     alignment:
                      // //                                         Alignment.center,
                      // //                                     child: Padding(
                      // //                                       padding:
                      // //                                           EdgeInsets.only(
                      // //                                         left:
                      // //                                             getHorizontalSize(
                      // //                                           2,
                      // //                                         ),
                      // //                                         top:
                      // //                                             getVerticalSize(
                      // //                                           14,
                      // //                                         ),
                      // //                                         right:
                      // //                                             getHorizontalSize(
                      // //                                           2,
                      // //                                         ),
                      // //                                       ),
                      // //                                       child: Text(
                      // //                                         "1",
                      // //                                         overflow:
                      // //                                             TextOverflow
                      // //                                                 .ellipsis,
                      // //                                         textAlign:
                      // //                                             TextAlign
                      // //                                                 .center,
                      // //                                         style: TextStyle(
                      // //                                           color:
                      // //                                               ColorConstant
                      // //                                                   .gray400,
                      // //                                           fontSize:
                      // //                                               getFontSize(
                      // //                                             14,
                      // //                                           ),
                      // //                                           fontFamily:
                      // //                                               'DM Sans',
                      // //                                           fontWeight:
                      // //                                               FontWeight
                      // //                                                   .w400,
                      // //                                         ),
                      // //                                       ),
                      // //                                     ),
                      // //                                   ),
                      // //                                 ],
                      // //                               ),
                      // //                               Container(
                      // //                                 height: getVerticalSize(
                      // //                                   139,
                      // //                                 ),
                      // //                                 width: getHorizontalSize(
                      // //                                   283,
                      // //                                 ),
                      // //                                 margin: EdgeInsets.only(
                      // //                                   top: getVerticalSize(
                      // //                                     5,
                      // //                                   ),
                      // //                                   bottom: getVerticalSize(
                      // //                                     2,
                      // //                                   ),
                      // //                                 ),
                      // //                                 child: Stack(
                      // //                                   alignment: Alignment
                      // //                                       .bottomLeft,
                      // //                                   children: [
                      // //                                     Align(
                      // //                                       alignment: Alignment
                      // //                                           .centerLeft,
                      // //                                       child: Container(
                      // //                                         height:
                      // //                                             getVerticalSize(
                      // //                                           139,
                      // //                                         ),
                      // //                                         width:
                      // //                                             getHorizontalSize(
                      // //                                           283,
                      // //                                         ),
                      // //                                         child: SvgPicture
                      // //                                             .asset(
                      // //                                           ImageConstant
                      // //                                               .imgVector49,
                      // //                                           fit:
                      // //                                               BoxFit.fill,
                      // //                                         ),
                      // //                                       ),
                      // //                                     ),
                      // //                                     Align(
                      // //                                       alignment: Alignment
                      // //                                           .bottomLeft,
                      // //                                       child: Container(
                      // //                                         height:
                      // //                                             getVerticalSize(
                      // //                                           118,
                      // //                                         ),
                      // //                                         width:
                      // //                                             getHorizontalSize(
                      // //                                           283,
                      // //                                         ),
                      // //                                         margin: EdgeInsets
                      // //                                             .only(
                      // //                                           top:
                      // //                                               getVerticalSize(
                      // //                                             10,
                      // //                                           ),
                      // //                                         ),
                      // //                                         child: Stack(
                      // //                                           alignment: Alignment
                      // //                                               .centerLeft,
                      // //                                           children: [
                      // //                                             Align(
                      // //                                               alignment:
                      // //                                                   Alignment
                      // //                                                       .topCenter,
                      // //                                               child:
                      // //                                                   Padding(
                      // //                                                 padding:
                      // //                                                     EdgeInsets
                      // //                                                         .only(
                      // //                                                   left:
                      // //                                                       getHorizontalSize(
                      // //                                                     2,
                      // //                                                   ),
                      // //                                                   bottom:
                      // //                                                       getVerticalSize(
                      // //                                                     10,
                      // //                                                   ),
                      // //                                                 ),
                      // //                                                 child:
                      // //                                                     Container(
                      // //                                                   height:
                      // //                                                       getVerticalSize(
                      // //                                                     59,
                      // //                                                   ),
                      // //                                                   width:
                      // //                                                       getHorizontalSize(
                      // //                                                     281,
                      // //                                                   ),
                      // //                                                   child: SvgPicture
                      // //                                                       .asset(
                      // //                                                     ImageConstant
                      // //                                                         .imgVector50,
                      // //                                                     fit: BoxFit
                      // //                                                         .fill,
                      // //                                                   ),
                      // //                                                 ),
                      // //                                               ),
                      // //                                             ),
                      // //                                             Align(
                      // //                                               alignment:
                      // //                                                   Alignment
                      // //                                                       .centerLeft,
                      // //                                               child:
                      // //                                                   Padding(
                      // //                                                 padding:
                      // //                                                     EdgeInsets
                      // //                                                         .only(
                      // //                                                   top:
                      // //                                                       getVerticalSize(
                      // //                                                     1,
                      // //                                                   ),
                      // //                                                 ),
                      // //                                                 child: Image
                      // //                                                     .asset(
                      // //                                                   ImageConstant
                      // //                                                       .imgVector51,
                      // //                                                   height:
                      // //                                                       getVerticalSize(
                      // //                                                     117,
                      // //                                                   ),
                      // //                                                   width:
                      // //                                                       getHorizontalSize(
                      // //                                                     283,
                      // //                                                   ),
                      // //                                                   fit: BoxFit
                      // //                                                       .fill,
                      // //                                                 ),
                      // //                                               ),
                      // //                                             ),
                      // //                                           ],
                      // //                                         ),
                      // //                                       ),
                      // //                                     ),
                      // //                                   ],
                      // //                                 ),
                      // //                               ),
                      // //                             ],
                      // //                           ),
                      // //                         ),
                      // //                         Align(
                      // //                           alignment: Alignment.centerLeft,
                      // //                           child: Padding(
                      // //                             padding: EdgeInsets.only(
                      // //                               left: getHorizontalSize(
                      // //                                 18,
                      // //                               ),
                      // //                               right: getHorizontalSize(
                      // //                                 18,
                      // //                               ),
                      // //                             ),
                      // //                             child: Row(
                      // //                               mainAxisAlignment:
                      // //                                   MainAxisAlignment.start,
                      // //                               crossAxisAlignment:
                      // //                                   CrossAxisAlignment
                      // //                                       .center,
                      // //                               mainAxisSize:
                      // //                                   MainAxisSize.max,
                      // //                               children: [
                      // //                                 Text(
                      // //                                   "10",
                      // //                                   overflow: TextOverflow
                      // //                                       .ellipsis,
                      // //                                   textAlign:
                      // //                                       TextAlign.center,
                      // //                                   style: TextStyle(
                      // //                                     color: ColorConstant
                      // //                                         .gray400,
                      // //                                     fontSize: getFontSize(
                      // //                                       14,
                      // //                                     ),
                      // //                                     fontFamily: 'DM Sans',
                      // //                                     fontWeight:
                      // //                                         FontWeight.w400,
                      // //                                   ),
                      // //                                 ),
                      // //                                 Padding(
                      // //                                   padding:
                      // //                                       EdgeInsets.only(
                      // //                                     left:
                      // //                                         getHorizontalSize(
                      // //                                       13,
                      // //                                     ),
                      // //                                   ),
                      // //                                   child: Text(
                      // //                                     "20",
                      // //                                     overflow: TextOverflow
                      // //                                         .ellipsis,
                      // //                                     textAlign:
                      // //                                         TextAlign.center,
                      // //                                     style: TextStyle(
                      // //                                       color: ColorConstant
                      // //                                           .gray400,
                      // //                                       fontSize:
                      // //                                           getFontSize(
                      // //                                         14,
                      // //                                       ),
                      // //                                       fontFamily:
                      // //                                           'DM Sans',
                      // //                                       fontWeight:
                      // //                                           FontWeight.w400,
                      // //                                     ),
                      // //                                   ),
                      // //                                 ),
                      // //                                 Padding(
                      // //                                   padding:
                      // //                                       EdgeInsets.only(
                      // //                                     left:
                      // //                                         getHorizontalSize(
                      // //                                       11,
                      // //                                     ),
                      // //                                   ),
                      // //                                   child: Text(
                      // //                                     "30",
                      // //                                     overflow: TextOverflow
                      // //                                         .ellipsis,
                      // //                                     textAlign:
                      // //                                         TextAlign.center,
                      // //                                     style: TextStyle(
                      // //                                       color: ColorConstant
                      // //                                           .gray400,
                      // //                                       fontSize:
                      // //                                           getFontSize(
                      // //                                         14,
                      // //                                       ),
                      // //                                       fontFamily:
                      // //                                           'DM Sans',
                      // //                                       fontWeight:
                      // //                                           FontWeight.w400,
                      // //                                     ),
                      // //                                   ),
                      // //                                 ),
                      // //                                 Padding(
                      // //                                   padding:
                      // //                                       EdgeInsets.only(
                      // //                                     left:
                      // //                                         getHorizontalSize(
                      // //                                       11,
                      // //                                     ),
                      // //                                   ),
                      // //                                   child: Text(
                      // //                                     "40",
                      // //                                     overflow: TextOverflow
                      // //                                         .ellipsis,
                      // //                                     textAlign:
                      // //                                         TextAlign.center,
                      // //                                     style: TextStyle(
                      // //                                       color: ColorConstant
                      // //                                           .gray400,
                      // //                                       fontSize:
                      // //                                           getFontSize(
                      // //                                         14,
                      // //                                       ),
                      // //                                       fontFamily:
                      // //                                           'DM Sans',
                      // //                                       fontWeight:
                      // //                                           FontWeight.w400,
                      // //                                     ),
                      // //                                   ),
                      // //                                 ),
                      // //                                 Padding(
                      // //                                   padding:
                      // //                                       EdgeInsets.only(
                      // //                                     left:
                      // //                                         getHorizontalSize(
                      // //                                       10,
                      // //                                     ),
                      // //                                   ),
                      // //                                   child: Text(
                      // //                                     "50",
                      // //                                     overflow: TextOverflow
                      // //                                         .ellipsis,
                      // //                                     textAlign:
                      // //                                         TextAlign.center,
                      // //                                     style: TextStyle(
                      // //                                       color: ColorConstant
                      // //                                           .gray400,
                      // //                                       fontSize:
                      // //                                           getFontSize(
                      // //                                         14,
                      // //                                       ),
                      // //                                       fontFamily:
                      // //                                           'DM Sans',
                      // //                                       fontWeight:
                      // //                                           FontWeight.w400,
                      // //                                     ),
                      // //                                   ),
                      // //                                 ),
                      // //                                 Padding(
                      // //                                   padding:
                      // //                                       EdgeInsets.only(
                      // //                                     left:
                      // //                                         getHorizontalSize(
                      // //                                       10,
                      // //                                     ),
                      // //                                   ),
                      // //                                   child: Text(
                      // //                                     "60",
                      // //                                     overflow: TextOverflow
                      // //                                         .ellipsis,
                      // //                                     textAlign:
                      // //                                         TextAlign.center,
                      // //                                     style: TextStyle(
                      // //                                       color: ColorConstant
                      // //                                           .gray400,
                      // //                                       fontSize:
                      // //                                           getFontSize(
                      // //                                         14,
                      // //                                       ),
                      // //                                       fontFamily:
                      // //                                           'DM Sans',
                      // //                                       fontWeight:
                      // //                                           FontWeight.w400,
                      // //                                     ),
                      // //                                   ),
                      // //                                 ),
                      // //                                 Padding(
                      // //                                   padding:
                      // //                                       EdgeInsets.only(
                      // //                                     left:
                      // //                                         getHorizontalSize(
                      // //                                       11,
                      // //                                     ),
                      // //                                   ),
                      // //                                   child: Text(
                      // //                                     "70",
                      // //                                     overflow: TextOverflow
                      // //                                         .ellipsis,
                      // //                                     textAlign:
                      // //                                         TextAlign.center,
                      // //                                     style: TextStyle(
                      // //                                       color: ColorConstant
                      // //                                           .gray400,
                      // //                                       fontSize:
                      // //                                           getFontSize(
                      // //                                         14,
                      // //                                       ),
                      // //                                       fontFamily:
                      // //                                           'DM Sans',
                      // //                                       fontWeight:
                      // //                                           FontWeight.w400,
                      // //                                     ),
                      // //                                   ),
                      // //                                 ),
                      // //                                 Padding(
                      // //                                   padding:
                      // //                                       EdgeInsets.only(
                      // //                                     left:
                      // //                                         getHorizontalSize(
                      // //                                       11,
                      // //                                     ),
                      // //                                   ),
                      // //                                   child: Text(
                      // //                                     "80",
                      // //                                     overflow: TextOverflow
                      // //                                         .ellipsis,
                      // //                                     textAlign:
                      // //                                         TextAlign.center,
                      // //                                     style: TextStyle(
                      // //                                       color: ColorConstant
                      // //                                           .gray400,
                      // //                                       fontSize:
                      // //                                           getFontSize(
                      // //                                         14,
                      // //                                       ),
                      // //                                       fontFamily:
                      // //                                           'DM Sans',
                      // //                                       fontWeight:
                      // //                                           FontWeight.w400,
                      // //                                     ),
                      // //                                   ),
                      // //                                 ),
                      // //                                 Padding(
                      // //                                   padding:
                      // //                                       EdgeInsets.only(
                      // //                                     left:
                      // //                                         getHorizontalSize(
                      // //                                       10,
                      // //                                     ),
                      // //                                   ),
                      // //                                   child: Text(
                      // //                                     "90",
                      // //                                     overflow: TextOverflow
                      // //                                         .ellipsis,
                      // //                                     textAlign:
                      // //                                         TextAlign.center,
                      // //                                     style: TextStyle(
                      // //                                       color: ColorConstant
                      // //                                           .gray400,
                      // //                                       fontSize:
                      // //                                           getFontSize(
                      // //                                         14,
                      // //                                       ),
                      // //                                       fontFamily:
                      // //                                           'DM Sans',
                      // //                                       fontWeight:
                      // //                                           FontWeight.w400,
                      // //                                     ),
                      // //                                   ),
                      // //                                 ),
                      // //                               ],
                      // //                             ),
                      // //                           ),
                      // //                         ),
                      // //                       ],
                      // //                     ),
                      // //                   ),
                      // //                 ],
                      // //               ),
                      // //             ),
                      // //           ),
                      // //           Align(
                      // //             alignment: Alignment.topLeft,
                      // //             child: Padding(
                      // //               padding: EdgeInsets.only(
                      // //                 left: getHorizontalSize(
                      // //                   66,
                      // //                 ),
                      // //                 top: getVerticalSize(
                      // //                   32,
                      // //                 ),
                      // //                 right: getHorizontalSize(
                      // //                   66,
                      // //                 ),
                      // //                 bottom: getVerticalSize(
                      // //                   32,
                      // //                 ),
                      // //               ),
                      // //               child: Text(
                      // //                 "x-axis   correctness",
                      // //                 overflow: TextOverflow.ellipsis,
                      // //                 textAlign: TextAlign.left,
                      // //                 style: TextStyle(
                      // //                   color: ColorConstant.gray601,
                      // //                   fontSize: getFontSize(
                      // //                     14,
                      // //                   ),
                      // //                   fontFamily: 'DM Sans',
                      // //                   fontWeight: FontWeight.w400,
                      // //                 ),
                      // //               ),
                      // //             ),
                      // //           ),
                      // //         ],
                      // //       ),
                      // //     ),
                      // //   ),
                      // // ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: getVerticalSize(
                            57,
                          ),
                          width: getHorizontalSize(
                            347,
                          ),
                          margin: EdgeInsets.only(
                            left: getHorizontalSize(
                              20,
                            ),
                            top: getVerticalSize(
                              30,
                            ),
                            right: getHorizontalSize(
                              20,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              _showSimpleModalDialog(context);
                            },
                            style: TextButton.styleFrom(
                                backgroundColor: ColorConstant.amber700,
                                fixedSize: Size(getHorizontalSize(305), 58),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                )),
                            child: Text(
                              "New Appointment",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: ColorConstant.whiteA700,
                                fontSize: getFontSize(
                                  18,
                                ),
                                fontFamily: 'DM Sans',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: getVerticalSize(50),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  getSize(
                    85.0,
                  ),
                ),
                child: Image.network(
                  patientDetails.profileImage,
                  height: getSize(
                    170,
                  ),
                  width: getSize(
                    170,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
