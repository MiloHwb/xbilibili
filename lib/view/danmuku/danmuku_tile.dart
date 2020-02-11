import 'dart:async';
import 'dart:ui';
import 'dart:math' as prefix0;
import 'package:flutter/material.dart';

import 'danmuku_controller.dart';
import 'danmuku_item.dart';
import 'danmuku_status.dart';

class DanmukuTile extends StatefulWidget {
  final DanmukuItem danmaku;
  final double wide;
  final DanmukuController controller;
  DanmukuTile(this.danmaku, this.wide, this.controller);
  @override
  _DanmukuTileState createState() => _DanmukuTileState();
}

class _DanmukuTileState extends State<DanmukuTile>
    with TickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;
  StreamSubscription _danmakuSubscription;
  @override
  void initState() {
    registerEvent();
    controller = AnimationController(
      duration: Duration(seconds: 15),
      vsync: this,
    );
    double max = prefix0.max(
        window.physicalSize.width, window.physicalSize.height);
    animation =
        Tween(end: max-widget.danmaku.msg.length.toDouble() * 12, begin: -widget.danmaku.msg.length.toDouble() * 15)
            .animate(controller)
              ..addListener(
                () {
                  setState(() {});
                },
              );
    controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    //先释放controller
    controller.stop();
    controller?.dispose();
    _danmakuSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: animation.value,
      top: widget.danmaku.pos * widget.wide,
      child: Opacity(
        opacity: controller.isCompleted?0:1,//完成的弹幕不显示
        child: Text(
          widget.danmaku.msg,
          style: TextStyle(
            backgroundColor: Colors.black12,
            color: Colors.white,
          ),
          maxLines: 1,
        ),
      ),
    );
  }

  ///接受事件
  registerEvent() {
    _danmakuSubscription = danmukuEventBus.on<DanmukuStatus>().listen((event) {
      if (event.cmd == DanmukuStatus.setStatus) {
        if (event.status == DanmukuStatus.pause) {
          controller.stop();
        } else if (event.status == DanmukuStatus.play) {
          controller.forward();
        }
      setState(() {});
      }
    });
  }
}
