import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haseeb_s_application/features/day_roadmap_screen/day_roadmap_screen.dart';

import '../../../core/app_export.dart';

// ignore: must_be_immutable
class CourseRoadmapItemWidget extends StatelessWidget {
  final String _id;
  final String label;
  final int index;
  final bool isComplete;
  CourseRoadmapItemWidget(this._id, this.label, this.index, this.isComplete);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: getHorizontalSize(
          22.00,
        ),
        top: getVerticalSize(
          64.00,
        ),
        right: getHorizontalSize(
          22.00,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: getSize(
              20.00,
            ),
            width: getSize(
              20.00,
            ),
            decoration: BoxDecoration(
                color:
                    isComplete ? ColorConstant.amber700 : ColorConstant.gray400,
                borderRadius: BorderRadius.circular(20)),
            child: Icon(
              Icons.check,
              color: Colors.white,
              size: 10,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, DayRoadmapScreen.routeName,
                  arguments: index);
            },
            child: Container(
              margin: EdgeInsets.only(
                  left: getHorizontalSize(
                    15.00,
                  ),
                  right: getHorizontalSize(15)),
              width: getHorizontalSize(250),
              decoration: BoxDecoration(
                color:
                    isComplete ? ColorConstant.amber700 : ColorConstant.gray200,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    10.00,
                  ),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        46.00,
                      ),
                      top: getVerticalSize(
                        16.00,
                      ),
                      right: getHorizontalSize(
                        46.00,
                      ),
                    ),
                    child: Text(
                      "Week 0${index + 1}",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: isComplete
                            ? ColorConstant.whiteA700
                            : ColorConstant.gray600,
                        fontSize: getFontSize(
                          18,
                        ),
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        46.00,
                      ),
                      top: getVerticalSize(
                        6.00,
                      ),
                      right: getHorizontalSize(
                        46.00,
                      ),
                      bottom: getVerticalSize(
                        14.00,
                      ),
                    ),
                    child: Text(
                      "${label}",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: isComplete
                            ? ColorConstant.whiteA700
                            : ColorConstant.gray600,
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
          ),
        ],
      ),
    );
  }
}
