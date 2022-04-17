import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haseeb_s_application/core/app_export.dart';
import 'package:haseeb_s_application/features/dashboard_screen/presentation/dashboard_screen.dart';

class LoginScreen extends StatelessWidget {
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
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: ColorConstant.blue700,
                              borderRadius: BorderRadius.vertical(
                                  bottom: Radius.elliptical(350, 120))),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: getVerticalSize(
                                325.14,
                              ),
                              width: size.width,
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      147,
                                    ),
                                    top: getVerticalSize(
                                      30.14,
                                    ),
                                    right: getHorizontalSize(
                                      147,
                                    ),
                                    bottom: getVerticalSize(
                                      30.140015,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          height: getVerticalSize(
                                            105.69,
                                          ),
                                          width: getHorizontalSize(
                                            96,
                                          ),
                                          child: SvgPicture.asset(
                                            ImageConstant.imgGroup3,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            21,
                                          ),
                                          top: getVerticalSize(
                                            84.31,
                                          ),
                                          right: getHorizontalSize(
                                            20,
                                          ),
                                        ),
                                        child: Text(
                                          "Login",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: getFontSize(
                                              22,
                                            ),
                                            fontFamily: 'DM Sans',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              21,
                            ),
                            top: getVerticalSize(
                              54.859985,
                            ),
                            right: getHorizontalSize(
                              20,
                            ),
                          ),
                          child: Container(
                            height: getVerticalSize(
                              60,
                            ),
                            width: getHorizontalSize(
                              349,
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Email Address',
                                hintStyle: TextStyle(
                                  fontSize: getFontSize(
                                    16.0,
                                  ),
                                  color: ColorConstant.gray600,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      20,
                                    ),
                                  ),
                                  borderSide: BorderSide(
                                    color: ColorConstant.bluegray100,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      20,
                                    ),
                                  ),
                                  borderSide: BorderSide(
                                    color: ColorConstant.bluegray100,
                                  ),
                                ),
                                isDense: true,
                                contentPadding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    30,
                                  ),
                                  top: getVerticalSize(
                                    16.375,
                                  ),
                                  bottom: getVerticalSize(
                                    16.375,
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
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              21,
                            ),
                            top: getVerticalSize(
                              22,
                            ),
                            right: getHorizontalSize(
                              20,
                            ),
                          ),
                          child: Container(
                            height: getVerticalSize(
                              60,
                            ),
                            width: getHorizontalSize(
                              349,
                            ),
                            child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                  fontSize: getFontSize(
                                    16.0,
                                  ),
                                  color: ColorConstant.gray600,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      20,
                                    ),
                                  ),
                                  borderSide: BorderSide(
                                    color: ColorConstant.bluegray100,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      20,
                                    ),
                                  ),
                                  borderSide: BorderSide(
                                    color: ColorConstant.bluegray100,
                                  ),
                                ),
                                isDense: true,
                                contentPadding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    30,
                                  ),
                                  top: getVerticalSize(
                                    16.375,
                                  ),
                                  bottom: getVerticalSize(
                                    16.375,
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
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      58,
                    ),
                    width: getHorizontalSize(
                      349,
                    ),
                    margin: EdgeInsets.only(
                      left: getHorizontalSize(
                        21,
                      ),
                      top: getVerticalSize(
                        57,
                      ),
                      right: getHorizontalSize(
                        20,
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DashboardScreen()),
                        );
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: ColorConstant.yellow900,
                          fixedSize: Size(getHorizontalSize(305), 58),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          )),
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Log In",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
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
                                    color: ColorConstant.whiteA700,
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
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        21,
                      ),
                      top: getVerticalSize(
                        146,
                      ),
                      right: getHorizontalSize(
                        21,
                      ),
                      bottom: getVerticalSize(
                        20,
                      ),
                    ),
                    child: Text(
                      "Forgot Password",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ColorConstant.yellow900,
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
        ),
      ),
    );
  }
}
