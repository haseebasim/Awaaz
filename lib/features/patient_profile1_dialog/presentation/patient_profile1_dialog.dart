import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haseeb_s_application/core/app_export.dart';
import 'package:haseeb_s_application/features/patient_profile2_dialog/presentation/patient_profile2_dialog.dart';

class PatientProfile1Dialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: getVerticalSize(64),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: ColorConstant.blue700,
                ),
                child: Text(
                  "New Appointment",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorConstant.whiteA700,
                    fontSize: getFontSize(
                      20,
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
                  top: getVerticalSize(
                    17,
                  ),
                  right: getHorizontalSize(
                    14,
                  ),
                  bottom: getVerticalSize(
                    27,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: getVerticalSize(
                        54,
                      ),
                      margin: EdgeInsets.only(
                        left: getHorizontalSize(
                          31,
                        ),
                        right: getHorizontalSize(
                          31,
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  16,
                                ),
                                bottom: getVerticalSize(
                                  16,
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "11",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.gray600,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        46,
                                      ),
                                    ),
                                    child: Text(
                                      "December",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
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
                                        45,
                                      ),
                                    ),
                                    child: Text(
                                      "2021",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
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
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  1,
                                ),
                                right: getHorizontalSize(
                                  10,
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    height: getVerticalSize(
                                      54,
                                    ),
                                    width: getHorizontalSize(
                                      10,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgGroup362732,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        79,
                                      ),
                                    ),
                                    child: Container(
                                      height: getVerticalSize(
                                        54,
                                      ),
                                      width: getHorizontalSize(
                                        10,
                                      ),
                                      child: SvgPicture.asset(
                                        ImageConstant.imgGroup362732,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        94,
                                      ),
                                    ),
                                    child: Container(
                                      height: getVerticalSize(
                                        54,
                                      ),
                                      width: getHorizontalSize(
                                        10,
                                      ),
                                      child: SvgPicture.asset(
                                        ImageConstant.imgGroup362732,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            18,
                          ),
                        ),
                        child: Container(
                          height: getVerticalSize(
                            43,
                          ),
                          width: getHorizontalSize(
                            284,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray200,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                5,
                              ),
                            ),
                          ),
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              hintText: 'Patient Name',
                              hintStyle: TextStyle(
                                fontSize: getFontSize(
                                  16.0,
                                ),
                                color: ColorConstant.gray600,
                              ),
                              contentPadding:
                                  EdgeInsets.only(left: getHorizontalSize(16)),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    5,
                                  ),
                                ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    5,
                                  ),
                                ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                            ),
                            style: TextStyle(
                              color: ColorConstant.gray600,
                              fontSize: getFontSize(
                                16.0,
                              ),
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: double.infinity,
                        height: getVerticalSize(111),
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            14,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.gray200,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              5,
                            ),
                          ),
                        ),
                        child: TextFormField(
                          maxLines: 6,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            hintText: 'Notes',
                            hintStyle: TextStyle(
                              fontSize: getFontSize(
                                16.0,
                              ),
                              color: ColorConstant.gray600,
                            ),
                            contentPadding:
                                EdgeInsets.only(left: getHorizontalSize(16),top: getHorizontalSize(16)),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  5,
                                ),
                              ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  5,
                                ),
                              ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                          ),
                          style: TextStyle(
                            color: ColorConstant.gray600,
                            fontSize: getFontSize(
                              16.0,
                            ),
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            14,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            TextButton(
                              onPressed: () => {
                                Navigator.pop(context, false),
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Dialog(
                                          child: PatientProfile2Dialog());
                                    })
                              },
                              style: TextButton.styleFrom(
                                  backgroundColor: ColorConstant.amber700,
                                  fixedSize: Size(getHorizontalSize(136), 37),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  )),
                              child: Text(
                                "Create",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: getFontSize(
                                    18,
                                  ),
                                  fontFamily: 'DM Sans',
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () => Navigator.pop(context, false),
                              style: TextButton.styleFrom(
                                  backgroundColor: ColorConstant.gray600,
                                  fixedSize: Size(getHorizontalSize(136), 37),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  )),
                              child: Text(
                                "Cancel",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: getFontSize(
                                    18,
                                  ),
                                  fontFamily: 'DM Sans',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
