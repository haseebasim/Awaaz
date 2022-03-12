import './widgets/recordings_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haseeb_s_application/core/app_export.dart';

class RecordingsScreen extends StatelessWidget {
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
                                          138,
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
                                                ImageConstant.imgVector122,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "Recordings",
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
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: EdgeInsets.only(
                                left: getHorizontalSize(
                                  20,
                                ),
                                top: getVerticalSize(
                                  36,
                                ),
                                right: getHorizontalSize(
                                  20,
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
                                        29,
                                      ),
                                      top: getVerticalSize(
                                        16,
                                      ),
                                      bottom: getVerticalSize(
                                        15,
                                      ),
                                    ),
                                    child: Container(
                                      height: getSize(
                                        21,
                                      ),
                                      width: getSize(
                                        21,
                                      ),
                                      child: SvgPicture.asset(
                                        ImageConstant.imgAkariconssear2,
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
                                        13,
                                      ),
                                      right: getHorizontalSize(
                                        219,
                                      ),
                                      bottom: getVerticalSize(
                                        13,
                                      ),
                                    ),
                                    child: Text(
                                      "Search",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray600,
                                        fontSize: getFontSize(
                                          20,
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
                          Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                29,
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
                                    height: getVerticalSize(
                                      46,
                                    ),
                                    width: getHorizontalSize(
                                      346,
                                    ),
                                    margin: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        22,
                                      ),
                                      top: getVerticalSize(
                                        1,
                                      ),
                                      right: getHorizontalSize(
                                        22,
                                      ),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            height: getVerticalSize(
                                              46,
                                            ),
                                            width: getHorizontalSize(
                                              346,
                                            ),
                                            child: SvgPicture.asset(
                                              ImageConstant.imgGroup36273,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                31.89,
                                              ),
                                              top: getVerticalSize(
                                                10.380005,
                                              ),
                                              right: getHorizontalSize(
                                                40,
                                              ),
                                              bottom: getVerticalSize(
                                                11.720001,
                                              ),
                                            ),
                                            child: Container(
                                              height: getVerticalSize(
                                                23.9,
                                              ),
                                              width: getHorizontalSize(
                                                271.22,
                                              ),
                                              child: SvgPicture.asset(
                                                ImageConstant.imgAudio,
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
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        22,
                                      ),
                                      top: getVerticalSize(
                                        6.3399963,
                                      ),
                                      right: getHorizontalSize(
                                        22,
                                      ),
                                    ),
                                    child: ListView.builder(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: 7,
                                      itemBuilder: (context, index) {
                                        return RecordingsItemWidget();
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        347.09,
                                      ),
                                      top: getVerticalSize(
                                        6.340027,
                                      ),
                                      right: getHorizontalSize(
                                        42.910004,
                                      ),
                                      bottom: getVerticalSize(
                                        2.6599731,
                                      ),
                                    ),
                                    child: Text(
                                      "",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: ColorConstant.gray601,
                                        fontSize: getFontSize(
                                          8,
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
