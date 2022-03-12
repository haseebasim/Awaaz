import 'package:flutter/material.dart';
import 'package:haseeb_s_application/core/app_export.dart';

class CalenderItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          "Sun",
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
        Padding(
          padding: EdgeInsets.only(
            left: getHorizontalSize(
              26,
            ),
          ),
          child: Text(
            "Mon",
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
        Padding(
          padding: EdgeInsets.only(
            left: getHorizontalSize(
              23,
            ),
          ),
          child: Text(
            "Tue",
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
        Padding(
          padding: EdgeInsets.only(
            left: getHorizontalSize(
              23,
            ),
          ),
          child: Text(
            "Wed",
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
        Padding(
          padding: EdgeInsets.only(
            left: getHorizontalSize(
              16,
            ),
          ),
          child: Text(
            "Thu",
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
        Padding(
          padding: EdgeInsets.only(
            left: getHorizontalSize(
              26,
            ),
          ),
          child: Text(
            "Fri",
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
        Padding(
          padding: EdgeInsets.only(
            left: getHorizontalSize(
              26,
            ),
          ),
          child: Text(
            "Sat",
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
      ],
    );
  }
}
