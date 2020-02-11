import 'dart:async';
import 'dart:math' as prefix0;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'danmuku_controller.dart';
import 'danmuku_item.dart';
import 'danmuku_status.dart';
import 'danmuku_tile.dart';

class DanmukuView extends StatefulWidget {
  final DanmukuController controller;
  DanmukuView(this.controller);
  @override
  _DanmukuViewState createState() => _DanmukuViewState();
}

class _DanmukuViewState extends State<DanmukuView> {
  final double max = prefix0.max(
      window.physicalSize.width / 2, window.physicalSize.height / 2);
  final GlobalKey _globalKey = GlobalKey();
  final int _count = 10;
  //Timer timer;
  int _timeCount = 0;
  double wide = 20;
  DateTime now = DateTime.now();
  List<DanmukuItem> _preList = [];
  List<DanmukuItem> _danmakus = [];
  List<DanmukuItem> _latestList = [];
  StreamSubscription _danmakuSubscription;
  @override
  void initState() {
    registerEvent();
    _preList.addAll(widget.controller.danmakus);
    // timer = Timer.periodic(Duration(milliseconds: 50), (time) {
    //   if (this.mounted) {
    //     loadDanmaku();
    //     setState(() {});
    //   }
    // });
    super.initState();
  }

  @override
  void dispose() {
    _danmakuSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 0),
      body: Stack(
        key: _globalKey,
        children: _danmakus.map((item) {
          return DanmukuTile(item, wide, widget.controller);
        }).toList(),
      ),
    );
  }

  ///接受事件
  registerEvent() {
    _danmakuSubscription = danmukuEventBus.on<DanmukuStatus>().listen((event) {
      setState(() {
        // if (event.cmd == DanmakuStatus.goto) {
        //   if (event.param != null) {
        //     startAt(event.param);
        //   } else {
        //     startAt(0);
        //   }
        //} 
        //  if (event.cmd == DanmakuStatus.setStatus) {
        //   if (event.status == DanmakuStatus.pause) {
        //     timer.cancel();
        //   } else if (event.status == DanmakuStatus.play) {
        //     timer = Timer.periodic(Duration(milliseconds: 50), (time) {
        //       if (this.mounted) {
        //         loadDanmaku();
        //         setState(() {});
        //       }
        //     });
        //   }
        // }
        if(event.cmd == DanmukuStatus.setDuration){
          //print("event.cmd ${event.cmd} param ${event.param} timecount$_timeCount ");
          if(event.param<_timeCount||event.param-_timeCount>1000){
            _preList.clear();
            _preList.addAll(widget.controller.danmakus);
            _latestList.clear();
            _danmakus.clear();
            setState(() {
            });
          }
          _timeCount=event.param;
          loadDanmaku();
        }
      });
    });
  }

  loadDanmaku() {
    //装载一次弹幕
    now = DateTime.now();
    wide = _globalKey.currentContext.size.height / _count;
    while (_preList.isNotEmpty && _preList[0].duration - _timeCount <= 600) {
      if (_preList[0].duration - _timeCount >= 0) {
        addActionDanmaku(_preList[0]);
      }
      _preList.removeAt(0);
    }
    setState(() {});
  }

  ///添加一条弹幕到屏幕上
  addActionDanmaku(DanmukuItem item) {
    setState(() {
      for (int pos = 0; pos < _count; pos++) {
        if (pos < _latestList.length &&
            now.difference(_latestList[pos].dateTime).inSeconds >
                12 *
                    (_latestList[pos].msg.length.toDouble() * 10.0) /
                    (max + _latestList[pos].msg.length.toDouble() * 10.0)) {
          item.pos = pos;
          item.dateTime = now;
          _danmakus.add(item);
          _latestList[pos] = item;
          break;
        } else if (pos >= _latestList.length) {
          item.pos = _latestList.length;
          item.dateTime = now;
          _danmakus.add(item);
          _latestList.add(item);
          break;
        }
      }
    });
  }

  //跳转到某个时间
  startAt(int duration) {
    setState(() {});
    _preList.clear();
    _preList.addAll(widget.controller.danmakus);
    _latestList.clear();
    _danmakus.clear();
    _timeCount = duration;
    setState(() {});
  }
}
