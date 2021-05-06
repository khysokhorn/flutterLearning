// ============================================== ||
//                    color                       ||
// ============================================== ||

import 'package:flutter/material.dart';

Color colorAppPrimaryColorBrown = _HexColor("#8F5F43");
Color colorAppBlack = _HexColor("#272422");
Color colorAppGray = _HexColor("#9D9EA3");
Color colorAppLightGray = _HexColor("#02010E");
Color colorAppWhite = _HexColor("#FFFFFF");

class _HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  _HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

// ============================================== ||
//                    dimension                   ||
// ============================================== ||

double primaryMargin = 10.0;
