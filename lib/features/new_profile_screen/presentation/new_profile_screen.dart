import './widgets/new_profile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haseeb_s_application/core/app_export.dart';

class NewProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SingleChildScrollView(
                    child: Container(
                      height: getVerticalSize(
                        936,
                      ),
                      width: size.width,
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.only(
                                bottom: getVerticalSize(
                                  10,
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.blue700,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    23,
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          24,
                                        ),
                                        top: getVerticalSize(
                                          31,
                                        ),
                                        right: getHorizontalSize(
                                          24,
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
                                          ImageConstant.imgVector123,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: getVerticalSize(
                                          57,
                                        ),
                                        bottom: getVerticalSize(
                                          121,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                117,
                                              ),
                                              right: getHorizontalSize(
                                                117,
                                              ),
                                            ),
                                            child: Container(
                                              height: getVerticalSize(
                                                23,
                                              ),
                                              width: getHorizontalSize(
                                                28,
                                              ),
                                              child: SvgPicture.asset(
                                                ImageConstant.imgVector3,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: getHorizontalSize(
                                              157,
                                            ),
                                            margin: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                117,
                                              ),
                                              right: getHorizontalSize(
                                                116,
                                              ),
                                            ),
                                            child: Text(
                                              "Add profile picture",
                                              maxLines: null,
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
                                        ],
                                      ),
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: getVerticalSize(
                                        25,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              20,
                                            ),
                                            right: getHorizontalSize(
                                              20,
                                            ),
                                          ),
                                          child: Text(
                                            "Patient Name:",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: ColorConstant.gray600,
                                              fontSize: getFontSize(
                                                16,
                                              ),
                                              fontFamily: 'DM Sans',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            height: getVerticalSize(
                                              45,
                                            ),
                                            width: getHorizontalSize(
                                              350,
                                            ),
                                            margin: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                20,
                                              ),
                                              top: getVerticalSize(
                                                11,
                                              ),
                                              right: getHorizontalSize(
                                                20,
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              color: ColorConstant.gray200,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  10,
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
                                              10,
                                            ),
                                            right: getHorizontalSize(
                                              20,
                                            ),
                                          ),
                                          child: Text(
                                            "Email:",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: ColorConstant.gray600,
                                              fontSize: getFontSize(
                                                16,
                                              ),
                                              fontFamily: 'DM Sans',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            height: getVerticalSize(
                                              45,
                                            ),
                                            width: getHorizontalSize(
                                              350,
                                            ),
                                            margin: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                20,
                                              ),
                                              top: getVerticalSize(
                                                10,
                                              ),
                                              right: getHorizontalSize(
                                                20,
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              color: ColorConstant.gray200,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  10,
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
                                              10,
                                            ),
                                            right: getHorizontalSize(
                                              20,
                                            ),
                                          ),
                                          child: Text(
                                            "Phone no.:",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: ColorConstant.gray600,
                                              fontSize: getFontSize(
                                                16,
                                              ),
                                              fontFamily: 'DM Sans',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            height: getVerticalSize(
                                              45,
                                            ),
                                            width: getHorizontalSize(
                                              350,
                                            ),
                                            margin: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                20,
                                              ),
                                              top: getVerticalSize(
                                                10,
                                              ),
                                              right: getHorizontalSize(
                                                20,
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              color: ColorConstant.gray200,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  10,
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
                                              10,
                                            ),
                                            right: getHorizontalSize(
                                              20,
                                            ),
                                          ),
                                          child: Text(
                                            "Address:",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: ColorConstant.gray600,
                                              fontSize: getFontSize(
                                                16,
                                              ),
                                              fontFamily: 'DM Sans',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            height: getVerticalSize(
                                              45,
                                            ),
                                            width: getHorizontalSize(
                                              350,
                                            ),
                                            margin: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                20,
                                              ),
                                              top: getVerticalSize(
                                                10,
                                              ),
                                              right: getHorizontalSize(
                                                20,
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              color: ColorConstant.gray200,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  10,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              23,
                                            ),
                                            top: getVerticalSize(
                                              19,
                                            ),
                                            right: getHorizontalSize(
                                              23,
                                            ),
                                          ),
                                          child: Text(
                                            "Gender:",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: ColorConstant.gray600,
                                              fontSize: getFontSize(
                                                16,
                                              ),
                                              fontFamily: 'DM Sans',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              25,
                                            ),
                                            top: getVerticalSize(
                                              15,
                                            ),
                                            right: getHorizontalSize(
                                              25,
                                            ),
                                          ),
                                          child: ListView.builder(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: 3,
                                            itemBuilder: (context, index) {
                                              return NewProfileItemWidget();
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              23,
                                            ),
                                            top: getVerticalSize(
                                              21,
                                            ),
                                            right: getHorizontalSize(
                                              23,
                                            ),
                                          ),
                                          child: Text(
                                            "Disorder level:",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: ColorConstant.gray600,
                                              fontSize: getFontSize(
                                                16,
                                              ),
                                              fontFamily: 'DM Sans',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: getVerticalSize(
                                              14,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                height: getSize(
                                                  16,
                                                ),
                                                width: getSize(
                                                  16,
                                                ),
                                                margin: EdgeInsets.only(
                                                  left: getHorizontalSize(
                                                    25,
                                                  ),
                                                  top: getVerticalSize(
                                                    1,
                                                  ),
                                                ),
                                                decoration: BoxDecoration(
                                                  color: ColorConstant.amber700,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      8,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: getHorizontalSize(
                                                    9,
                                                  ),
                                                ),
                                                child: Text(
                                                  "Low",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray600,
                                                    fontSize: getFontSize(
                                                      16,
                                                    ),
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: getSize(
                                                  16,
                                                ),
                                                width: getSize(
                                                  16,
                                                ),
                                                margin: EdgeInsets.only(
                                                  left: getHorizontalSize(
                                                    21,
                                                  ),
                                                  top: getVerticalSize(
                                                    1,
                                                  ),
                                                ),
                                                decoration: BoxDecoration(
                                                  color: ColorConstant.gray300,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      8,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: getHorizontalSize(
                                                    9,
                                                  ),
                                                ),
                                                child: Text(
                                                  "Mild",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray600,
                                                    fontSize: getFontSize(
                                                      16,
                                                    ),
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: getSize(
                                                  16,
                                                ),
                                                width: getSize(
                                                  16,
                                                ),
                                                margin: EdgeInsets.only(
                                                  left: getHorizontalSize(
                                                    21,
                                                  ),
                                                  top: getVerticalSize(
                                                    1,
                                                  ),
                                                ),
                                                decoration: BoxDecoration(
                                                  color: ColorConstant.gray300,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      8,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: getHorizontalSize(
                                                    9,
                                                  ),
                                                  right: getHorizontalSize(
                                                    59,
                                                  ),
                                                ),
                                                child: Text(
                                                  "Severe",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray600,
                                                    fontSize: getFontSize(
                                                      16,
                                                    ),
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: getVerticalSize(
                                        28,
                                      ),
                                      bottom: getVerticalSize(
                                        81,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              20,
                                            ),
                                          ),
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: getVerticalSize(
                                              41,
                                            ),
                                            width: getHorizontalSize(
                                              158,
                                            ),
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                30,
                                              ),
                                              top: getVerticalSize(
                                                12,
                                              ),
                                              right: getHorizontalSize(
                                                30,
                                              ),
                                              bottom: getVerticalSize(
                                                12,
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              color: ColorConstant.amber700,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  5,
                                                ),
                                              ),
                                            ),
                                            child: Text(
                                              'Save',
                                              textAlign: TextAlign.left,
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
                                        Container(
                                          height: getVerticalSize(
                                            41,
                                          ),
                                          width: getHorizontalSize(
                                            158,
                                          ),
                                          margin: EdgeInsets.only(
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
                                                    41,
                                                  ),
                                                  width: getHorizontalSize(
                                                    158,
                                                  ),
                                                  child: SvgPicture.asset(
                                                    ImageConstant.imgGroup36284,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                      40,
                                                    ),
                                                    top: getVerticalSize(
                                                      12,
                                                    ),
                                                    right: getHorizontalSize(
                                                      40,
                                                    ),
                                                    bottom: getVerticalSize(
                                                      12,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "Cancel",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
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
