import 'package:flutter/material.dart';

class LivePlayerRequestModel {
  final String roomid;
  final String cover;
  final String userName;

  LivePlayerRequestModel({@required this.roomid, this.cover, this.userName});
}