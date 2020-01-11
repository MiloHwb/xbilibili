import 'package:flutter/material.dart';
import 'package:xbilibili/page/home_page.dart';
import 'package:xbilibili/page/splash_page.dart';

Route<dynamic> generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case RouteName.splashPage:
      return MaterialPageRoute(builder: (context) => SplashPage());
      break;
    case RouteName.homePage:
      return MaterialPageRoute(builder: (context) => HomePage());
    default:
      return MaterialPageRoute(builder: (context) => SplashPage());
  }
}

class RouteName {
  static const splashPage = '/';
  static const homePage = '/home';
}
