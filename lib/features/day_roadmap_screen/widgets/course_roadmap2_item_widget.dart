import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:haseeb_s_application/features/words_screen/words_screen.dart';
import '../../../core/app_export.dart';

// ignore: must_be_immutable
class CourseRoadmap2ItemWidget extends StatefulWidget {
  final String _id;
  final String title;
  final int index;
  final List<dynamic> words;
  final bool completed;

  CourseRoadmap2ItemWidget(
      this._id, this.title, this.words, this.index, this.completed);

  @override
  State<CourseRoadmap2ItemWidget> createState() =>
      _CourseRoadmap2ItemWidgetState();
}

class _CourseRoadmap2ItemWidgetState extends State<CourseRoadmap2ItemWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: getHorizontalSize(
          22.00,
        ),
        top: getVerticalSize(
          64.00,
        ),
        right: getHorizontalSize(
          22.00,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: getSize(
              20.00,
            ),
            width: getSize(
              20.00,
            ),
            decoration: BoxDecoration(
                color: widget.completed
                    ? ColorConstant.amber700
                    : ColorConstant.gray400,
                borderRadius: BorderRadius.circular(20)),
            child: Icon(
              Icons.check,
              color: Colors.white,
              size: 10,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, WordsScreen.routeName,
                  arguments: widget._id);
            },
            child: Container(
              margin: EdgeInsets.only(
                  left: getHorizontalSize(
                    15.00,
                  ),
                  right: getHorizontalSize(15)),
              width: getHorizontalSize(250),
              decoration: BoxDecoration(
                color: widget.completed
                    ? ColorConstant.amber700
                    : ColorConstant.gray200,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    10.00,
                  ),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        46.00,
                      ),
                      top: getVerticalSize(
                        16.00,
                      ),
                      right: getHorizontalSize(
                        46.00,
                      ),
                    ),
                    child: Text(
                      "Day 0${widget.index + 1}",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: widget.completed
                            ? ColorConstant.whiteA700
                            : ColorConstant.gray600,
                        fontSize: getFontSize(
                          18,
                        ),
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        46.00,
                      ),
                      top: getVerticalSize(
                        6.00,
                      ),
                      right: getHorizontalSize(
                        46.00,
                      ),
                      bottom: getVerticalSize(
                        14.00,
                      ),
                    ),
                    child: Text(
                      "${widget.title}",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: widget.completed
                            ? ColorConstant.whiteA700
                            : ColorConstant.gray600,
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
        ],
      ),
    );
  }
}
