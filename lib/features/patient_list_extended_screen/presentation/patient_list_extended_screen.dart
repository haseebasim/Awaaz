import './widgets/group132_item_widget.dart';
import './widgets/group133_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haseeb_s_application/core/app_export.dart';

class PatientListExtendedScreen extends StatelessWidget {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorConstant.blue700,
                  boxShadow: [
                    BoxShadow(
                      color: ColorConstant.black90040,
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
                        width: size.width,
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            26,
                          ),
                          bottom: getVerticalSize(
                            25,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              23,
                            ),
                            right: getHorizontalSize(
                              21,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: getVerticalSize(
                                    9,
                                  ),
                                  bottom: getVerticalSize(
                                    11,
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
                              Text(
                                "Patient list",
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
                              Padding(
                                padding: EdgeInsets.only(
                                  bottom: getVerticalSize(
                                    1,
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
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
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(
                    top: getVerticalSize(
                      36,
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
                      right: getHorizontalSize(
                        18,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: getHorizontalSize(
                                1,
                              ),
                              right: getHorizontalSize(
                                2,
                              ),
                            ),
                            decoration: BoxDecoration(
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      23,
                                    ),
                                    top: getVerticalSize(
                                      17,
                                    ),
                                    bottom: getVerticalSize(
                                      15,
                                    ),
                                  ),
                                  child: Container(
                                    height: getSize(
                                      20,
                                    ),
                                    width: getSize(
                                      20,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgAkariconssear1,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      16,
                                    ),
                                    top: getVerticalSize(
                                      16,
                                    ),
                                    right: getHorizontalSize(
                                      136,
                                    ),
                                    bottom: getVerticalSize(
                                      15,
                                    ),
                                  ),
                                  child: Text(
                                    "Search patient name",
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
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                305,
                              ),
                              top: getVerticalSize(
                                17,
                              ),
                              right: getHorizontalSize(
                                15,
                              ),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              height: getVerticalSize(
                                31,
                              ),
                              width: getHorizontalSize(
                                32,
                              ),
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  3,
                                ),
                                top: getVerticalSize(
                                  5,
                                ),
                                right: getHorizontalSize(
                                  4,
                                ),
                                bottom: getVerticalSize(
                                  7,
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    4,
                                  ),
                                ),
                                border: Border.all(
                                  color: ColorConstant.gray400,
                                  width: getHorizontalSize(
                                    1,
                                  ),
                                ),
                              ),
                              child: Text(
                                '+',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: ColorConstant.blue701,
                                  fontSize: getFontSize(
                                    24,
                                  ),
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(
                              top: getVerticalSize(
                                22,
                              ),
                              right: getHorizontalSize(
                                3,
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      19,
                                    ),
                                    top: getVerticalSize(
                                      17,
                                    ),
                                    right: getHorizontalSize(
                                      19,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          getSize(
                                            40.0,
                                          ),
                                        ),
                                        child: Image.asset(
                                          ImageConstant.imgImage73,
                                          height: getVerticalSize(
                                            80,
                                          ),
                                          width: getHorizontalSize(
                                            77,
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            12,
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
                                                right: getHorizontalSize(
                                                  10,
                                                ),
                                              ),
                                              child: Text(
                                                "Jiliye James",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: ColorConstant.blue700,
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
                                                  6,
                                                ),
                                                right: getHorizontalSize(
                                                  10,
                                                ),
                                              ),
                                              child: Text(
                                                "Age: Female, 21",
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
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: getVerticalSize(
                                                  6,
                                                ),
                                              ),
                                              child: Text(
                                                "Gulberg Town, Islamabad",
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
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      23,
                                    ),
                                    top: getVerticalSize(
                                      36,
                                    ),
                                    right: getHorizontalSize(
                                      23,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Disorder Level:",
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
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: getVerticalSize(
                                            5,
                                          ),
                                          right: getHorizontalSize(
                                            7,
                                          ),
                                        ),
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: getVerticalSize(
                                            25,
                                          ),
                                          width: getHorizontalSize(
                                            92,
                                          ),
                                          padding: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              30,
                                            ),
                                            top: getVerticalSize(
                                              2,
                                            ),
                                            right: getHorizontalSize(
                                              30,
                                            ),
                                            bottom: getVerticalSize(
                                              2,
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.amber700,
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                15,
                                              ),
                                            ),
                                          ),
                                          child: Text(
                                            'Mild',
                                            textAlign: TextAlign.left,
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
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        19,
                                      ),
                                      top: getVerticalSize(
                                        15,
                                      ),
                                      right: getHorizontalSize(
                                        19,
                                      ),
                                      bottom: getVerticalSize(
                                        26,
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
                                            right: getHorizontalSize(
                                              10,
                                            ),
                                          ),
                                          child: Text(
                                            "Progress:",
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
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: getVerticalSize(
                                              5,
                                            ),
                                          ),
                                          child: ListView.builder(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: 2,
                                            itemBuilder: (context, index) {
                                              return Group132ItemWidget();
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
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                3,
                              ),
                              top: getVerticalSize(
                                7,
                              ),
                            ),
                            child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return Group133ItemWidget();
                              },
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                2,
                              ),
                              top: getVerticalSize(
                                66,
                              ),
                              right: getHorizontalSize(
                                4,
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
      ),
    );
  }
}
