import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9007f = fromHex('#7f000000');

  static Color green200 = fromHex('#91d9a3');

  static Color red700 = fromHex('#c4403b');

  static Color gray50040 = fromHex('#40a1a1a1');

  static Color black90040 = fromHex('#40000000');

  static Color yellow900 = fromHex('#FF9901');

  static Color redA700 = fromHex('#ff0000');

  static Color gray600 = fromHex('#787878');

  static Color gray501 = fromHex('#969696');

  static Color gray601 = fromHex('#828282');

  static Color gray400 = fromHex('#c9c9c9');

  static Color gray401 = fromHex('#c2c2c2');

  static Color gray500 = fromHex('#9e9e9e');

  static Color blue700 = fromHex('#2884C7');

  static Color gray60040 = fromHex('#40808080');

  static Color blue701 = fromHex('#3b8ac2');

  static Color gray800 = fromHex('#4f4f4f');

  static Color amber700 = fromHex('#FCA311');

  static Color bluegray100 = fromHex('#d6d6d6');

  static Color amber300 = fromHex('#f5cf61');

  static Color gray200 = fromHex('#ededed');

  static Color gray300 = fromHex('#dbdbdb');

  static Color indigo400 = fromHex('#528fc7');

  static Color gray40041 = fromHex('#40b5b5b5');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray40040 = fromHex('#40bdbdbd');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
