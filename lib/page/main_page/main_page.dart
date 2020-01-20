import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:xbilibili/icons/bilibili_icons.dart';
import 'package:xbilibili/page/main_page/channel_page_app_bar.dart';
import 'package:xbilibili/page/main_page/dynamic_page_app_bar.dart';
import 'package:xbilibili/page/main_page/home_page_app_bar.dart';
import 'package:xbilibili/page/main_page/mall_page/mall_page_app_bar.dart';
import 'package:xbilibili/providers/main_page_provider.dart';

import 'channel_page.dart';
import 'dynamic_page.dart';
import 'home_page.dart';
import 'main_drawer.dart';
import 'mall_page/mall_page.dart';

/*
 * @ 创建者       milo
 * @ 创建时间     2020/1/11 15:28
 * @ 描述         
 */
class MainPage extends StatelessWidget {
  final appBars = [
    HomePageAppBar(),
    ChannelPageAppBar(),
    DynamicPageAppBar(),
    MallPageAppBar(),
  ];
  final pages = [
    HomePage(),
    ChannelPage(),
    DynamicPage(),
    MallPage(),
  ];

  final navigationItems = [
    BottomNavigationBarItem(
        icon: Icon(IconData(0xe661, fontFamily: "Bilibili")),
        activeIcon: Icon(IconData(0xe662, fontFamily: "Bilibili")),
        title: Text("首页")),
    BottomNavigationBarItem(
        icon: Icon(IconData(0xe664, fontFamily: "Bilibili")),
        activeIcon: Icon(IconData(0xe663, fontFamily: "Bilibili")),
        title: Text("频道")),
    BottomNavigationBarItem(
        icon: Icon(IconData(0xe666, fontFamily: "Bilibili")),
        activeIcon: Icon(IconData(0xe665, fontFamily: "Bilibili")),
        title: Text("动态")),
    BottomNavigationBarItem(
      icon: Icon(BIcon.shop),
      title: Text("会员购"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainPageProvider>(builder: (context, value, child) {
      return WillPopScope(
        onWillPop: () {
          return _checkDoubleClick(context, value.scaffoldKey, value.lastClick);
        },
        child: Scaffold(
          key: value.scaffoldKey,
          appBar: appBars[value.currentIndex],
          drawer: MainDrawer(),
          body: IndexedStack(
            index: value.currentIndex,
            children: pages,
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            fixedColor: Theme.of(context).primaryColor,
            currentIndex: value.currentIndex,
            unselectedFontSize: 12,
            selectedFontSize: 12,
            items: navigationItems,
            onTap: (index) {
              Provider.of<MainPageProvider>(context, listen: false).setCurrentIndex(index);
            },
          ),
        ),
      );
    });
  }

  Future<bool> _checkDoubleClick(context, scaffoldKey, DateTime lastClick) {
    //如果当前抽屉打开，则关闭抽屉
    if (scaffoldKey.currentState.isDrawerOpen) {
      Navigator.of(context).pop();
      return Future.value(false);
    }
    if (lastClick == null || DateTime.now().difference(lastClick) > Duration(seconds: 1)) {
      Provider.of<MainPageProvider>(context, listen: false).setLastClick(DateTime.now());
      Fluttertoast.showToast(msg: "再按一次退出");
      return Future.value(false);
    } else {
      return Future.value(true);
    }
  }
}
