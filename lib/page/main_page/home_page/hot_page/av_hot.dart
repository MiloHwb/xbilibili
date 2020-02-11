import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:xbilibili/entity/hot_entity.dart';
import 'package:xbilibili/route/routes.dart';

/*
 * @ 创建者       milohuang
 * @ 创建时间     2020/1/25 12:46
 * @ 描述         
 */
class AvHot extends StatelessWidget {
  final HotData data;

  AvHot(this.data);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //跳转播放列表
        Navigator.pushNamed(context, RouteName.videoPlayerPageWithDanmu, arguments: data.param);
      },
      child: Container(
        height: 125,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey, width: 0.5),
          ),
        ),
        child: Row(
          children: <Widget>[
            buildLeft(),
            SizedBox(width: 10),
            buildRight(),
          ],
        ),
      ),
    );
  }

  //构建条目右边
  Expanded buildRight() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            data.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 3,
              vertical: 1,
            ),
            decoration: BoxDecoration(
              color: data.rcmdReasonStyle == null ? Colors.transparent : Colors.orange[400],
              borderRadius: BorderRadius.all(
                Radius.circular(3),
              ),
            ),
            child: Text(
              data.rcmdReasonStyle == null ? '' : data.rcmdReasonStyle.text,
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          Text(
            data.rightDesc1,
            textAlign: TextAlign.start,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 12),
          ),
          Text(
            data.rightDesc2,
            textAlign: TextAlign.start,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }

  //构建条目左边
  Expanded buildLeft() {
    return Expanded(
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(3)),
              child: Image.network(
                data.cover + '@320w_200h',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
            right: 5,
            bottom: 5,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.all(
                  Radius.circular(3),
                ),
              ),
              child: Text(
                data.coverRightText1,
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
