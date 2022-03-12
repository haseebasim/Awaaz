import 'package:flutter/material.dart';
import 'package:haseeb_s_application/core/app_export.dart';

class NewProfileItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getVerticalSize(
          11.0,
        ),
        right: getHorizontalSize(
          5,
        ),
        bottom: getVerticalSize(
          11.0,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: getSize(
              16,
            ),
            width: getSize(
              16,
            ),
            margin: EdgeInsets.only(
              bottom: getVerticalSize(
                1,
              ),
            ),
            decoration: BoxDecoration(
              color: ColorConstant.amber700,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  8,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                9,
              ),
            ),
            child: Text(
              "Female",
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
    );
  }
}
