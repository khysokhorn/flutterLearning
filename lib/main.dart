import 'package:flutter/material.dart';
import 'package:pshar_khmer/config/routes/routes.dart';
import 'package:pshar_khmer/config/themes/light_theme.dart';

import 'config/routes/routesConfig.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      initialRoute: routeHome,
      routes: routesConfig,
      home: Scaffold(),
    ),
  );
}
