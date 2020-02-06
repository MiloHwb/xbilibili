import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:xbilibili/entity/reply_item_entity.dart';
import 'package:xbilibili/icons/bilibili_icons.dart';
import 'package:xbilibili/providers/video_replies_page_provider.dart';
import 'package:xbilibili/r.dart';

/*
 * @ 创建者       黄文彪
 * @ 创建时间     2020/2/5 19:32
 * @ 描述         
 */
class VideoRepliesPage extends StatefulWidget {
  @override
  _VideoRepliesPageState createState() => _VideoRepliesPageState();
}

class _VideoRepliesPageState extends State<VideoRepliesPage> with AutomaticKeepAliveClientMixin {
  final RefreshController _refreshController = RefreshController(initialRefresh: false);

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Consumer<VideoRepliesPageProvider>(
      builder: (context, value, child) {
        Widget widget;
        if (value.isLoadFail) {
          widget = Center(
            child: Column(
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset(R.imagesImgTipsErrorLoadError),
                ),
                Text('加载失败了'),
              ],
            ),
          );
        } else if (value.isLoadSuccess && value.list.length > 0) {
          widget = replyListView(context, value);
        } else if (!value.isLoadSuccess) {
          widget = Center(
            child: CircularProgressIndicator(),
          );
        } else {
          widget = Center(
            child: Text('再怎么找也没有啦'),
          );
        }

        return widget;
      },
    );
  }

  Widget replyListView(BuildContext context, VideoRepliesPageProvider value) {
    return SmartRefresher(
      controller: _refreshController,
      enablePullDown: true,
      enablePullUp: true,
      onLoading: () {
        _onLoading(context);
      },
      onRefresh: () {
        _onRefresh(context);
      },
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: value.list.length,
        itemBuilder: (context, index) {
          return replyTile(value.list[index]);
        },
      ),
    );
  }

  Widget replyTile(ReplyItemEntity item) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 0.5, color: Colors.grey[300])),
      ),
      padding: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildAvatar(item),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                buildUserInfo(item),
                buildMessage(item),
                buildBottom(item),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row buildBottom(ReplyItemEntity item) {
    return Row(
      children: <Widget>[
        Icon(
          BIcon.zan,
          color: Colors.grey[500],
          size: 14,
        ),
        Text(
          '  ' + (item.like == 0 ? '' : item.like.toString()),
          style: TextStyle(color: Colors.grey[500], fontSize: 12),
        ),
        SizedBox(
          width: 30,
        ),
        Icon(
          BIcon.cai,
          color: Colors.grey[500],
          size: 14,
        ),
        SizedBox(
          width: 30,
        ),
        Icon(
          BIcon.share,
          color: Colors.grey[500],
          size: 14,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerRight,
            child: Icon(
              Icons.more_vert,
              color: Colors.grey[500],
              size: 18,
            ),
          ),
        ),
      ],
    );
  }

  Container buildMessage(ReplyItemEntity item) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3),
      child: Text(
        item.message,
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  Row buildUserInfo(ReplyItemEntity item) {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 10),
          child: Text(
            item.uname,
            style: TextStyle(color: item.vipStatus == 1 ? Colors.pink : Colors.grey[700]),
          ),
        ),
        Icon(
          BIcon.level[item.level],
          color: BIcon.levelColor[item.level],
        ),
        Expanded(
          child: Container(
            child: Text(
              '#' + item.floor.toString(),
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
        ),
      ],
    );
  }

  Container buildAvatar(ReplyItemEntity item) {
    return Container(
      width: 45,
      alignment: Alignment.topCenter,
      margin: EdgeInsets.only(right: 20),
      child: ClipOval(
        child: Image.network(
          item.pic,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  void _onLoading(context) async {
    await Provider.of<VideoRepliesPageProvider>(context, listen: false).onLoadMore();
    _refreshController.loadComplete();
  }

  void _onRefresh(context) async {
    var provider = Provider.of<VideoRepliesPageProvider>(context, listen: false);
    if (provider.next < 10) {
      _refreshController.loadNoData();
      return;
    }

    await provider.onRefresh();
    _refreshController.refreshCompleted();
  }

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;
}
