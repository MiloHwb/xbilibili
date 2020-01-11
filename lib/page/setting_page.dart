import 'package:flutter/material.dart';
import 'package:xbilibili/icons/bilibili_icons.dart';
import 'package:xbilibili/route/routes.dart';

/*
 * @ 创建者       milo
 * @ 创建时间     2020/1/12 0:26
 * @ 描述         
 */
class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        color: Colors.grey[100],
        child: ListView(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed(RouteName.aboutPage);
                },
                title: Text('关于我'),
                trailing: Icon(BIcon.more),
              ),
            )
          ],
        ),
      ),
    );
  }
}
