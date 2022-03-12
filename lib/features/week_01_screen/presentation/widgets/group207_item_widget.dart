import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haseeb_s_application/core/app_export.dart';

class Group207ItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: getVerticalSize(
          4.0,
        ),
        bottom: getVerticalSize(
          4.0,
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                23,
              ),
              top: getVerticalSize(
                25,
              ),
              right: getHorizontalSize(
                23,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: getVerticalSize(
                      1,
                    ),
                  ),
                  child: Text(
                    "Day 01",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorConstant.blue700,
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
                  ),
                  child: Container(
                    height: getSize(
                      27,
                    ),
                    width: getSize(
                      27,
                    ),
                    child: SvgPicture.asset(
                      ImageConstant.imgGroup36447,
                      fit: BoxFit.fill,
                    ),
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
                24,
              ),
              right: getHorizontalSize(
                23,
              ),
            ),
            child: Text(
              "Correctness Percentage: 90%",
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
            child: Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  22,
                ),
                top: getVerticalSize(
                  24,
                ),
                right: getHorizontalSize(
                  22,
                ),
                bottom: getVerticalSize(
                  26,
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                height: getVerticalSize(
                  43,
                ),
                width: getHorizontalSize(
                  303,
                ),
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    30,
                  ),
                  top: getVerticalSize(
                    6,
                  ),
                  right: getHorizontalSize(
                    30,
                  ),
                  bottom: getVerticalSize(
                    6.6400146,
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
                  'View Recordings',
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
        ],
      ),
    );
  }
}
