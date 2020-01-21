import 'package:flutter/material.dart';

import 'anniversary70_page.dart';
import 'bangumi_page.dart';
import 'cinema_page.dart';
import 'hot_page.dart';
import 'live_page.dart';
import 'recommend_page.dart';

/*
 * @ 创建者       milo
 * @ 创建时间     2020/1/11 17:06
 * @ 描述         
 */
class HomePage extends StatelessWidget {
  final List<String> tabs = [
    '直播',
    '推荐',
    '热门',
    '追番',
    '影视',
    '70周年',
  ];

  final List<Widget> pages = [
    LivePage(),
    RecommendPage(),
    HotPage(),
    BangumiPage(),
    CinemaPage(),
    Anniversary70Page(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      initialIndex: 0,
      child: Scaffold(
        appBar: TabBar(
          isScrollable: true,
          indicatorColor: Theme.of(context).primaryColor,
          labelColor: Theme.of(context).primaryColor,
          unselectedLabelColor: Colors.grey,
          tabs: tabs.map((tab) {
            return Container(
              height: 35,
              child: Tab(
                text: tab,
              ),
            );
          }).toList(),
        ),
        body: TabBarView(
          children: pages,
        ),
      ),
    );
  }
}
