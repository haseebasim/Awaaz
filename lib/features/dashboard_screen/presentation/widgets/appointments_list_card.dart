import 'package:flutter/material.dart';
import 'package:haseeb_s_application/core/app_export.dart';

class AppointmentsListCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: getVerticalSize(
          6.0,
        ),
        bottom: getVerticalSize(
          6.0,
        ),
      ),
      decoration: BoxDecoration(
        color: ColorConstant.whiteA700,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            5,
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
                5,
              ),
              top: getVerticalSize(
                3,
              ),
              bottom: getVerticalSize(
                3,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                getSize(
                  22.5,
                ),
              ),
              child: Image.asset(
                ImageConstant.imgImage71,
                height: getSize(
                  45,
                ),
                width: getSize(
                  45,
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                15,
              ),
              top: getVerticalSize(
                8,
              ),
              right: getHorizontalSize(
                78,
              ),
              bottom: getVerticalSize(
                8,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Jiliye James, Islamabad",
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
                      10,
                    ),
                  ),
                  child: Text(
                    "Monday, 6th April, 2021",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: ColorConstant.blue700,
                      fontSize: getFontSize(
                        14,
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
    );
  }
}
