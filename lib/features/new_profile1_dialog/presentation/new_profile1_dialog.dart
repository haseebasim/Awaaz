import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haseeb_s_application/core/app_export.dart';

class NewProfile1Dialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            decoration: BoxDecoration(
              color: ColorConstant.whiteA700,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  10,
                ),
              ),
              boxShadow: [
                BoxShadow(
                  color: ColorConstant.gray60040,
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
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(
                    left: getHorizontalSize(
                      23,
                    ),
                    top: getVerticalSize(
                      21,
                    ),
                    right: getHorizontalSize(
                      22,
                    ),
                    bottom: getVerticalSize(
                      22,
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        10,
                      ),
                    ),
                    border: Border.all(
                      color: ColorConstant.gray600,
                      width: getHorizontalSize(
                        1,
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            24,
                          ),
                          top: getVerticalSize(
                            54,
                          ),
                          right: getHorizontalSize(
                            24,
                          ),
                        ),
                        child: Container(
                          height: getVerticalSize(
                            28.5,
                          ),
                          width: getHorizontalSize(
                            38,
                          ),
                          child: SvgPicture.asset(
                            ImageConstant.imgGroup2,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: getHorizontalSize(
                            24,
                          ),
                          top: getVerticalSize(
                            16.5,
                          ),
                          right: getHorizontalSize(
                            24,
                          ),
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: <InlineSpan>[
                              TextSpan(
                                text: 'Drop your image here, or',
                                style: TextStyle(
                                  color: ColorConstant.gray600,
                                  fontSize: getFontSize(
                                    16,
                                  ),
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: 'browse',
                                style: TextStyle(
                                  color: ColorConstant.blue700,
                                  fontSize: getFontSize(
                                    16,
                                  ),
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            24,
                          ),
                          top: getVerticalSize(
                            2,
                          ),
                          right: getHorizontalSize(
                            24,
                          ),
                          bottom: getVerticalSize(
                            20,
                          ),
                        ),
                        child: Text(
                          "supported png, jpg, jpeg",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ColorConstant.gray401,
                            fontSize: getFontSize(
                              14,
                            ),
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w400,
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
      ),
    );
  }
}
