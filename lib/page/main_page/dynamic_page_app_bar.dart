import 'package:flutter/material.dart';

/*
 * @ 创建者       milo
 * @ 创建时间     2020/1/12 15:11
 * @ 描述         
 */
class DynamicPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  DynamicPageAppBar({Key key, this.height = 46}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text('动态'),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
            icon: Icon(
              IconData(0xe61e, fontFamily: 'Bilibili'),
            ),
            onPressed: () {
              Scaffold.of(context).hideCurrentSnackBar();
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text('请先登陆'),
                ),
              );
            }),
      ],
    );
  }
}
