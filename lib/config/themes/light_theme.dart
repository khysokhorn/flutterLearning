import 'package:flutter/material.dart';
import 'package:pshar_khmer/constants/app_constants.dart';

var lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: colorAppWhite,
  backgroundColor: colorAppWhite,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: colorAppBlack,
      fontSize: 8,
    ),
  ),
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
  accentIconTheme: IconThemeData(
    color: colorAppPrimaryColorBrown,
  ),
  primaryIconTheme: IconThemeData(
    color: colorAppPrimaryColorBrown,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.shifting,
    unselectedItemColor: colorAppGray,
    selectedItemColor: colorAppPrimaryColorBrown,
    showUnselectedLabels: false,
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(
        colorAppPrimaryColorBrown,
      ),
      textStyle: MaterialStateProperty.all(
        TextStyle(
          color: Colors.red,
        ),
      ),
      side: MaterialStateProperty.all(
        BorderSide(
          color: colorAppPrimaryColorBrown,
        ),
      ),
    ),
  ),
  tabBarTheme: TabBarTheme(
    unselectedLabelStyle: TextStyle(color: colorAppGray),
    labelColor: colorAppPrimaryColorBrown,
    unselectedLabelColor: colorAppGray,
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(
          style: BorderStyle.solid,
          color: colorAppPrimaryColorBrown,
          width: 1.5),
    ),
  ),
);

var titleStyle = TextStyle(fontWeight: FontWeight.bold);
