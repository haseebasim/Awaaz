import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haseeb_s_application/core/app_export.dart';

class PatientProfile2Dialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        220,
      ),
      width: size.width,
      alignment: Alignment.center,
      child: Text(
        "New appointment has\n been created!",
        maxLines: null,
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
    );
  }
}
