import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:xbilibili/api/http_method.dart';
import 'package:xbilibili/entity/live_info_entity.dart';
import 'package:xbilibili/entity/live_url_entity.dart';

class LivePlayerPageProvider with ChangeNotifier {
  BuildContext context;
  LiveInfoEntity entity;
  List<String> urlList = [];
  int index = 0;
  VideoPlayerController videoPlayerController;
  ChewieController chewieController;

  //设置context
  setContext(BuildContext context) {
    this.context = context;
  }

  getLiveInfo({@required String id}) async {
    var liveInfoEntity = await HttpMethod.getLiveInfo(roomid: id);
    this.entity = liveInfoEntity;

    if (this.entity.data.liveStatus == 1) {
      await _getLiveUrl(id: id);
    }
  }

  _getLiveUrl({String id}) async {
    var liveUrlEntity = await HttpMethod.getLivePlayUrl(roomid: id);
    if (liveUrlEntity == null && liveUrlEntity.data != null && liveUrlEntity.data.durl != null) {
      return;
    }

    for (LiveUrlDataDurl value in liveUrlEntity.data.durl) {
      if (value != null && value.url != null) {
        urlList.add(value.url);
      }
    }

    if (urlList.length != 0) {
      _setLiveUrl(urlList[index]);
    }
  }

  void _setLiveUrl(String url) {
    videoPlayerController = VideoPlayerController.network(
      url,
    )..initialize().then((_) {
        if (this.context != null) {
          chewieController = ChewieController(
            videoPlayerController: videoPlayerController,
            placeholder: Center(
              child: Text(
                '正在缓冲',
                style: TextStyle(
                  color: Colors.white30,
                ),
              ),
            ),
            aspectRatio: this.entity.data.isPortrait
                ? MediaQuery.of(context).size.width / MediaQuery.of(context).size.height
                : 16 / 9,
            autoPlay: true,
            allowedScreenSleep: false,
            isLive: true,
            allowFullScreen: !this.entity.data.isPortrait,
//            customControls: todo
          );
        } else {
          print('context为空');
        }
        notifyListeners();
      });
  }

  reset() {
    this.entity = null;
    index = 0;
    urlList.clear();
    videoPlayerController = null;
    context = null;
    chewieController = null;
  }
}
