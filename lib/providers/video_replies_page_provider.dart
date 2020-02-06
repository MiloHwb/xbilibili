import 'package:flutter/material.dart';
import 'package:xbilibili/api/http_method.dart';
import 'package:xbilibili/entity/reply_entity.dart';
import 'package:xbilibili/entity/reply_item_entity.dart';

class VideoRepliesPageProvider with ChangeNotifier {
  String aid;
  int next = 0;
  int count;
  List<ReplyItemEntity> list = [];
  bool isLoadFail = false;
  bool isLoadSuccess = false;

  VideoRepliesPageProvider(String aid) {
    print('aid $aid');
    this.aid = aid;
    onRefresh();
  }

  Future<Null> onRefresh() async {
    next = 0;
    list.clear();

    ReplyEntity replyEntity = await getReply();
    this.count = replyEntity.data.cursor.allCount;
    List<ReplyDataHot> hots = replyEntity.data.hots;
    List<ReplyDataReply> replies = replyEntity.data.replies;

    if (hots == null && replies == null) {
      isLoadFail = true;
      notifyListeners();
      return null;
    }

    isLoadSuccess = true;

    handleData(hots, replies);
    next = list[list.length - 1].floor;

    notifyListeners();
    return null;
  }

  Future<Null> onLoadMore() async {
    ReplyEntity replyEntity = await getReply();

    List<ReplyDataReply> replies = replyEntity.data.replies;
    handleData(null, replies);
    next = list[list.length - 1].floor;
    notifyListeners();
    return null;
  }

  Future<ReplyEntity> getReply() async {
    ReplyEntity replyEntity = await HttpMethod.getReplyUrl(aid: aid, next: next);
    return replyEntity;
  }

  void handleData(List<ReplyDataHot> hots, List<ReplyDataReply> replies) {
    if (hots != null) {
      for (ReplyDataHot hot in hots) {
        list.add(ReplyItemEntity(
            uname: hot.member.uname,
            floor: hot.floor,
            message: hot.content.message,
            pic: hot.member.avatar,
            like: hot.like,
            level: hot.member.levelInfo.currentLevel,
            vipStatus: hot.member.vip.vipStatus,
            ctime: hot.ctime));
      }
    }

    if (replies != null) {
      for (ReplyDataReply reply in replies) {
        list.add(ReplyItemEntity(
            uname: reply.member.uname,
            floor: reply.floor,
            message: reply.content.message,
            pic: reply.member.avatar,
            like: reply.like,
            level: reply.member.levelInfo.currentLevel,
            vipStatus: reply.member.vip.vipStatus,
            ctime: reply.ctime));
      }
    }
  }
}
