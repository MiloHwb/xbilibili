import 'dart:async';

import 'package:flutter/material.dart';
import 'package:xbilibili/route/routes.dart';

import '../r.dart';

/*
 * @ 创建者       milo
 * @ 创建时间     2020/1/11 15:07
 * @ 描述         
 */
class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    //延时2秒进度首页
    Future.delayed(Duration(seconds: 2), _jumpToHomePage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Image.asset(R.imagesSplashpage),
      ),
    );
  }

  FutureOr _jumpToHomePage() {
    print('_jumpToHomePage');

    Navigator.pushNamedAndRemoveUntil(context, RouteName.mainPage, (route) => false);
  }
}
