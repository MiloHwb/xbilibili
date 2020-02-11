import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:video_player/video_player.dart';
import 'package:xbilibili/api/http_method.dart';
import 'package:xbilibili/entity/video_detail_entity.dart';
import 'package:xbilibili/entity/video_url_entity.dart';
import 'package:xbilibili/view/bilibili_chewie_controls.dart';

class VideoPlayerProvider with ChangeNotifier {
  VideoDetailEntity videoDetail;
  bool getVideoDetailIsOk = false;
  VideoPlayerController videoPlayerController;
  ChewieController chewieController;
  int page = 0;

  VideoPlayerProvider({@required String aid}) {
    getVideoDetail(aid: aid);
  }

  getVideoDetail({@required String aid}) async {
    VideoDetailEntity videoDetailEntity = await HttpMethod.getVideoDetail(aid: aid);
    this.videoDetail = videoDetailEntity;
    getVideoDetailIsOk = this.videoDetail != null;
    notifyListeners();
    if (!getVideoDetailIsOk) {
      return;
    }
    VideoUrlEntity videoUrlEntity =
        await HttpMethod.getVideoPlayUrlV2(cid: videoDetail.data.pages[0].cid.toString());
    if (videoUrlEntity == null ||
        videoUrlEntity.durl == null ||
        videoUrlEntity.durl[0] == null ||
        videoUrlEntity.durl[0].url == null) {
      Fluttertoast.showToast(msg: '获取视频播放地址失败');
      return;
    }
    String url = videoUrlEntity.durl[0].url;
    videoPlayerController = VideoPlayerController.network(url)
      ..initialize().then((_) {
        chewieController = ChewieController(
          videoPlayerController: videoPlayerController,
          placeholder: Center(
            child: Text(
              '正在缓冲',
              style: TextStyle(color: Colors.white30),
            ),
          ),
          autoPlay: true,
          aspectRatio: videoPlayerController.value.size.aspectRatio,
          allowedScreenSleep: false,
          customControls: BilibiliChewieControls(),
        );
        notifyListeners();
      });
  }

  void onTapPage(int page) {
    this.page = page;
    notifyListeners();
  }
}
