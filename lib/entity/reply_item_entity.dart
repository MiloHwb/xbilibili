import 'package:flutter/material.dart';

class ReplyItemEntity {
  String uname;
  int floor;
  String message;
  String pic;
  int like;
  int level;
  int vipStatus;
  int ctime;

  ReplyItemEntity(
      {@required this.uname,
      @required this.floor,
      @required this.message,
      @required this.pic,
      @required this.like,
      @required this.level,
      @required this.vipStatus,
      @required this.ctime});
}
