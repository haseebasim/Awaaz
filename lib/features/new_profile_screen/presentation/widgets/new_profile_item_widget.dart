import 'package:flutter/material.dart';
import 'package:haseeb_s_application/core/app_export.dart';

class NewProfileItemWidget extends StatefulWidget {
  String gender;

  NewProfileItemWidget({Key? key, required this.gender}) : super(key: key);
  @override
  State<NewProfileItemWidget> createState() => _NewProfileItemWidgetState();
}

class _NewProfileItemWidgetState extends State<NewProfileItemWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        "${widget.gender[0].toUpperCase()}${widget.gender.substring(1).toLowerCase()}",
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.left,
        style: TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w400,
        ),
      ),
      leading: Radio(
        activeColor: ColorConstant.amber700,
        value: 'female',
        groupValue: widget.gender,
        toggleable: true,
        onChanged: (String? value) {
          setState(() {
            widget.gender = value!;
          });
        },
      ),
    );
  }
}
