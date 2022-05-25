import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:haseeb_s_application/core/app_export.dart';
import 'package:haseeb_s_application/core/firebase.dart';
import 'package:haseeb_s_application/core/utils/color_constant.dart';
import 'package:haseeb_s_application/features/calender_screen/presentation/calender_screen.dart';
import 'package:haseeb_s_application/features/chat_list_screen/presentation/chat_list_screen.dart';
import 'package:haseeb_s_application/features/dashboard_screen/presentation/dashboard_screen.dart';
import 'package:haseeb_s_application/features/patient_list_screen/presentation/patient_list_screen.dart';
import 'package:haseeb_s_application/features/week_roadmap_screen/week_roadmap_screen.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  var _userType;

  @override
  void initState() {
    FirebaseInit.prefs.then((value) => _userType = value.getString('userType'));
    // TODO: implement initState
    super.initState();
  }

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
              onTap: () =>
                  Navigator.pushNamed(context, DashboardScreen.routeName),
              child: Icon(
                Icons.dashboard,
                color: ColorConstant.blue701,
                size: getHorizontalSize(30),
              ),
            ),
            _userType == 'patient'
                ? InkWell(
                    onTap: () => Navigator.pushNamed(
                        context, WeekRoadmapScreen.routeName),
                    child: Icon(
                      Icons.rocket,
                      color: ColorConstant.blue701,
                      size: getHorizontalSize(30),
                    ),
                  )
                : InkWell(
                    onTap: () => Navigator.pushNamed(
                        context, PatientListScreen.routeName),
                    child: Icon(
                      Icons.person,
                      color: ColorConstant.blue701,
                      size: getHorizontalSize(30),
                    ),
                  ),
            InkWell(
              onTap: () =>
                  Navigator.pushNamed(context, ChatListScreen.routeName),
              child: Icon(
                Icons.message_sharp,
                color: ColorConstant.blue701,
                size: getHorizontalSize(30),
              ),
            ),
            InkWell(
              onTap: () =>
                  Navigator.pushNamed(context, CalenderScreen.routeName),
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
