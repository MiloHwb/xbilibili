import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xbilibili/page/about_page.dart';
import 'package:xbilibili/page/main_page/main_page.dart';
import 'package:xbilibili/page/setting_page.dart';
import 'package:xbilibili/page/splash_page.dart';

Route<PageRoute> generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case RouteName.splashPage:
      return MaterialPageRoute(builder: (context) => SplashPage());
    case RouteName.mainPage:
      return MaterialPageRoute(builder: (context) => MainPage());
    case RouteName.settingPage:
      return CupertinoPageRoute(builder: (context) => SettingPage());
    case RouteName.aboutPage:
      return MaterialPageRoute(builder: (context) => AboutPage());
    default:
      return MaterialPageRoute(builder: (context) => SplashPage());
  }
}

class RouteName {
  static const splashPage = '/';
  static const mainPage = '/main';
  static const settingPage = '/setting';
  static const aboutPage = '/about';
}
