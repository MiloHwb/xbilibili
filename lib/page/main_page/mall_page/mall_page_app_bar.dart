import 'package:flutter/material.dart';

/*
 * @ 创建者       milo
 * @ 创建时间     2020/1/12 15:11
 * @ 描述         
 */
class MallPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  MallPageAppBar({Key key, this.height = 46}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text('会员购'),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
            icon: Icon(
              IconData(0xe606, fontFamily: 'Bilibili'),
            ),
            onPressed: () {
              Scaffold.of(context).hideCurrentSnackBar();
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text('请先登陆'),
                ),
              );
            }),
        IconButton(
            icon: Icon(
              IconData(0xe667, fontFamily: 'Bilibili'),
            ),
            onPressed: () {
              Scaffold.of(context).hideCurrentSnackBar();
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text('请先登陆'),
                ),
              );
            })
      ],
    );
  }
}
