import 'package:flutter/material.dart';

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
    return Container(
      color: Colors.green,
    );
  }
}
