import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';

class PatientProgress extends StatelessWidget {
  final progress;
  final int index;
  const PatientProgress({Key? key, required this.progress, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('printing progress $progress');
    return Container(
      padding: EdgeInsets.only(right: 30),
      margin: EdgeInsets.only(
        right: getHorizontalSize(
          15.2400055,
        ),
      ),
      decoration: BoxDecoration(
        color: ColorConstant.gray200,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            10,
          ),
        ),
        border: Border.all(
          color: ColorConstant.bluegray100,
          width: getHorizontalSize(
            1,
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
                17,
              ),
              right: getHorizontalSize(
                17,
              ),
            ),
            child: Text(
              'Week ${index + 1}',
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: ColorConstant.gray600,
                fontSize: getFontSize(
                  22,
                ),
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                17,
              ),
            ),
            child: Text(
              "Progress: $progress%",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: ColorConstant.gray600,
                fontSize: getFontSize(
                  20,
                ),
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  16.59,
                ),
                top: getVerticalSize(
                  7.1900024,
                ),
                right: getHorizontalSize(
                  16.589996,
                ),
                bottom: getVerticalSize(
                  23.700012,
                ),
              ),
              child: Container(
                height: getVerticalSize(
                  7.11,
                ),
                width: getHorizontalSize(
                  157.58,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.gray600,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      10,
                    ),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      10,
                    ),
                  ),
                  child: LinearProgressIndicator(
                    value: progress / 100,
                    backgroundColor: ColorConstant.gray600,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      ColorConstant.amber700,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
