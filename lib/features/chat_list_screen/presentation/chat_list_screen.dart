import './widgets/chat_list_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haseeb_s_application/core/app_export.dart';

class ChatListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: ColorConstant.blue700,
          title: Text(
            "Chat",
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
                  // Align(
                  //   alignment: Alignment.centerLeft,
                  //   child: Container(
                  //     width: double.infinity,
                  //     decoration: BoxDecoration(
                  //       color: ColorConstant.blue700,
                  //       boxShadow: [
                  //         BoxShadow(
                  //           color: ColorConstant.black90040,
                  //           spreadRadius: getHorizontalSize(
                  //             2,
                  //           ),
                  //           blurRadius: getHorizontalSize(
                  //             2,
                  //           ),
                  //           offset: Offset(
                  //             0,
                  //             2,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //     child: Column(
                  //       mainAxisSize: MainAxisSize.min,
                  //       crossAxisAlignment: CrossAxisAlignment.center,
                  //       mainAxisAlignment: MainAxisAlignment.start,
                  //       children: [
                  //         Align(
                  //           alignment: Alignment.centerLeft,
                  //           child: Container(
                  //             width: size.width,
                  //             margin: EdgeInsets.only(
                  //               top: getVerticalSize(
                  //                 26,
                  //               ),
                  //               bottom: getVerticalSize(
                  //                 25,
                  //               ),
                  //             ),
                  //             child: Padding(
                  //               padding: EdgeInsets.only(
                  //                 left: getHorizontalSize(
                  //                   22,
                  //                 ),
                  //                 right: getHorizontalSize(
                  //                   16,
                  //                 ),
                  //               ),
                  //               child: Row(
                  //                 mainAxisAlignment:
                  //                     MainAxisAlignment.spaceBetween,
                  //                 crossAxisAlignment: CrossAxisAlignment.center,
                  //                 mainAxisSize: MainAxisSize.max,
                  //                 children: [
                  //                   Padding(
                  //                     padding: EdgeInsets.only(
                  //                       top: getVerticalSize(
                  //                         10,
                  //                       ),
                  //                       bottom: getVerticalSize(
                  //                         10,
                  //                       ),
                  //                     ),
                  //                     child: Container(
                  //                       height: getVerticalSize(
                  //                         9,
                  //                       ),
                  //                       width: getHorizontalSize(
                  //                         7,
                  //                       ),
                  //                       child: SvgPicture.asset(
                  //                         ImageConstant.imgVector124,
                  //                         fit: BoxFit.fill,
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Text(
                  //                     "Chats",
                  //                     overflow: TextOverflow.ellipsis,
                  //                     textAlign: TextAlign.center,
                  //                     style: TextStyle(
                  //                       color: ColorConstant.whiteA700,
                  //                       fontSize: getFontSize(
                  //                         22,
                  //                       ),
                  //                       fontFamily: 'DM Sans',
                  //                       fontWeight: FontWeight.w400,
                  //                     ),
                  //                   ),
                  //                   Padding(
                  //                     padding: EdgeInsets.only(
                  //                       bottom: getVerticalSize(
                  //                         1,
                  //                       ),
                  //                     ),
                  //                     child: ClipRRect(
                  //                       borderRadius: BorderRadius.circular(
                  //                         getSize(
                  //                           14.0,
                  //                         ),
                  //                       ),
                  //                       child: Image.asset(
                  //                         ImageConstant.imgImage72,
                  //                         height: getSize(
                  //                           28,
                  //                         ),
                  //                         width: getSize(
                  //                           28,
                  //                         ),
                  //                         fit: BoxFit.fill,
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        21,
                      ),
                      top: getVerticalSize(
                        20,
                      ),
                      right: getHorizontalSize(
                        16,
                      ),
                    ),
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return ChatListItemWidget();
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        21,
                      ),
                      top: getVerticalSize(
                        54,
                      ),
                      right: getHorizontalSize(
                        21,
                      ),
                    ),
                    child: Text(
                      "You’ve reached the end",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: ColorConstant.gray500,
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
                        21,
                      ),
                      top: getVerticalSize(
                        260,
                      ),
                      right: getHorizontalSize(
                        21,
                      ),
                      bottom: getVerticalSize(
                        21,
                      ),
                    ),
                    child: Container(
                      height: getVerticalSize(
                        61,
                      ),
                      width: getHorizontalSize(
                        56,
                      ),
                      child: SvgPicture.asset(
                        ImageConstant.imgNewchatbutton,
                        fit: BoxFit.fill,
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
