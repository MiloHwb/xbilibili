import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'route/routes.dart';

void main() {
  ///强制竖屏
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bilibili',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: Colors.pink[300],
      ),
      onGenerateRoute: generateRoutes,
      initialRoute: RouteName.splashPage,
    );
  }
}
