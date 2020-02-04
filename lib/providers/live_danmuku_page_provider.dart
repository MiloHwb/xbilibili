import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';

class LiveDanmukuPageProvider with ChangeNotifier {
  IOWebSocketChannel _channel;
  List messageList = [];
  int totalTime = 0;
  Timer timer;

  LiveDanmukuPageProvider(String roomid) {
    timer = Timer.periodic(Duration(seconds: 70), (Timer timer) {
      totalTime += 70;
      _channel?.sink?.close();
      initLive(roomid);
    });

    initLive(roomid);
  }

  @override
  void dispose() {
    timer?.cancel();
    _channel?.sink?.close();

    super.dispose();
  }

  void initLive(String roomid) {
    _channel = IOWebSocketChannel.connect('wss://broadcastlv.chat.bilibili.com:2245/sub', headers: {
      "Host": "broadcastlv.chat.bilibili.com:2245",
      "Sec-WebSocket-Version": " 13",
      "Connection": " Upgrade",
    });
    joinRoom(roomid);
    setListener();
  }

  joinRoom(String roomid) {
    String msg = "{\"roomid\":$roomid}";
    _channel.sink.add(encode(7, msg: msg));
  }

  void setListener() {
    _channel.stream.listen((msg) {
      Uint8List list = Uint8List.fromList(msg);
      decode(list);
    });
  }

  void addDanmaku(LiveDanmakuItem item) {
    messageList.insert(0, item);
    notifyListeners();
  }

  void addGift(GiftItem item) {
    messageList.insert(0, item);
    notifyListeners();
  }

  //对消息进行解码
  decode(Uint8List list) {
    int packLen = readInt(list, 0, 4);
    int headerLen = readInt(list, 4, 2);
    int op = readInt(list, 8, 4);
    switch (op) {
      case 8:
        print("进入房间");
        break;
      case 5:
        int offset = 0;
        while (offset < list.length) {
          packLen = readInt(list, offset + 0, 4);
          headerLen = 16;
          Uint8List body = list.sublist(offset + headerLen, offset + packLen);
          String data = utf8.decode(body);
          offset += packLen;
          //print(data);
          Map<String, dynamic> jd = json.decode(data);
          switch (jd["cmd"]) {
            case "DANMU_MSG":
              String msg = jd["info"][1].toString();
              String name = jd["info"][2][1].toString();
              print("$name 说： $msg");
              addDanmaku(LiveDanmakuItem(name, msg));
              break;
            case "SEND_GIFT":
              String name = jd["data"]["uname"].toString();
              String action = jd["data"]["action"].toString();
              String msg = jd["data"]["giftName"].toString();
              int count = jd["data"]["num"];
              print("$name $action $count 个 $msg");
              addGift(GiftItem(name, action, count, msg));
              break;
            default:
          }
        }
        break;
      case 3:
        int people = readInt(list, headerLen, 4);
        print("人气: $people");
        break;
      default:
    }
  }

  //从编码读出数字
  int readInt(Uint8List src, int start, int len) {
    int res = 0;
    for (int i = len - 1; i >= 0; i--) {
      res += pow(256, len - i - 1) * src[start + i];
    }
    return res;
  }

  //对消息编码
  Uint8List encode(int op, {String msg}) {
    List<int> header = [0, 0, 0, 0, 0, 16, 0, 1, 0, 0, 0, op, 0, 0, 0, 1];
    if (msg != null) {
      List<int> msgCode = utf8.encode(msg);
      header.addAll(msgCode);
    }
    Uint8List uint8list = Uint8List.fromList(header);
    uint8list = writeInt(uint8list, 0, 4, header.length);
    print(uint8list.toString());
    return uint8list;
  }

  //写入编码
  Uint8List writeInt(Uint8List src, int start, int len, int value) {
    int i = 0;
    while (i < len) {
      src[start + i] = value ~/ pow(256, len - i - 1);
      i++;
    }
    return src;
  }
}

class LiveDanmakuItem {
  String name;
  String msg;

  LiveDanmakuItem(this.name, this.msg);
}

class GiftItem {
  String name;
  String msg;
  String action;
  int count;

  GiftItem(
    this.name,
    this.action,
    this.count,
    this.msg,
  );
}
