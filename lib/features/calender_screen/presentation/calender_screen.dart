import './widgets/calender_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haseeb_s_application/core/app_export.dart';

class CalenderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: ColorConstant.whiteA700,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        bottom: getVerticalSize(
                          20,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: getVerticalSize(
                                214,
                              ),
                              width: size.width,
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        bottom: getVerticalSize(
                                          10,
                                        ),
                                      ),
                                      child: Container(
                                        height: getVerticalSize(
                                          141,
                                        ),
                                        width: getHorizontalSize(
                                          390,
                                        ),
                                        child: SvgPicture.asset(
                                          ImageConstant.imgVector13,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          16,
                                        ),
                                        top: getVerticalSize(
                                          28,
                                        ),
                                        right: getHorizontalSize(
                                          16,
                                        ),
                                        bottom: getVerticalSize(
                                          28,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: size.width,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: getVerticalSize(
                                                      10,
                                                    ),
                                                    bottom: getVerticalSize(
                                                      10,
                                                    ),
                                                  ),
                                                  child: Container(
                                                    height: getVerticalSize(
                                                      9,
                                                    ),
                                                    width: getHorizontalSize(
                                                      7,
                                                    ),
                                                    child: SvgPicture.asset(
                                                      ImageConstant
                                                          .imgVector123,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "Appointment Schedule",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.whiteA700,
                                                    fontSize: getFontSize(
                                                      22,
                                                    ),
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    bottom: getVerticalSize(
                                                      1,
                                                    ),
                                                  ),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      getSize(
                                                        14.0,
                                                      ),
                                                    ),
                                                    child: Image.asset(
                                                      ImageConstant.imgImage72,
                                                      height: getSize(
                                                        28,
                                                      ),
                                                      width: getSize(
                                                        28,
                                                      ),
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: getVerticalSize(
                                                35,
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                      81,
                                                    ),
                                                    top: getVerticalSize(
                                                      4.5,
                                                    ),
                                                    bottom: getVerticalSize(
                                                      4,
                                                    ),
                                                  ),
                                                  child: Container(
                                                    height: getVerticalSize(
                                                      12.5,
                                                    ),
                                                    width: getHorizontalSize(
                                                      7.5,
                                                    ),
                                                    child: SvgPicture.asset(
                                                      ImageConstant.imgVector14,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                      25.5,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "December 2021",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
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
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                      27,
                                                    ),
                                                    top: getVerticalSize(
                                                      3.5,
                                                    ),
                                                    right: getHorizontalSize(
                                                      86.5,
                                                    ),
                                                    bottom: getVerticalSize(
                                                      5,
                                                    ),
                                                  ),
                                                  child: Container(
                                                    height: getVerticalSize(
                                                      12.5,
                                                    ),
                                                    width: getHorizontalSize(
                                                      7.5,
                                                    ),
                                                    child: SvgPicture.asset(
                                                      ImageConstant.imgVector15,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        top: getVerticalSize(
                                          10,
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorConstant.amber700,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                19,
                                              ),
                                              top: getVerticalSize(
                                                74,
                                              ),
                                              right: getHorizontalSize(
                                                19,
                                              ),
                                              bottom: getVerticalSize(
                                                12,
                                              ),
                                            ),
                                            child: ListView.builder(
                                              physics: BouncingScrollPhysics(),
                                              shrinkWrap: true,
                                              itemCount: 2,
                                              itemBuilder: (context, index) {
                                                return CalenderItemWidget();
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
                          Container(
                            height: getVerticalSize(
                              379,
                            ),
                            width: getHorizontalSize(
                              316,
                            ),
                            margin: EdgeInsets.only(
                              left: getHorizontalSize(
                                40,
                              ),
                              top: getVerticalSize(
                                51,
                              ),
                              right: getHorizontalSize(
                                34,
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    height: getVerticalSize(
                                      379,
                                    ),
                                    width: getHorizontalSize(
                                      316,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              right: getHorizontalSize(
                                                10,
                                              ),
                                              bottom: getVerticalSize(
                                                10,
                                              ),
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: getVerticalSize(
                                                      7,
                                                    ),
                                                    bottom: getVerticalSize(
                                                      19.5,
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Container(
                                                              height: getSize(
                                                                19,
                                                              ),
                                                              width: getSize(
                                                                19,
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                  getHorizontalSize(
                                                                    9.5,
                                                                  ),
                                                                ),
                                                                border:
                                                                    Border.all(
                                                                  color:
                                                                      ColorConstant
                                                                          .red700,
                                                                  width:
                                                                      getHorizontalSize(
                                                                    3,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            height:
                                                                getVerticalSize(
                                                              66.5,
                                                            ),
                                                            width:
                                                                getHorizontalSize(
                                                              1,
                                                            ),
                                                            margin:
                                                                EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                9,
                                                              ),
                                                              right:
                                                                  getHorizontalSize(
                                                                9,
                                                              ),
                                                            ),
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .gray600,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Container(
                                                        height: getSize(
                                                          19,
                                                        ),
                                                        width: getSize(
                                                          19,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            getHorizontalSize(
                                                              9.5,
                                                            ),
                                                          ),
                                                          border: Border.all(
                                                            color: ColorConstant
                                                                .green200,
                                                            width:
                                                                getHorizontalSize(
                                                              3,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: getVerticalSize(
                                                          150.5,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          19,
                                                        ),
                                                        child: Stack(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          children: [
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Container(
                                                                height: getSize(
                                                                  19,
                                                                ),
                                                                width: getSize(
                                                                  19,
                                                                ),
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  top:
                                                                      getVerticalSize(
                                                                    65.5,
                                                                  ),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                    65.5,
                                                                  ),
                                                                ),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                    getHorizontalSize(
                                                                      9.5,
                                                                    ),
                                                                  ),
                                                                  border: Border
                                                                      .all(
                                                                    color: ColorConstant
                                                                        .red700,
                                                                    width:
                                                                        getHorizontalSize(
                                                                      3,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              height:
                                                                  getVerticalSize(
                                                                66.5,
                                                              ),
                                                              width:
                                                                  getHorizontalSize(
                                                                1,
                                                              ),
                                                              margin: EdgeInsets
                                                                  .only(
                                                                left:
                                                                    getHorizontalSize(
                                                                  9,
                                                                ),
                                                                right:
                                                                    getHorizontalSize(
                                                                  9,
                                                                ),
                                                                bottom:
                                                                    getVerticalSize(
                                                                  10,
                                                                ),
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    ColorConstant
                                                                        .gray600,
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                    9,
                                                                  ),
                                                                  right:
                                                                      getHorizontalSize(
                                                                    9,
                                                                  ),
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                      height:
                                                                          getVerticalSize(
                                                                        66.5,
                                                                      ),
                                                                      width:
                                                                          getHorizontalSize(
                                                                        1,
                                                                      ),
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: ColorConstant
                                                                            .gray600,
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      height:
                                                                          getVerticalSize(
                                                                        66.5,
                                                                      ),
                                                                      width:
                                                                          getHorizontalSize(
                                                                        1,
                                                                      ),
                                                                      margin: EdgeInsets
                                                                          .only(
                                                                        top:
                                                                            getVerticalSize(
                                                                          17.5,
                                                                        ),
                                                                      ),
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: ColorConstant
                                                                            .gray600,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        height: getSize(
                                                          19,
                                                        ),
                                                        width: getSize(
                                                          19,
                                                        ),
                                                        margin: EdgeInsets.only(
                                                          top: getVerticalSize(
                                                            0.5,
                                                          ),
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            getHorizontalSize(
                                                              9.5,
                                                            ),
                                                          ),
                                                          border: Border.all(
                                                            color: ColorConstant
                                                                .green200,
                                                            width:
                                                                getHorizontalSize(
                                                              3,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: getVerticalSize(
                                                          66.5,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          1,
                                                        ),
                                                        margin: EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            9,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                            9,
                                                          ),
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: ColorConstant
                                                              .gray600,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                      24,
                                                    ),
                                                    top: getVerticalSize(
                                                      177,
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "8 - 10 am",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .gray600,
                                                          fontSize: getFontSize(
                                                            14,
                                                          ),
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          top: getVerticalSize(
                                                            150,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "8 - 10 am",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .gray600,
                                                            fontSize:
                                                                getFontSize(
                                                              14,
                                                            ),
                                                            fontFamily:
                                                                'DM Sans',
                                                            fontWeight:
                                                                FontWeight.w500,
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
                                                    bottom: getVerticalSize(
                                                      73,
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right:
                                                              getHorizontalSize(
                                                            10,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "Meeting with Jinliye",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .gray600,
                                                            fontSize:
                                                                getFontSize(
                                                              14,
                                                            ),
                                                            fontFamily:
                                                                'DM Sans',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        "Discuss about th words",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .gray600,
                                                          fontSize: getFontSize(
                                                            10,
                                                          ),
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          top: getVerticalSize(
                                                            46,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                            10,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "Meeting with Jinliye",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .gray600,
                                                            fontSize:
                                                                getFontSize(
                                                              14,
                                                            ),
                                                            fontFamily:
                                                                'DM Sans',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        "Discuss about th words",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .gray600,
                                                          fontSize: getFontSize(
                                                            10,
                                                          ),
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          top: getVerticalSize(
                                                            46,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                            10,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "Meeting with Jinliye",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .gray600,
                                                            fontSize:
                                                                getFontSize(
                                                              14,
                                                            ),
                                                            fontFamily:
                                                                'DM Sans',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        "Discuss about th words",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .gray600,
                                                          fontSize: getFontSize(
                                                            10,
                                                          ),
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          top: getVerticalSize(
                                                            46,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                            10,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "Meeting with Jinliye",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .gray600,
                                                            fontSize:
                                                                getFontSize(
                                                              14,
                                                            ),
                                                            fontFamily:
                                                                'DM Sans',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        "Discuss about th words",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .gray600,
                                                          fontSize: getFontSize(
                                                            10,
                                                          ),
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Container(
                                            height: getSize(
                                              19,
                                            ),
                                            width: getSize(
                                              19,
                                            ),
                                            margin: EdgeInsets.only(
                                              top: getVerticalSize(
                                                13,
                                              ),
                                              right: getHorizontalSize(
                                                10,
                                              ),
                                              bottom: getVerticalSize(
                                                13,
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  9.5,
                                                ),
                                              ),
                                              border: Border.all(
                                                color: ColorConstant.red700,
                                                width: getHorizontalSize(
                                                  3,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                35,
                                              ),
                                              top: getVerticalSize(
                                                10,
                                              ),
                                              right: getHorizontalSize(
                                                35,
                                              ),
                                            ),
                                            child: Text(
                                              "Discuss about th words",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: ColorConstant.gray600,
                                                fontSize: getFontSize(
                                                  10,
                                                ),
                                                fontFamily: 'DM Sans',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                10,
                                              ),
                                              top: getVerticalSize(
                                                1,
                                              ),
                                              bottom: getVerticalSize(
                                                10,
                                              ),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getSize(
                                                  19.0,
                                                ),
                                              ),
                                              child: Image.asset(
                                                ImageConstant.imgImage74,
                                                height: getSize(
                                                  38,
                                                ),
                                                width: getSize(
                                                  38,
                                                ),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                10,
                                              ),
                                              top: getVerticalSize(
                                                85,
                                              ),
                                              bottom: getVerticalSize(
                                                85,
                                              ),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getSize(
                                                  19.0,
                                                ),
                                              ),
                                              child: Image.asset(
                                                ImageConstant.imgImage74,
                                                height: getSize(
                                                  38,
                                                ),
                                                width: getSize(
                                                  38,
                                                ),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                10,
                                              ),
                                              top: getVerticalSize(
                                                170,
                                              ),
                                              bottom: getVerticalSize(
                                                170,
                                              ),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getSize(
                                                  19.0,
                                                ),
                                              ),
                                              child: Image.asset(
                                                ImageConstant.imgImage74,
                                                height: getSize(
                                                  38,
                                                ),
                                                width: getSize(
                                                  38,
                                                ),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                10,
                                              ),
                                              top: getVerticalSize(
                                                86,
                                              ),
                                              bottom: getVerticalSize(
                                                86,
                                              ),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getSize(
                                                  19.0,
                                                ),
                                              ),
                                              child: Image.asset(
                                                ImageConstant.imgImage74,
                                                height: getSize(
                                                  38,
                                                ),
                                                width: getSize(
                                                  38,
                                                ),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                10,
                                              ),
                                              top: getVerticalSize(
                                                10,
                                              ),
                                              bottom: getVerticalSize(
                                                6,
                                              ),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getSize(
                                                  19.0,
                                                ),
                                              ),
                                              child: Image.asset(
                                                ImageConstant.imgImage74,
                                                height: getSize(
                                                  38,
                                                ),
                                                width: getSize(
                                                  38,
                                                ),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        43,
                                      ),
                                      top: getVerticalSize(
                                        7,
                                      ),
                                      right: getHorizontalSize(
                                        43,
                                      ),
                                      bottom: getVerticalSize(
                                        10,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  right: getHorizontalSize(
                                                    10,
                                                  ),
                                                ),
                                                child: Text(
                                                  "8 - 10 am",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray600,
                                                    fontSize: getFontSize(
                                                      14,
                                                    ),
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: getVerticalSize(
                                                    65,
                                                  ),
                                                  right: getHorizontalSize(
                                                    10,
                                                  ),
                                                ),
                                                child: Text(
                                                  "8 - 10 am",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray600,
                                                    fontSize: getFontSize(
                                                      14,
                                                    ),
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: getVerticalSize(
                                                    150,
                                                  ),
                                                  right: getHorizontalSize(
                                                    10,
                                                  ),
                                                ),
                                                child: Text(
                                                  "8 - 10 am",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray600,
                                                    fontSize: getFontSize(
                                                      14,
                                                    ),
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              10,
                                            ),
                                            top: getVerticalSize(
                                              58,
                                            ),
                                          ),
                                          child: Text(
                                            "Meeting with Jinliye",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: ColorConstant.gray600,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'DM Sans',
                                              fontWeight: FontWeight.w400,
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
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  318,
                                ),
                                top: getVerticalSize(
                                  119,
                                ),
                                right: getHorizontalSize(
                                  30,
                                ),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                height: getSize(
                                  42,
                                ),
                                width: getSize(
                                  42,
                                ),
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    11,
                                  ),
                                  top: getVerticalSize(
                                    13,
                                  ),
                                  right: getHorizontalSize(
                                    12,
                                  ),
                                  bottom: getVerticalSize(
                                    15,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.blue700,
                                ),
                                child: Text(
                                  '+',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: ColorConstant.whiteA700,
                                    fontSize: getFontSize(
                                      36,
                                    ),
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
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
    );
  }
}
