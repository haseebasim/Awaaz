import 'dart:ui';

import 'package:haseeb_s_application/features/new_profile_screen/presentation/new_profile_screen.dart';
import 'package:haseeb_s_application/features/patient_profile_screen/presentation/patient_profile_screen.dart';
import 'package:haseeb_s_application/provider/patients.dart';
import 'package:provider/provider.dart';

import './widgets/patient_list_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haseeb_s_application/core/app_export.dart';

class PatientListScreen extends StatelessWidget {
  static const routeName = '/patientList';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: ColorConstant.blue700,
          title: Text(
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
        ),
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: Container(
            decoration: BoxDecoration(
              color: ColorConstant.whiteA700,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
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
                        child: IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () => Navigator.pushNamed(
                                context, NewProfileScreen.routeName),
                            iconSize: getHorizontalSize(24),
                            icon: Icon(
                              Icons.add,
                              color: ColorConstant.blue701,
                            ))),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Padding(
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
                      child: Consumer<Patients>(
                        builder: (context, value, child) =>
                            SingleChildScrollView(
                          child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: value.PatientList.length,
                            itemBuilder: (context, index) {
                              print(index);
                              return InkWell(
                                  onTap: () => Navigator.pushNamed(
                                      context, PatientProfileScreen.routeName, arguments: value.PatientList[index].id),
                                  child: PatientListItemWidget(
                                    patientDetails: value.PatientList[index],
                                  ));
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
