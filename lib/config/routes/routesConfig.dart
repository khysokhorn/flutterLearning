import 'package:flutter/cupertino.dart';
import 'package:pshar_khmer/config/routes/routes.dart';
import 'package:pshar_khmer/modules/home/HomePage.dart';
import 'package:pshar_khmer/modules/home/detailPage.dart';

Map<String, Widget Function(BuildContext)> routesConfig =
    <String, WidgetBuilder>{
  routeHome: (context) => HomePage(),
  detailPage: (context) => DetailPage()
};
