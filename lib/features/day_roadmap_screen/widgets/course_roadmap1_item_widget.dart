import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

// ignore: must_be_immutable
class CourseRoadmap1ItemWidget extends StatelessWidget {
  CourseRoadmap1ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        height: getVerticalSize(
          25.00,
        ),
        width: getHorizontalSize(
          92.00,
        ),
        decoration: BoxDecoration(
          color: ColorConstant.whiteA700,
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              15.00,
            ),
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
                15.00,
              ),
            ),
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      34.41,
                    ),
                    top: getVerticalSize(
                      10.00,
                    ),
                    right: getHorizontalSize(
                      34.41,
                    ),
                    bottom: getVerticalSize(
                      1.34,
                    ),
                  ),
                  child: Image.asset(
                    ImageConstant.imgImage7,
                    height: getVerticalSize(
                      19.66,
                    ),
                    width: getHorizontalSize(
                      20.36,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      34.41,
                    ),
                    top: getVerticalSize(
                      4.00,
                    ),
                    right: getHorizontalSize(
                      34.41,
                    ),
                    bottom: getVerticalSize(
                      10.00,
                    ),
                  ),
                  child: Text(
                    "P _",
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
    );
  }
}
