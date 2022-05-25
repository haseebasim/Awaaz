import 'package:flutter/material.dart';
import 'package:haseeb_s_application/core/app_export.dart';
import 'package:haseeb_s_application/features/week_01_screen/presentation/week_01_screen.dart';
import 'package:haseeb_s_application/provider/course.dart';
import 'package:haseeb_s_application/provider/patients.dart';
import 'package:provider/provider.dart';

class PatientProfileWeekWidget extends StatelessWidget {
  final int index;
  final String id;
  final String patientId;
  const PatientProfileWeekWidget(
      {Key? key,
      required this.index,
      required this.id,
      required this.patientId})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getVerticalSize(
          10.5,
        ),
        bottom: getVerticalSize(
          10.5,
        ),
      ),
      child: InkWell(
        onTap: () async {
          await Provider.of<Patients>(context, listen: false)
              .fetchProgressByWeek(id);
          Provider.of<Course>(context, listen: false).setDayCourseItem(index);
          Navigator.pushNamed(context, Week01Screen.routeName,
              arguments: '$patientId-${index+1}');
        },
        child: Container(
          alignment: Alignment.center,
          height: getVerticalSize(
            50,
          ),
          width: getHorizontalSize(
            92,
          ),
          padding: EdgeInsets.only(
            left: getHorizontalSize(
              16,
            ),
            top: getVerticalSize(
              2,
            ),
            right: getHorizontalSize(
              22,
            ),
            bottom: getVerticalSize(
              2,
            ),
          ),
          decoration: BoxDecoration(
            color: ColorConstant.amber700,
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                15,
              ),
            ),
          ),
          child: Text(
            'Week ${index + 1}',
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
    );
  }
}
