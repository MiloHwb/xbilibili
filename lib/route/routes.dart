import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xbilibili/page/about_page.dart';
import 'package:xbilibili/page/login_page.dart';
import 'package:xbilibili/page/main_page/main_page.dart';
import 'package:xbilibili/page/search_page/search_page.dart';
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
    case RouteName.loginPage:
      return MaterialPageRoute(builder: (context) => LoginPage());
    case RouteName.searchPage:
      return CupertinoPageRoute(builder: (context) => SearchPage());
    default:
      return MaterialPageRoute(builder: (context) => SplashPage());
  }
}

class RouteName {
  //闪屏页
  static const splashPage = '/';

  //主页
  static const mainPage = '/main';

  //设置页
  static const settingPage = '/setting';

  //关于页
  static const aboutPage = '/about';

  //登录页
  static const loginPage = '/login';

  //搜索页
  static const searchPage = '/search';
}
