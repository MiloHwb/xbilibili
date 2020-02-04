import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:xbilibili/entity/live_info_entity.dart';

/*
 * @ 创建者       黄文彪
 * @ 创建时间     2020/2/4 16:58
 * @ 描述         
 */
class LiverInfoPage extends StatelessWidget {
  final LiveInfoData data;
  final String cover;
  final String userName;

  LiverInfoPage(this.data, this.cover, this.userName);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(15),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 20),
                width: 50,
                height: 50,
                child: ClipOval(
                  child: Image.network(
                    cover,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    userName,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '房间号：${data.roomId}',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    '粉丝：${intToString(data.attention)} 观看 ${intToString(data.online)}',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    '${data.areaName}',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              Expanded(
                child: Container(
                  height: 40,
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    color: Theme.of(context).primaryColor,
                    onPressed: () {},
                    child: Text(
                      '+关注',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        HtmlWidget(data.description),
      ],
    );
  }

  static String intToString(int n) {
    if (n > 10000) {
      return (n / 10000).toStringAsFixed(1) + "万";
    } else {
      return n.toString();
    }
  }
}
