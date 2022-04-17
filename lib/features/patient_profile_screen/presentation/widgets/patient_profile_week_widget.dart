import 'package:flutter/material.dart';
import 'package:haseeb_s_application/core/app_export.dart';
import 'package:haseeb_s_application/features/week_01_screen/presentation/week_01_screen.dart';

class PatientProfileWeekWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getVerticalSize(
          2.5,
        ),
        bottom: getVerticalSize(
          2.5,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          InkWell(
            onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>Week01Screen())),
            child: Container(
              alignment: Alignment.center,
              height: getVerticalSize(
                25,
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
                'Week 1',
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
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                7,
              ),
            ),
            child: Container(
              alignment: Alignment.center,
              height: getVerticalSize(
                25,
              ),
              width: getHorizontalSize(
                92,
              ),
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  20,
                ),
                top: getVerticalSize(
                  2,
                ),
                right: getHorizontalSize(
                  20,
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
                'Week 2',
                textAlign: TextAlign.left,
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
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                7,
              ),
            ),
            child: Container(
              alignment: Alignment.center,
              height: getVerticalSize(
                25,
              ),
              width: getHorizontalSize(
                92,
              ),
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  20,
                ),
                top: getVerticalSize(
                  2,
                ),
                right: getHorizontalSize(
                  20,
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
                'Week 3',
                textAlign: TextAlign.left,
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
        ],
      ),
    );
  }
}
