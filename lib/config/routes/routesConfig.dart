import 'package:flutter/cupertino.dart';
import 'package:pshar_khmer/config/routes/routes.dart';
import 'package:pshar_khmer/modules/home/HomePage.dart';

Map<String, Widget Function(BuildContext)> routesConfig =
    <String, WidgetBuilder>{
  routeHome: (context) => HomePage(),
};
