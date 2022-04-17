import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:haseeb_s_application/core/app_export.dart';
import 'package:haseeb_s_application/core/utils/color_constant.dart';
import 'package:haseeb_s_application/features/chat_list_screen/presentation/chat_list_screen.dart';
import 'package:haseeb_s_application/features/dashboard_screen/presentation/dashboard_screen.dart';
import 'package:haseeb_s_application/features/patient_list_screen/presentation/patient_list_screen.dart';

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
            InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DashboardScreen())),
              child: Icon(
                Icons.dashboard,
                color: ColorConstant.blue701,
                size: getHorizontalSize(30),
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PatientListScreen())),
              child: Icon(
                Icons.person,
                color: ColorConstant.blue701,
                size: getHorizontalSize(30),
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChatListScreen())),
              child: Icon(
                Icons.message_sharp,
                color: ColorConstant.blue701,
                size: getHorizontalSize(30),
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DashboardScreen())),
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
