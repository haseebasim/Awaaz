import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haseeb_s_application/core/app_export.dart';
import 'package:haseeb_s_application/features/login_screen/presentation/login_screen.dart';

class LaunchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.blue700,
        body: Container(
          decoration: BoxDecoration(
            color: ColorConstant.blue700,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                      top: getVerticalSize(
                        127,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: getVerticalSize(
                              125.51001,
                            ),
                            width: getHorizontalSize(
                              114,
                            ),
                            margin: EdgeInsets.only(
                              left: getHorizontalSize(
                                43,
                              ),
                              right: getHorizontalSize(
                                43,
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    width: getHorizontalSize(
                                      33.74,
                                    ),
                                    margin: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        10,
                                      ),
                                      top: getVerticalSize(
                                        54.36,
                                      ),
                                      right: getHorizontalSize(
                                        6.849991,
                                      ),
                                      bottom: getVerticalSize(
                                        54.360016,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                10,
                                              ),
                                            ),
                                            child: Container(
                                              height: getVerticalSize(
                                                0.02,
                                              ),
                                              width: getHorizontalSize(
                                                0.08,
                                              ),
                                              child: SvgPicture.asset(
                                                ImageConstant.imgVector,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              top: getVerticalSize(
                                                13.690002,
                                              ),
                                              right: getHorizontalSize(
                                                10,
                                              ),
                                            ),
                                            child: Container(
                                              height: getVerticalSize(
                                                0.16,
                                              ),
                                              width: getHorizontalSize(
                                                0.27,
                                              ),
                                              child: SvgPicture.asset(
                                                ImageConstant.imgVector1,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                25.86,
                                              ),
                                              top: getVerticalSize(
                                                1.8299866,
                                              ),
                                              right: getHorizontalSize(
                                                7.200012,
                                              ),
                                            ),
                                            child: Container(
                                              height: getVerticalSize(
                                                0.56,
                                              ),
                                              width: getHorizontalSize(
                                                0.68,
                                              ),
                                              child: SvgPicture.asset(
                                                ImageConstant.imgVector2,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    height: getVerticalSize(
                                      125.51,
                                    ),
                                    width: getHorizontalSize(
                                      114,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgGroup,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              107.48999,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Text(
                                  "AWAAZ",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: ColorConstant.whiteA700,
                                    fontSize: getFontSize(
                                      60,
                                    ),
                                    fontFamily: 'Aldrich',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Text(
                                "Learn. Practice. Speak",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: getFontSize(
                                    21,
                                  ),
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w400,
                                  height: 1.14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: getVerticalSize(
                              58,
                            ),
                            width: getHorizontalSize(
                              305,
                            ),
                            margin: EdgeInsets.only(
                              left: getHorizontalSize(
                                43,
                              ),
                              top: getVerticalSize(
                                70,
                              ),
                              right: getHorizontalSize(
                                42,
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()),
                                );
                              },
                              style: TextButton.styleFrom(
                                  backgroundColor: ColorConstant.whiteA700,
                                  fixedSize: Size(getHorizontalSize(305), 58),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  )),
                              child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Get Started",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: ColorConstant.blue700,
                                          fontSize: getFontSize(
                                            16,
                                          ),
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 3.00,
                                          // height: 1.50,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Container(
                                          height: getSize(
                                            20,
                                          ),
                                          width: getSize(
                                            20,
                                          ),
                                          child: SvgPicture.asset(
                                            ImageConstant.imgAkariconsarro,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              107,
                            ),
                          ),
                          child: Container(
                            height: getVerticalSize(
                              182,
                            ),
                            width: getHorizontalSize(
                              390,
                            ),
                            child: SvgPicture.asset(
                              ImageConstant.imgVector43,
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
    );
  }
}
