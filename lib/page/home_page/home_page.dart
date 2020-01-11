import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:xbilibili/providers/home_page_provider.dart';

/*
 * @ 创建者       milo
 * @ 创建时间     2020/1/11 15:28
 * @ 描述         
 */
class HomePage extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Consumer<HomePageProvider>(builder: (context, value, child) {
      return WillPopScope(
        onWillPop: () {
          return _checkDoubleClick(context, value.lastClick);
        },
        child: Scaffold(
          key: _scaffoldKey,
          drawer: Text('侧滑菜单'),
          body: Center(
            child: Text('首页'),
          ),
        ),
      );
    });
  }

  Future<bool> _checkDoubleClick(context, DateTime lastClick) {
    //如果当前抽屉打开，则关闭抽屉
    if (_scaffoldKey.currentState.isDrawerOpen) {
      Navigator.of(context).pop();
      return Future.value(false);
    }
    if (lastClick == null || DateTime.now().difference(lastClick) > Duration(seconds: 1)) {
      Provider.of<HomePageProvider>(context, listen: false).setLastClick(DateTime.now());
      Fluttertoast.showToast(msg: "再按一次退出");
      return Future.value(false);
    } else {
      return Future.value(true);
    }
  }
}
