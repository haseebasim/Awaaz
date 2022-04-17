import './widgets/group207_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haseeb_s_application/core/app_export.dart';

class Week01Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: ColorConstant.blue700,
          title: Text(
            "Week 01",
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
                                  ImageConstant.imgAkariconssear3,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              height: getVerticalSize(
                                40,
                              ),
                              width: getHorizontalSize(
                                197,
                              ),
                              margin: EdgeInsets.only(
                                left: getHorizontalSize(
                                  18,
                                ),
                                right: getHorizontalSize(
                                  105,
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
                                        "Bi-Labial Sounds",
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
                            return Group207ItemWidget();
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
