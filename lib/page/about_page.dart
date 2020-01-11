import 'package:flutter/material.dart';
import 'package:xbilibili/r.dart';

/*
 * @ 创建者       milo
 * @ 创建时间     2020/1/12 0:34
 * @ 描述         
 */
class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('关于开发者'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 30),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              R.imagesAvatar,
              width: MediaQuery.of(context).size.width / 3,
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text('Milo Huang'),
            ),
          ],
        ),
      ),
    );
  }
}
