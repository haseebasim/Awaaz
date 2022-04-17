import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haseeb_s_application/core/app_export.dart';
import 'package:haseeb_s_application/features/chat_screen/presentation/chat_screen.dart';

class ChatListItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>ChatScreen())),
      child: Padding(
        padding: EdgeInsets.only(
          top: getVerticalSize(
            21.5,
          ),
          bottom: getVerticalSize(
            21.5,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: getHorizontalSize(
                193.69,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      getSize(
                        21.0,
                      ),
                    ),
                    child: Image.asset(
                      ImageConstant.imgUnsplasheqftez,
                      height: getVerticalSize(
                        42,
                      ),
                      width: getHorizontalSize(
                        42.15,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      36.05,
                    ),
                    margin: EdgeInsets.only(
                      left: getHorizontalSize(
                        10.540001,
                      ),
                      top: getVerticalSize(
                        3.100006,
                      ),
                      bottom: getVerticalSize(
                        2.8499908,
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      21.07,
                                    ),
                                    right: getHorizontalSize(
                                      21.07,
                                    ),
                                  ),
                                  child: Text(
                                    "Craig",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: ColorConstant.gray601,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    bottom: getVerticalSize(
                                      0.000015258789,
                                    ),
                                  ),
                                  child: Text(
                                    "This is a sample message",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: ColorConstant.gray500,
                                      fontSize: getFontSize(
                                        12,
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
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                2.149994,
                              ),
                              right: getHorizontalSize(
                                10,
                              ),
                              bottom: getVerticalSize(
                                10,
                              ),
                            ),
                            child: Container(
                              height: getVerticalSize(
                                15.75,
                              ),
                              width: getHorizontalSize(
                                15.81,
                              ),
                              child: SvgPicture.asset(
                                ImageConstant.imgPin,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  119.20999,
                ),
                top: getVerticalSize(
                  7.300003,
                ),
                right: getHorizontalSize(
                  0.1000061,
                ),
                bottom: getVerticalSize(
                  22.699997,
                ),
              ),
              child: Text(
                "10:30 AM",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: ColorConstant.gray601,
                  fontSize: getFontSize(
                    9,
                  ),
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
