import './widgets/group231_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haseeb_s_application/core/app_export.dart';

class Week5Screen extends StatelessWidget {
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
                              29,
                            ),
                            right: getHorizontalSize(
                              149,
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
                                    7,
                                  ),
                                  bottom: getVerticalSize(
                                    13,
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
                                "Week 05",
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
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(
                    top: getVerticalSize(
                      29,
                    ),
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  49,
                                ),
                                top: getVerticalSize(
                                  20,
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
                                  ImageConstant.imgAkariconssear4,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              height: getVerticalSize(
                                40,
                              ),
                              width: getHorizontalSize(
                                184,
                              ),
                              margin: EdgeInsets.only(
                                left: getHorizontalSize(
                                  18,
                                ),
                                right: getHorizontalSize(
                                  118,
                                ),
                                bottom: getVerticalSize(
                                  1,
                                ),
                              ),
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: getVerticalSize(
                                          10,
                                        ),
                                        right: getHorizontalSize(
                                          10,
                                        ),
                                      ),
                                      child: Text(
                                        "Search by keywords",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: ColorConstant.whiteA700,
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
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          10,
                                        ),
                                        bottom: getVerticalSize(
                                          10,
                                        ),
                                      ),
                                      child: Text(
                                        "Lingual Palatal",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: ColorConstant.blue700,
                                          fontSize: getFontSize(
                                            22,
                                          ),
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w700,
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
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            22,
                          ),
                          top: getVerticalSize(
                            17,
                          ),
                          right: getHorizontalSize(
                            19,
                          ),
                        ),
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 7,
                          itemBuilder: (context, index) {
                            return Group231ItemWidget();
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
    );
  }
}
