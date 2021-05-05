import 'package:flutter/material.dart';
import 'package:pshar_khmer/constants/app_constants.dart';

var lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: colorAppWhite,
  backgroundColor: colorAppWhite,
  appBarTheme: AppBarTheme(backgroundColor: Colors.transparent, elevation: 0),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all(TextStyle(
        color: colorAppPrimaryColorBrown,
      )),
      padding: MaterialStateProperty.all(EdgeInsets.all(3)),
      backgroundColor: MaterialStateProperty.all(
        colorAppPrimaryColorBrown,
      ),
    ),
  ),
  iconTheme: IconThemeData(
    color: colorAppPrimaryColorBrown,
  ),
  primaryIconTheme: IconThemeData(color: colorAppPrimaryColorBrown, size: 24),
  accentIconTheme: IconThemeData(
    color: colorAppPrimaryColorBrown,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.shifting,
    unselectedItemColor: colorAppGray,
    selectedItemColor: colorAppPrimaryColorBrown,
    showUnselectedLabels: false,
  ),
);
