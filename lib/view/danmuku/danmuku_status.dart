
import 'package:event_bus/event_bus.dart';
EventBus danmukuEventBus = EventBus();
class DanmukuStatus{
  static int play=10;
  static int pause=11;
  static int setStatus=1;
  static int goto=2;
  static int setDuration=3;
  String msg;
  int status;
  int cmd;
  int param;
  DanmukuStatus({this.status,this.msg,this.param,this.cmd});
}
