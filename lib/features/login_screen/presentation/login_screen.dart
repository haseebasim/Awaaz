import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haseeb_s_application/core/app_export.dart';
import 'package:haseeb_s_application/features/dashboard_screen/presentation/dashboard_screen.dart';
import 'package:haseeb_s_application/provider/auth.dart';
import 'package:haseeb_s_application/provider/patients.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  Map<String, String> _authData = {
    'email': '',
    'password': '',
  };

  var _isloading = false;

  void _showErrorDialog(String message) {
    setState(() {
      _isloading = false;
    });
    showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
              title: Text('An error occured'),
              content: Text(message),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                    child: Text('ok'))
              ],
            ));
  }

  void _submit() async {
    setState(() {
      _isloading = true;
    });
    if (!_formKey.currentState!.validate()) {
      setState(() {
        _isloading = false;
      });
      return;
    }

    _formKey.currentState?.save();
    try {
      await Provider.of<Auth>(context, listen: false)
          .login(_authData['email']!, _authData['password']!);
      setState(() {
        _isloading = false;
      });
      Navigator.pushReplacementNamed(context, DashboardScreen.routeName);
    } on HttpException catch (error) {
      print(error);
      var errorMessage = 'Authentication Failed';
      if (error.toString().contains('EMAIL_EXISTS')) {
        errorMessage = 'This email address exists or is in use already';
      }
      _showErrorDialog(errorMessage);
    } catch (error) {
      print(error);
      var errorMessage = 'Could not authenticate';
      _showErrorDialog(errorMessage);
    }
  }

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
              child: Form(
                key: _formKey,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                              34.31,
                                            ),
                                            bottom: 20,
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
                                onSaved: (value) {
                                  _authData['email'] = value!;
                                },
                                validator: (value) {
                                  if (value!.isEmpty || !value.contains('@')) {
                                    return 'Invalid Email';
                                  }
                                  return null;
                                },
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
                                validator: (value) {
                                  if (value!.isEmpty || value.length < 6) {
                                    return 'Password is invalid';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  _authData['password'] = value!;
                                },
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
                        onPressed: _submit,
                        style: TextButton.styleFrom(
                            backgroundColor: ColorConstant.yellow900,
                            fixedSize: Size(getHorizontalSize(305), 58),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            )),
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            _isloading
                                ? Center(
                                    child: CircularProgressIndicator(),
                                  )
                                : Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
      ),
    );
  }
}
