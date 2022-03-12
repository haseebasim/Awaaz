import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haseeb_s_application/core/app_export.dart';

class ChatScreen extends StatelessWidget {
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
                                  22,
                                ),
                                bottom: getVerticalSize(
                                  18,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    23,
                                  ),
                                  right: getHorizontalSize(
                                    197,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: getVerticalSize(
                                          14,
                                        ),
                                        bottom: getVerticalSize(
                                          17,
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
                                          ImageConstant.imgVector123,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          34,
                                        ),
                                        top: getVerticalSize(
                                          1,
                                        ),
                                        bottom: getVerticalSize(
                                          3,
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          getSize(
                                            18.0,
                                          ),
                                        ),
                                        child: Image.asset(
                                          ImageConstant.imgUnsplashohkelo1,
                                          height: getSize(
                                            36,
                                          ),
                                          width: getSize(
                                            36,
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          10,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  3,
                                                ),
                                              ),
                                              child: Text(
                                                "John Doe",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  fontSize: getFontSize(
                                                    18,
                                                  ),
                                                  fontFamily: 'DM Sans',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: getVerticalSize(
                                                2,
                                              ),
                                              right: getHorizontalSize(
                                                10,
                                              ),
                                            ),
                                            child: Text(
                                              "Online",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: ColorConstant.whiteA700,
                                                fontSize: getFontSize(
                                                  10,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                        ],
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
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: getHorizontalSize(
                          20,
                        ),
                        top: getVerticalSize(
                          11,
                        ),
                        right: getHorizontalSize(
                          20,
                        ),
                      ),
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          4,
                        ),
                        right: getHorizontalSize(
                          30,
                        ),
                        bottom: getVerticalSize(
                          3,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.gray200,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            20,
                          ),
                        ),
                      ),
                      child: Text(
                        "24 October, Sunday",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: ColorConstant.gray800,
                          fontSize: getFontSize(
                            10,
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
                        left: getHorizontalSize(
                          20,
                        ),
                        top: getVerticalSize(
                          30,
                        ),
                        right: getHorizontalSize(
                          20,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: getHorizontalSize(
                              293,
                            ),
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                20,
                              ),
                              top: getVerticalSize(
                                10,
                              ),
                              bottom: getVerticalSize(
                                10,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray200,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                  getHorizontalSize(
                                    15,
                                  ),
                                ),
                                topRight: Radius.circular(
                                  getHorizontalSize(
                                    15,
                                  ),
                                ),
                                bottomLeft: Radius.circular(
                                  getHorizontalSize(
                                    5,
                                  ),
                                ),
                                bottomRight: Radius.circular(
                                  getHorizontalSize(
                                    15,
                                  ),
                                ),
                              ),
                            ),
                            child: Text(
                              "This is a sample big message with a\nlonger text paragraph",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: ColorConstant.gray601,
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
                              top: getVerticalSize(
                                6,
                              ),
                              right: getHorizontalSize(
                                10,
                              ),
                              bottom: getVerticalSize(
                                1,
                              ),
                            ),
                            child: Text(
                              "10:30 AM",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: ColorConstant.gray601,
                                fontSize: getFontSize(
                                  8,
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
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          21,
                        ),
                        top: getVerticalSize(
                          20,
                        ),
                        right: getHorizontalSize(
                          21,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: getHorizontalSize(
                                293,
                              ),
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  10,
                                ),
                                right: getHorizontalSize(
                                  20,
                                ),
                                bottom: getVerticalSize(
                                  10,
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.blue700,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(
                                    getHorizontalSize(
                                      15,
                                    ),
                                  ),
                                  topRight: Radius.circular(
                                    getHorizontalSize(
                                      15,
                                    ),
                                  ),
                                  bottomLeft: Radius.circular(
                                    getHorizontalSize(
                                      15,
                                    ),
                                  ),
                                  bottomRight: Radius.circular(
                                    getHorizontalSize(
                                      5,
                                    ),
                                  ),
                                ),
                              ),
                              child: Text(
                                "This is a sample big message with a\nlonger text paragraph",
                                maxLines: null,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: getFontSize(
                                    16,
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
                                10,
                              ),
                              top: getVerticalSize(
                                6,
                              ),
                              bottom: getVerticalSize(
                                1,
                              ),
                            ),
                            child: Text(
                              "10:30 AM",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: ColorConstant.gray601,
                                fontSize: getFontSize(
                                  8,
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
                          20,
                        ),
                        top: getVerticalSize(
                          20,
                        ),
                        right: getHorizontalSize(
                          20,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: getHorizontalSize(
                              293,
                            ),
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                20,
                              ),
                              top: getVerticalSize(
                                10,
                              ),
                              bottom: getVerticalSize(
                                10,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray200,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                  getHorizontalSize(
                                    15,
                                  ),
                                ),
                                topRight: Radius.circular(
                                  getHorizontalSize(
                                    15,
                                  ),
                                ),
                                bottomLeft: Radius.circular(
                                  getHorizontalSize(
                                    5,
                                  ),
                                ),
                                bottomRight: Radius.circular(
                                  getHorizontalSize(
                                    15,
                                  ),
                                ),
                              ),
                            ),
                            child: Text(
                              "This is a sample message for a chat",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: ColorConstant.gray601,
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
                              top: getVerticalSize(
                                6,
                              ),
                              right: getHorizontalSize(
                                10,
                              ),
                              bottom: getVerticalSize(
                                1,
                              ),
                            ),
                            child: Text(
                              "10:30 AM",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: ColorConstant.gray601,
                                fontSize: getFontSize(
                                  8,
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
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          21,
                        ),
                        top: getVerticalSize(
                          20,
                        ),
                        right: getHorizontalSize(
                          21,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: getVerticalSize(
                                41,
                              ),
                              width: getHorizontalSize(
                                277,
                              ),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.all(0),
                                color: ColorConstant.blue700,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                      getHorizontalSize(
                                        15,
                                      ),
                                    ),
                                    topRight: Radius.circular(
                                      getHorizontalSize(
                                        15,
                                      ),
                                    ),
                                    bottomLeft: Radius.circular(
                                      getHorizontalSize(
                                        15,
                                      ),
                                    ),
                                    bottomRight: Radius.circular(
                                      getHorizontalSize(
                                        5,
                                      ),
                                    ),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            20,
                                          ),
                                          top: getVerticalSize(
                                            10,
                                          ),
                                          right: getHorizontalSize(
                                            20,
                                          ),
                                          bottom: getVerticalSize(
                                            10,
                                          ),
                                        ),
                                        child: Container(
                                          height: getVerticalSize(
                                            21,
                                          ),
                                          width: getHorizontalSize(
                                            237,
                                          ),
                                          child: SvgPicture.asset(
                                            ImageConstant.imgAudio1,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                10,
                              ),
                              top: getVerticalSize(
                                6,
                              ),
                              bottom: getVerticalSize(
                                1,
                              ),
                            ),
                            child: Text(
                              "10:30 AM",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: ColorConstant.gray601,
                                fontSize: getFontSize(
                                  8,
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
                          20,
                        ),
                        top: getVerticalSize(
                          20,
                        ),
                        right: getHorizontalSize(
                          20,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: getHorizontalSize(
                              293,
                            ),
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                20,
                              ),
                              top: getVerticalSize(
                                10,
                              ),
                              bottom: getVerticalSize(
                                10,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray200,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                  getHorizontalSize(
                                    15,
                                  ),
                                ),
                                topRight: Radius.circular(
                                  getHorizontalSize(
                                    15,
                                  ),
                                ),
                                bottomLeft: Radius.circular(
                                  getHorizontalSize(
                                    5,
                                  ),
                                ),
                                bottomRight: Radius.circular(
                                  getHorizontalSize(
                                    15,
                                  ),
                                ),
                              ),
                            ),
                            child: Text(
                              "This is a sample message for a chat",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: ColorConstant.gray601,
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
                              top: getVerticalSize(
                                6,
                              ),
                              right: getHorizontalSize(
                                10,
                              ),
                              bottom: getVerticalSize(
                                1,
                              ),
                            ),
                            child: Text(
                              "10:30 AM",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: ColorConstant.gray601,
                                fontSize: getFontSize(
                                  8,
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
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          21,
                        ),
                        top: getVerticalSize(
                          20,
                        ),
                        right: getHorizontalSize(
                          21,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: getHorizontalSize(
                                293,
                              ),
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  10,
                                ),
                                right: getHorizontalSize(
                                  20,
                                ),
                                bottom: getVerticalSize(
                                  10,
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.blue700,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(
                                    getHorizontalSize(
                                      15,
                                    ),
                                  ),
                                  topRight: Radius.circular(
                                    getHorizontalSize(
                                      15,
                                    ),
                                  ),
                                  bottomLeft: Radius.circular(
                                    getHorizontalSize(
                                      15,
                                    ),
                                  ),
                                  bottomRight: Radius.circular(
                                    getHorizontalSize(
                                      5,
                                    ),
                                  ),
                                ),
                              ),
                              child: Text(
                                "This is a sample message for a chat",
                                maxLines: null,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: getFontSize(
                                    16,
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
                                10,
                              ),
                              top: getVerticalSize(
                                6,
                              ),
                              bottom: getVerticalSize(
                                1,
                              ),
                            ),
                            child: Text(
                              "10:30 AM",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: ColorConstant.gray601,
                                fontSize: getFontSize(
                                  8,
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
                          20,
                        ),
                        top: getVerticalSize(
                          20,
                        ),
                        right: getHorizontalSize(
                          20,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: getHorizontalSize(
                              293,
                            ),
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                20,
                              ),
                              top: getVerticalSize(
                                10,
                              ),
                              bottom: getVerticalSize(
                                10,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray200,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                  getHorizontalSize(
                                    15,
                                  ),
                                ),
                                topRight: Radius.circular(
                                  getHorizontalSize(
                                    15,
                                  ),
                                ),
                                bottomLeft: Radius.circular(
                                  getHorizontalSize(
                                    5,
                                  ),
                                ),
                                bottomRight: Radius.circular(
                                  getHorizontalSize(
                                    15,
                                  ),
                                ),
                              ),
                            ),
                            child: Text(
                              "This is a sample message for a chat",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: ColorConstant.gray601,
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
                              top: getVerticalSize(
                                6,
                              ),
                              right: getHorizontalSize(
                                10,
                              ),
                              bottom: getVerticalSize(
                                1,
                              ),
                            ),
                            child: Text(
                              "10:30 AM",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: ColorConstant.gray601,
                                fontSize: getFontSize(
                                  8,
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
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          20,
                        ),
                        top: getVerticalSize(
                          61,
                        ),
                        right: getHorizontalSize(
                          20,
                        ),
                        bottom: getVerticalSize(
                          34,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            height: getVerticalSize(
                              40,
                            ),
                            width: getHorizontalSize(
                              296.91,
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Message...',
                                hintStyle: TextStyle(
                                  fontSize: getFontSize(
                                    16.0,
                                  ),
                                  color: ColorConstant.gray601,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      10,
                                    ),
                                  ),
                                  borderSide: BorderSide.none,
                                ),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      10.42,
                                    ),
                                    right: getHorizontalSize(
                                      10,
                                    ),
                                  ),
                                  child: Container(
                                    height: getSize(
                                      18,
                                    ),
                                    width: getSize(
                                      18.75,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgAttach,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                prefixIconConstraints: BoxConstraints(
                                  minWidth: getSize(
                                    18,
                                  ),
                                  minHeight: getSize(
                                    18,
                                  ),
                                ),
                                suffixIcon: Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      10,
                                    ),
                                    right: getHorizontalSize(
                                      10.420013,
                                    ),
                                  ),
                                  child: Container(
                                    height: getSize(
                                      18,
                                    ),
                                    width: getSize(
                                      18.75,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgMic,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                suffixIconConstraints: BoxConstraints(
                                  minWidth: getSize(
                                    18,
                                  ),
                                  minHeight: getSize(
                                    18,
                                  ),
                                ),
                                filled: true,
                                fillColor: ColorConstant.gray200,
                                isDense: true,
                                contentPadding: EdgeInsets.only(
                                  top: getVerticalSize(
                                    12.375,
                                  ),
                                  bottom: getVerticalSize(
                                    12.375,
                                  ),
                                ),
                              ),
                              style: TextStyle(
                                color: ColorConstant.gray601,
                                fontSize: getFontSize(
                                  16.0,
                                ),
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                10.419983,
                              ),
                            ),
                            child: Container(
                              height: getVerticalSize(
                                40,
                              ),
                              width: getHorizontalSize(
                                41.67,
                              ),
                              child: SvgPicture.asset(
                                ImageConstant.imgSendbutton,
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
          ),
        ),
      ),
    );
  }
}
