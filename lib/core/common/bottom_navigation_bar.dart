import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:haseeb_s_application/core/app_export.dart';
import 'package:haseeb_s_application/core/utils/color_constant.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: getHorizontalSize(
          22,
        ),
        // top: getVerticalSize(
        //   40,
        // ),
        right: getHorizontalSize(
          22,
        ),
      ),
      child: Container(
        padding: EdgeInsets.zero,
        height: getVerticalSize(
          65,
        ),
        width: getHorizontalSize(
          346,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Icon(
                Icons.dashboard,
                color: ColorConstant.blue701,
                size: getHorizontalSize(30),
              ),
            ),
            Container(
              child: Icon(
                Icons.person,
                color: ColorConstant.blue701,
                size: getHorizontalSize(30),
              ),
            ),
            Container(
              child: Icon(
                Icons.message_sharp,
                color: ColorConstant.blue701,
                size: getHorizontalSize(30),
              ),
            ),
            Container(
              child: Icon(
                Icons.calendar_month_rounded,
                color: ColorConstant.blue701,
                size: getHorizontalSize(30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
