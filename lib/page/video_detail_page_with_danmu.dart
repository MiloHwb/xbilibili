import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:share/share.dart';
import 'package:xbilibili/entity/video_detail_entity.dart';
import 'package:xbilibili/icons/bilibili_icons.dart';
import 'package:xbilibili/providers/video_player_with_danmu_provider.dart';

/*
 * @ 创建者       黄文彪
 * @ 创建时间     2020/2/5 15:34
 * @ 描述         
 */
class VideoDetailPageWithDanmu extends StatelessWidget {
  final VideoDetailEntity videoDetail;
  final String aid;
  final Function onTapPage;

  const VideoDetailPageWithDanmu(
      {Key key, @required this.videoDetail, @required this.aid, @required this.onTapPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              children: <Widget>[
                //头像
                Container(
                  height: 35,
                  width: 35,
                  margin: EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(videoDetail.data.owner.face)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        videoDetail.data.owner.name,
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        '${intToString(videoDetail.data.ownerExt.fans)}粉丝',
                        style: TextStyle(color: Colors.grey, fontSize: 11),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: 75,
                  child: Padding(
                    padding: EdgeInsets.only(top: 7, bottom: 7),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        '+关注',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            child: Text(
              videoDetail.data.title,
              style: TextStyle(fontSize: 18),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Icon(
                BIcon.play,
                color: Colors.grey[600],
                size: 17,
              ),
              Text(
                ' ${intToString(videoDetail.data.stat.view)} ',
                style: TextStyle(color: Colors.grey[600], fontSize: 12),
              ),
              Icon(
                BIcon.danmaku,
                color: Colors.grey[600],
                size: 17,
              ),
              Text(
                ' ${intToString(videoDetail.data.stat.danmaku)} ',
                style: TextStyle(color: Colors.grey[600], fontSize: 12),
              ),
              Text(
                '${timeToString(DateTime.fromMillisecondsSinceEpoch(videoDetail.data.ctime * 1000))}',
                style: TextStyle(color: Colors.grey[600], fontSize: 12),
              ),
              GestureDetector(
                onLongPress: () {
                  Clipboard.setData(ClipboardData(text: 'AV$aid'));
                  Fluttertoast.showToast(msg: '已复制av号到粘贴板');
                },
                child: Text(
                  '  AV$aid',
                  style: TextStyle(color: Colors.pink[300], fontSize: 12),
                ),
              )
            ],
          ),
          Offstage(
            offstage: videoDetail.data.pages.length <= 1,
            child: Container(
              height: 50,
              child: ListView(
                padding: EdgeInsets.only(bottom: 10),
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: videoDetail.data.pages.map((VideoDetailDataPage page) {
                  return Container(
                    width: 120,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: OutlineButton(
                      onPressed: () {
                        onTapPage(page.page - 1);
                      },
                      child: Text(
                        page.xPart,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      borderSide: BorderSide(
                          color: page.page - 1 ==
                                  Provider.of<VideoPlayerPageWithDanmuProvider>(context,
                                          listen: false)
                                      .page
                              ? Colors.pink[300]
                              : Colors.grey[400],
                          width: 1),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              videoDetail.data.desc,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 5,
            physics: NeverScrollableScrollPhysics(),
            childAspectRatio: 1.3,
            children: <Widget>[
              buildFlatButton(Icon(BIcon.zan, color: Colors.grey[600]),
                  '${intToString(videoDetail.data.stat.like)}'),
              buildFlatButton(Icon(BIcon.cai, color: Colors.grey[600]), '不喜欢'),
              buildFlatButton(Icon(BIcon.icon, color: Colors.grey[600]),
                  '${intToString(videoDetail.data.stat.coin)}'),
              buildFlatButton(Icon(BIcon.collection, color: Colors.grey[600]),
                  '${intToString(videoDetail.data.stat.favorite)}'),
              buildFlatButton(
                Icon(BIcon.share, color: Colors.grey[600]),
                '${intToString(videoDetail.data.stat.share)}',
                onPressed: () {
                  //分享
                  Share.share("https://www.bilibili.com/video/av$aid");
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  FlatButton buildFlatButton(Icon icon, String des, {VoidCallback onPressed}) {
    return FlatButton(
      onPressed: onPressed ?? () {},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 7),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            icon,
            Text(des, style: TextStyle(color: Colors.grey, fontSize: 10)),
          ],
        ),
      ),
    );
  }

  static String intToString(int n) {
    if (n > 10000) {
      return (n / 10000).toStringAsFixed(1) + "万";
    } else {
      return n.toString();
    }
  }

  static String timeToString(DateTime time) {
    return "${time.year}-${time.month}-${time.day}";
  }
}
