import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haseeb_s_application/core/app_export.dart';

class PatientProfile1Dialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                5,
              ),
            ),
            boxShadow: [
              BoxShadow(
                color: ColorConstant.gray40041,
                spreadRadius: getHorizontalSize(
                  2,
                ),
                blurRadius: getHorizontalSize(
                  2,
                ),
                offset: Offset(
                  0,
                  2,
                ),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorConstant.blue700,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        5,
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: ColorConstant.gray40041,
                        spreadRadius: getHorizontalSize(
                          2,
                        ),
                        blurRadius: getHorizontalSize(
                          2,
                        ),
                        offset: Offset(
                          0,
                          2,
                        ),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            16,
                          ),
                          top: getVerticalSize(
                            19,
                          ),
                          bottom: getVerticalSize(
                            19,
                          ),
                        ),
                        child: Text(
                          "New Appointment",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ColorConstant.whiteA700,
                            fontSize: getFontSize(
                              20,
                            ),
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            24,
                          ),
                          right: getHorizontalSize(
                            16,
                          ),
                          bottom: getVerticalSize(
                            24,
                          ),
                        ),
                        child: Container(
                          height: getSize(
                            16,
                          ),
                          width: getSize(
                            16,
                          ),
                          child: SvgPicture.asset(
                            ImageConstant.imgVector4,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    16,
                  ),
                  top: getVerticalSize(
                    17,
                  ),
                  right: getHorizontalSize(
                    14,
                  ),
                  bottom: getVerticalSize(
                    27,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: getVerticalSize(
                        54,
                      ),
                      width: getHorizontalSize(
                        215,
                      ),
                      margin: EdgeInsets.only(
                        left: getHorizontalSize(
                          31,
                        ),
                        right: getHorizontalSize(
                          31,
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  16,
                                ),
                                bottom: getVerticalSize(
                                  16,
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "11",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.gray600,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        46,
                                      ),
                                    ),
                                    child: Text(
                                      "December",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
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
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        47,
                                      ),
                                    ),
                                    child: Text(
                                      "2021",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
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
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  1,
                                ),
                                right: getHorizontalSize(
                                  10,
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    height: getVerticalSize(
                                      54,
                                    ),
                                    width: getHorizontalSize(
                                      10,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgGroup362732,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        79,
                                      ),
                                    ),
                                    child: Container(
                                      height: getVerticalSize(
                                        54,
                                      ),
                                      width: getHorizontalSize(
                                        10,
                                      ),
                                      child: SvgPicture.asset(
                                        ImageConstant.imgGroup362732,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        94,
                                      ),
                                    ),
                                    child: Container(
                                      height: getVerticalSize(
                                        54,
                                      ),
                                      width: getHorizontalSize(
                                        10,
                                      ),
                                      child: SvgPicture.asset(
                                        ImageConstant.imgGroup362732,
                                        fit: BoxFit.fill,
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
                          top: getVerticalSize(
                            18,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          height: getVerticalSize(
                            43,
                          ),
                          width: getHorizontalSize(
                            284,
                          ),
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              13,
                            ),
                            top: getVerticalSize(
                              12,
                            ),
                            right: getHorizontalSize(
                              30,
                            ),
                            bottom: getVerticalSize(
                              10,
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray200,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                5,
                              ),
                            ),
                          ),
                          child: Text(
                            'Patient Name:',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: ColorConstant.gray501,
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
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            14,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.gray200,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              5,
                            ),
                          ),
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
                                  left: getHorizontalSize(
                                    13,
                                  ),
                                  top: getVerticalSize(
                                    12,
                                  ),
                                  right: getHorizontalSize(
                                    227,
                                  ),
                                  bottom: getVerticalSize(
                                    78,
                                  ),
                                ),
                                child: Text(
                                  "Notes",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: ColorConstant.gray501,
                                    fontSize: getFontSize(
                                      16,
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
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            14,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: getVerticalSize(
                                37,
                              ),
                              width: getHorizontalSize(
                                136,
                              ),
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  30,
                                ),
                                top: getVerticalSize(
                                  7,
                                ),
                                right: getHorizontalSize(
                                  30,
                                ),
                                bottom: getVerticalSize(
                                  7,
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.amber700,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    5,
                                  ),
                                ),
                              ),
                              child: Text(
                                'Create',
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
                            Container(
                              alignment: Alignment.center,
                              height: getVerticalSize(
                                37,
                              ),
                              width: getHorizontalSize(
                                136,
                              ),
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  30,
                                ),
                                top: getVerticalSize(
                                  7,
                                ),
                                right: getHorizontalSize(
                                  30,
                                ),
                                bottom: getVerticalSize(
                                  7,
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.gray600,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    5,
                                  ),
                                ),
                              ),
                              child: Text(
                                'Cancel',
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
      ],
    );
  }
}
