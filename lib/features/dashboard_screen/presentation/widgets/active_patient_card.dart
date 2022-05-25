import 'package:flutter/material.dart';
import 'package:haseeb_s_application/core/app_export.dart';
import 'package:haseeb_s_application/provider/patients.dart';

class ActivePatientCard extends StatelessWidget {
  final Patient patientDetails;

  const ActivePatientCard({Key? key, required this.patientDetails})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
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
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    16.59,
                  ),
                  top: getVerticalSize(
                    27.25,
                  ),
                  right: getHorizontalSize(
                    16.59,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    getSize(
                      47.395,
                    ),
                  ),
                  child: Image.network(
                    patientDetails.profileImage,
                    height: getSize(
                      94.79,
                    ),
                    width: getSize(
                      94.79,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  17,
                ),
                top: getVerticalSize(
                  9.480011,
                ),
                right: getHorizontalSize(
                  17,
                ),
              ),
              child: Text(
                patientDetails.name,
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
            Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  17,
                ),
                top: getVerticalSize(
                  3.2299805,
                ),
                right: getHorizontalSize(
                  17,
                ),
              ),
              child: Text(
                patientDetails.active ? 'Active' : 'Inactive',
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: ColorConstant.redA700,
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
    );
  }
}
