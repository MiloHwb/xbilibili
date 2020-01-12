import 'package:flutter/material.dart';
import 'package:xbilibili/route/routes.dart';

/*
 * @ 创建者       milo
 * @ 创建时间     2020/1/12 15:11
 * @ 描述         
 */
class ChannelPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  ChannelPageAppBar({Key key, this.height = 46}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text('频道'),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
            icon: Icon(
              IconData(0xe672, fontFamily: 'Bilibili'),
            ),
            onPressed: () {
              Scaffold.of(context).hideCurrentSnackBar();
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text('下载暂未开放'),
                ),
              );
            }),
        IconButton(
            icon: Icon(
              IconData(0xe669, fontFamily: 'Bilibili'),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(RouteName.searchPage);
            })
      ],
    );
  }
}
