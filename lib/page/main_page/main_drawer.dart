import 'package:flutter/material.dart';
import 'package:xbilibili/route/routes.dart';
import 'package:xbilibili/utils/line_utils.dart';

import '../../r.dart';

/*
 * @ 创建者       milo
 * @ 创建时间     2020/1/11 16:43
 * @ 描述         首页抽屉Widget
 */
class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            _topList(context),
            _bottomRow(context),
          ],
        ),
      ),
    );
  }

  Widget _topList(context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(context),
          _drawerItem(
            IconData(0xe661, fontFamily: 'Bilibili'),
            '主页',
            isSelected: true,
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          _drawerItem(
            IconData(0xe67b, fontFamily: 'Bilibili'),
            '历史记录',
          ),
          _drawerItem(
            Icons.cloud_download,
            '离线缓存',
          ),
          _drawerItem(
            IconData(0xe673, fontFamily: 'Bilibili'),
            '我的收藏',
          ),
          _drawerItem(
            IconData(0xe6c1, fontFamily: 'Bilibili'),
            '稍后再看',
          ),
          LineUtils.greyLine(), //画线
          _drawerItem(
            Icons.file_upload,
            '投稿',
          ),
          _drawerItem(
            Icons.lightbulb_outline,
            '创作中心',
          ),
          LineUtils.greyLine(), //画线
          _drawerItem(
            Icons.live_tv,
            '直播中心',
          ),
          _drawerItem(
            IconData(0xe6bf, fontFamily: 'Bilibili'),
            '我的订单',
          ),
        ],
      ),
    );
  }

  //抽屉头
  UserAccountsDrawerHeader _drawerHeader(context) {
    return UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        image: DecorationImage(
          image: AssetImage(R.imagesMeTvSignOut),
          alignment: Alignment.bottomRight,
        ),
      ),
      accountName: Text(
        '未登录',
        style: TextStyle(fontSize: 17),
      ),
      accountEmail: Text(
        '点击头像登录',
        style: TextStyle(color: Colors.grey[300]),
      ),
      currentAccountPicture: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(RouteName.loginPage);
        },
        child: CircleAvatar(
          backgroundImage: AssetImage(R.imagesBiliDefaultAvatar),
        ),
      ),
      otherAccountsPictures: <Widget>[
        Icon(
          IconData(0xe6d4, fontFamily: 'Bilibili'),
          color: Colors.white,
          size: 20,
        ),
        Icon(
          IconData(0xe690, fontFamily: 'Bilibili'),
          color: Colors.white,
          size: 20,
        ),
      ],
    );
  }

  Widget _drawerItem(IconData iconData, String title,
      {bool isSelected = false, GestureTapCallback onTap}) {
    return ListTile(
      selected: isSelected,
      leading: Icon(
        iconData,
      ),
      title: Text(title),
      onTap: onTap,
    );
  }

  Widget _bottomRow(context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey[300],
            width: 0.5,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          InkWell(
            onTap: () {
//              todo 跳设置
              Navigator.of(context).pushNamed(RouteName.settingPage);
            },
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.settings,
                  color: Colors.grey,
                ),
                Text('设置'),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.widgets,
                color: Colors.grey,
              ),
              Text('主题'),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.brightness_2,
                color: Colors.grey,
              ),
              Text('夜间'),
            ],
          ),
        ],
      ),
    );
  }
}
