import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haseeb_s_application/core/app_export.dart';

class RecordingsItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          top: getVerticalSize(
            3.17,
          ),
          bottom: getVerticalSize(
            3.17,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    20.91,
                  ),
                  right: getHorizontalSize(
                    20.910004,
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
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: getVerticalSize(
                  46,
                ),
                width: getHorizontalSize(
                  346,
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
          ],
        ),
      ),
    );
  }
}
