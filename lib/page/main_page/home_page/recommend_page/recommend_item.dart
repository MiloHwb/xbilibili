import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:xbilibili/entity/recommend_entity.dart';
import 'package:xbilibili/icons/bilibili_icons.dart';
import 'package:xbilibili/utils/time_utils.dart';

/*
 * @ 创建者       milohuang
 * @ 创建时间     2020/1/24 14:39
 * @ 描述         
 */
class RecommendItem extends StatelessWidget {
  final RecommendData data;

  RecommendItem(this.data);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //todo 跳转播放
      },
      onLongPress: () {
        //显示封面
        openUrl(data.cover);
      },
      child: Card(
        elevation: 0.5,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Column(
          children: <Widget>[
            _buildCoverItem(),
            _buildTitleItem(),
            _buildBottomItem(),
          ],
        ),
      ),
    );
  }

  Expanded _buildBottomItem() {
    return Expanded(
      flex: 1,
      child: Container(
        margin: EdgeInsets.only(left: 5, right: 5, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              data.tname,
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
            Icon(
              Icons.more_vert,
              size: 13,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }

  Expanded _buildTitleItem() {
    return Expanded(
      flex: 2,
      child: Container(
        alignment: Alignment.topLeft,
        margin: EdgeInsets.all(5),
        child: Text(
          data.title,
          style: TextStyle(color: Colors.black, fontSize: 14),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
        ),
      ),
    );
  }

  Expanded _buildCoverItem() {
    return Expanded(
      flex: 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
          image: DecorationImage(
            image: NetworkImage(data.cover + '@320w_200h'),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
          child: Row(
            children: <Widget>[
              _buildPlayView(),
              _buildDanmukuView(),
              _buildPlayDuration(),
            ],
          ),
        ),
      ),
    );
  }

  //构建播放时长
  Widget _buildPlayDuration() {
    return Expanded(
      child: Text(
        duration2String(data.duration),
        style: TextStyle(color: Colors.white, fontSize: 12),
        textAlign: TextAlign.right,
      ),
    );
  }

  //构建弹幕数量View
  Widget _buildDanmukuView() {
    return Container(
      margin: EdgeInsets.only(left: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            BIcon.danmaku,
            color: Colors.white,
            size: 15,
          ),
          Text(
            getDes(data.danmaku),
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ],
      ),
    );
  }

  //构建播放量View
  Row _buildPlayView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          BIcon.play,
          color: Colors.white,
          size: 15,
        ),
        Text(
          getDes(data.play),
          style: TextStyle(fontSize: 12, color: Colors.white),
        ),
      ],
    );
  }

  String getDes(int count) {
    var view = '--';
    if (count != null) {
      view = count > 10000 ? (count ~/ 10000).toString() + "万" : count.toString();
    }
    return view;
  }

  void openUrl(String cover) async {
    if (await canLaunch(cover)) {
      launch(cover);
    }
  }
}
