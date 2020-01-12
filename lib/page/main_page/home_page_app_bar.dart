import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:xbilibili/providers/main_page_provider.dart';
import 'package:xbilibili/route/routes.dart';

import '../../r.dart';

/*
 * @ 创建者       milo
 * @ 创建时间     2020/1/12 15:10
 * @ 描述         
 */
class HomePageAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  HomePageAppBar({Key key, this.height = 46}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leftItem(context),
      title: middleItem(context),
      actions: rightItems(context),
    );
  }

  List<Widget> rightItems(context) {
    return <Widget>[
      IconButton(
        icon: Icon(
          IconData(0xe672, fontFamily: 'Bilibili'),
        ),
        onPressed: () {
          Scaffold.of(context).removeCurrentSnackBar();
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('下载暂未开放'),
            ),
          );
        },
      ),
      IconButton(
        icon: Icon(
          IconData(0xe6df, fontFamily: 'Bilibili'),
        ),
        onPressed: () {
          Scaffold.of(context).removeCurrentSnackBar();
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('消息暂未开放'),
            ),
          );
        },
      ),
    ];
  }

  //左边控件
  GestureDetector leftItem(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //打开侧滑菜单
        Provider.of<MainPageProvider>(context, listen: false).scaffoldKey.currentState.openDrawer();
      },
      child: Row(
        children: <Widget>[
          Icon(Icons.menu),
          Container(
            width: 32,
            height: 32,
            child: CircleAvatar(
              backgroundImage: AssetImage(R.imagesBiliDefaultAvatar),
            ),
          )
        ],
      ),
    );
  }

  //中间控件
  Widget middleItem(BuildContext context) {
    return InkWell(
      onTap: () {
        // 跳转到搜索
        Navigator.of(context).pushNamed(RouteName.searchPage);
      },
      child: Opacity(
        opacity: 0.15,
        child: Container(
          height: 30,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          padding: EdgeInsets.only(left: 10),
          child: Icon(Icons.search),
        ),
      ),
    );
  }
}
