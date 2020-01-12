import 'package:flutter/material.dart';
import 'package:xbilibili/r.dart';
import 'package:xbilibili/route/routes.dart';

/*
 * @ 创建者       milo
 * @ 创建时间     2020/1/11 17:07
 * @ 描述         动态页
 */
class DynamicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.topCenter,
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(RouteName.loginPage);
        },
        child: Container(
          child: Image.asset(R.imagesDynamicLoginGuide),
        ),
      ),
    );
  }
}
