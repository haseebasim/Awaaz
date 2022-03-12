import './widgets/patient_profile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haseeb_s_application/core/app_export.dart';

class PatientProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: getVerticalSize(
                255,
              ),
              width: size.width,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(
                        bottom: getVerticalSize(
                          8,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.blue700,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: size.width,
                              margin: EdgeInsets.only(
                                top: getVerticalSize(
                                  25,
                                ),
                                bottom: getVerticalSize(
                                  193,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    20,
                                  ),
                                  right: getHorizontalSize(
                                    124,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                          ImageConstant.imgVector121,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          98,
                                        ),
                                      ),
                                      child: Text(
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
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          110,
                        ),
                        top: getVerticalSize(
                          10,
                        ),
                        right: getHorizontalSize(
                          110,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          getSize(
                            85.0,
                          ),
                        ),
                        child: Image.asset(
                          ImageConstant.imgImage75,
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
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        35,
                      ),
                    ),
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
                          child: Container(
                            height: getVerticalSize(
                              40,
                            ),
                            width: getHorizontalSize(
                              88.24,
                            ),
                            child: SvgPicture.asset(
                              ImageConstant.imgGroup36409,
                              fit: BoxFit.fill,
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
                          child: Text(
                            "Jiliye James",
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
                            "21 years old",
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
                            "Mild Articulation Disorder",
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
                      Padding(
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
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return PatientProfileItemWidget();
                          },
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
                          "Analytics",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.gray601,
                            fontSize: getFontSize(
                              20,
                            ),
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: getVerticalSize(
                            209,
                          ),
                          width: getHorizontalSize(
                            347,
                          ),
                          margin: EdgeInsets.only(
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
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.all(0),
                            color: ColorConstant.whiteA700,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  10,
                                ),
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        24,
                                      ),
                                      top: getVerticalSize(
                                        15,
                                      ),
                                      right: getHorizontalSize(
                                        24,
                                      ),
                                      bottom: getVerticalSize(
                                        17,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                42,
                                              ),
                                              right: getHorizontalSize(
                                                42,
                                              ),
                                            ),
                                            child: Text(
                                              "y-axis   days",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: ColorConstant.gray601,
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'DM Sans',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "5",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .gray400,
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
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            top:
                                                                getVerticalSize(
                                                              14,
                                                            ),
                                                          ),
                                                          child: Text(
                                                            "4",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .gray400,
                                                              fontSize:
                                                                  getFontSize(
                                                                14,
                                                              ),
                                                              fontFamily:
                                                                  'DM Sans',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            top:
                                                                getVerticalSize(
                                                              14,
                                                            ),
                                                          ),
                                                          child: Text(
                                                            "3",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .gray400,
                                                              fontSize:
                                                                  getFontSize(
                                                                14,
                                                              ),
                                                              fontFamily:
                                                                  'DM Sans',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            top:
                                                                getVerticalSize(
                                                              14,
                                                            ),
                                                          ),
                                                          child: Text(
                                                            "2",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .gray400,
                                                              fontSize:
                                                                  getFontSize(
                                                                14,
                                                              ),
                                                              fontFamily:
                                                                  'DM Sans',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                2,
                                                              ),
                                                              top:
                                                                  getVerticalSize(
                                                                14,
                                                              ),
                                                              right:
                                                                  getHorizontalSize(
                                                                2,
                                                              ),
                                                            ),
                                                            child: Text(
                                                              "1",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                color:
                                                                    ColorConstant
                                                                        .gray400,
                                                                fontSize:
                                                                    getFontSize(
                                                                  14,
                                                                ),
                                                                fontFamily:
                                                                    'DM Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Container(
                                                      height: getVerticalSize(
                                                        139,
                                                      ),
                                                      width: getHorizontalSize(
                                                        283,
                                                      ),
                                                      margin: EdgeInsets.only(
                                                        top: getVerticalSize(
                                                          5,
                                                        ),
                                                        bottom: getVerticalSize(
                                                          2,
                                                        ),
                                                      ),
                                                      child: Stack(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        children: [
                                                          Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                139,
                                                              ),
                                                              width:
                                                                  getHorizontalSize(
                                                                283,
                                                              ),
                                                              child: SvgPicture
                                                                  .asset(
                                                                ImageConstant
                                                                    .imgVector49,
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                118,
                                                              ),
                                                              width:
                                                                  getHorizontalSize(
                                                                283,
                                                              ),
                                                              margin: EdgeInsets
                                                                  .only(
                                                                top:
                                                                    getVerticalSize(
                                                                  10,
                                                                ),
                                                              ),
                                                              child: Stack(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter,
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                        left:
                                                                            getHorizontalSize(
                                                                          2,
                                                                        ),
                                                                        bottom:
                                                                            getVerticalSize(
                                                                          10,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            getVerticalSize(
                                                                          59,
                                                                        ),
                                                                        width:
                                                                            getHorizontalSize(
                                                                          281,
                                                                        ),
                                                                        child: SvgPicture
                                                                            .asset(
                                                                          ImageConstant
                                                                              .imgVector50,
                                                                          fit: BoxFit
                                                                              .fill,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                        top:
                                                                            getVerticalSize(
                                                                          1,
                                                                        ),
                                                                      ),
                                                                      child: Image
                                                                          .asset(
                                                                        ImageConstant
                                                                            .imgVector51,
                                                                        height:
                                                                            getVerticalSize(
                                                                          117,
                                                                        ),
                                                                        width:
                                                                            getHorizontalSize(
                                                                          283,
                                                                        ),
                                                                        fit: BoxFit
                                                                            .fill,
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
                                                  ],
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                      18,
                                                    ),
                                                    right: getHorizontalSize(
                                                      18,
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        "10",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .gray400,
                                                          fontSize: getFontSize(
                                                            14,
                                                          ),
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            13,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "20",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .gray400,
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
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            11,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "30",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .gray400,
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
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            11,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "40",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .gray400,
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
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            10,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "50",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .gray400,
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
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            10,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "60",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .gray400,
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
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            11,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "70",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .gray400,
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
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            11,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "80",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .gray400,
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
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            10,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "90",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .gray400,
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
                                                    ],
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
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        66,
                                      ),
                                      top: getVerticalSize(
                                        32,
                                      ),
                                      right: getHorizontalSize(
                                        66,
                                      ),
                                      bottom: getVerticalSize(
                                        32,
                                      ),
                                    ),
                                    child: Text(
                                      "x-axis   correctness",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant.gray601,
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'DM Sans',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
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
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  height: getVerticalSize(
                                    57,
                                  ),
                                  width: getHorizontalSize(
                                    347,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageConstant.imgGroup36414,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  width: getHorizontalSize(
                                    258,
                                  ),
                                  margin: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      40,
                                    ),
                                    top: getVerticalSize(
                                      4,
                                    ),
                                    right: getHorizontalSize(
                                      40,
                                    ),
                                    bottom: getVerticalSize(
                                      4,
                                    ),
                                  ),
                                  child: Text(
                                    "New Appointment",
                                    maxLines: null,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.whiteA700,
                                      fontSize: getFontSize(
                                        18,
                                      ),
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
                              68,
                            ),
                            right: getHorizontalSize(
                              20,
                            ),
                            bottom: getVerticalSize(
                              25,
                            ),
                          ),
                          child: Container(
                            height: getVerticalSize(
                              25,
                            ),
                            width: getHorizontalSize(
                              346,
                            ),
                            child: SvgPicture.asset(
                              ImageConstant.imgGroup36433,
                              fit: BoxFit.fill,
                            ),
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
    );
  }
}
