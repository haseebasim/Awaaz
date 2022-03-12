import 'package:flutter/material.dart';
import 'package:haseeb_s_application/core/app_export.dart';

class Group133ItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.only(
          top: getVerticalSize(
            3.5,
          ),
          bottom: getVerticalSize(
            3.5,
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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  19,
                ),
                top: getVerticalSize(
                  17,
                ),
                bottom: getVerticalSize(
                  16,
                ),
              ),
              child: ClipRRect(
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
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  12,
                ),
                top: getVerticalSize(
                  17,
                ),
                right: getHorizontalSize(
                  50,
                ),
                bottom: getVerticalSize(
                  18,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
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
                        5,
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
                        5,
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
    );
  }
}
