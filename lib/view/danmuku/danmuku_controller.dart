import 'dart:async';


import 'danmuku_status.dart';
import 'danmuku_item.dart';

class DanmukuController {
  List<DanmukuItem> danmakus;
  StreamSubscription _danmakuSubscription;
  int status;
  bool isPause(){
    return status==DanmukuStatus.pause;
  }
  bool isPlay(){
    return status==DanmukuStatus.play;
  }
  void pause() {
    danmukuEventBus.fire(DanmukuStatus(status: DanmukuStatus.pause,cmd: DanmukuStatus.setStatus));
  }
  
    ///duration毫秒
  void goto(int duration){
    danmukuEventBus.fire(DanmukuStatus(cmd: DanmukuStatus.goto,param: duration));
  }

  void play() {
    danmukuEventBus.fire(DanmukuStatus(status: DanmukuStatus.play,cmd: DanmukuStatus.setStatus));
  }
  void setDuration(int duration){
    danmukuEventBus.fire(DanmukuStatus(cmd: DanmukuStatus.setDuration,param: duration));
  }

  Future<void> dispose() async{
    await _danmakuSubscription?.cancel();
  }

  void init() {
    _danmakuSubscription = danmukuEventBus.on<DanmukuStatus>().listen((event) {
     // print("cmd ${event.cmd} param   ${event.param}");
      if(event.cmd==DanmukuStatus.setStatus){
        status = event.status;
      }
    });
  }

  DanmukuController(this.danmakus) {
    init();
  }
}
