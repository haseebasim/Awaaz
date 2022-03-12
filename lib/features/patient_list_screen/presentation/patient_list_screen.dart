import './widgets/patient_list_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haseeb_s_application/core/app_export.dart';

class PatientListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: ColorConstant.whiteA700,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: ColorConstant.blue700,
                        boxShadow: [
                          BoxShadow(
                            color: ColorConstant.black90040,
                            spreadRadius: getHorizontalSize(
                              2,
                            ),
                            blurRadius: getHorizontalSize(
                              2,
                            ),
                            offset: Offset(
                              0,
                              2,
                            ),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: size.width,
                              margin: EdgeInsets.only(
                                top: getVerticalSize(
                                  26,
                                ),
                                bottom: getVerticalSize(
                                  25,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    23,
                                  ),
                                  right: getHorizontalSize(
                                    21,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: getVerticalSize(
                                          9,
                                        ),
                                        bottom: getVerticalSize(
                                          11,
                                        ),
                                      ),
                                      child: Container(
                                        height: getVerticalSize(
                                          9,
                                        ),
                                        width: getHorizontalSize(
                                          7,
                                        ),
                                        child: SvgPicture.asset(
                                          ImageConstant.imgVector12,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Patient list",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(
                                          22,
                                        ),
                                        fontFamily: 'DM Sans',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        bottom: getVerticalSize(
                                          1,
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          getSize(
                                            14.0,
                                          ),
                                        ),
                                        child: Image.asset(
                                          ImageConstant.imgImage72,
                                          height: getSize(
                                            28,
                                          ),
                                          width: getSize(
                                            28,
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: getHorizontalSize(
                        20,
                      ),
                      top: getVerticalSize(
                        36,
                      ),
                      right: getHorizontalSize(
                        20,
                      ),
                    ),
                    decoration: BoxDecoration(
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              23,
                            ),
                            top: getVerticalSize(
                              17,
                            ),
                            bottom: getVerticalSize(
                              15,
                            ),
                          ),
                          child: Container(
                            height: getSize(
                              20,
                            ),
                            width: getSize(
                              20,
                            ),
                            child: SvgPicture.asset(
                              ImageConstant.imgAkariconssear,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              16,
                            ),
                            top: getVerticalSize(
                              16,
                            ),
                            right: getHorizontalSize(
                              136,
                            ),
                            bottom: getVerticalSize(
                              15,
                            ),
                          ),
                          child: Text(
                            "Search patient name",
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
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          325,
                        ),
                        top: getVerticalSize(
                          17,
                        ),
                        right: getHorizontalSize(
                          33,
                        ),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        height: getVerticalSize(
                          31,
                        ),
                        width: getHorizontalSize(
                          32,
                        ),
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            3,
                          ),
                          top: getVerticalSize(
                            5,
                          ),
                          right: getHorizontalSize(
                            4,
                          ),
                          bottom: getVerticalSize(
                            7,
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              4,
                            ),
                          ),
                          border: Border.all(
                            color: ColorConstant.gray400,
                            width: getHorizontalSize(
                              1,
                            ),
                          ),
                        ),
                        child: Text(
                          '+',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ColorConstant.blue701,
                            fontSize: getFontSize(
                              24,
                            ),
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        20,
                      ),
                      top: getVerticalSize(
                        22,
                      ),
                      right: getHorizontalSize(
                        20,
                      ),
                      bottom: getVerticalSize(
                        13,
                      ),
                    ),
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return PatientListItemWidget();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
