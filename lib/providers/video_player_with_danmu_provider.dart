import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:xbilibili/api/http_method.dart';
import 'package:xbilibili/entity/video_detail_entity.dart';
import 'package:xbilibili/view/danmuku/danmuku_item.dart';
import 'package:xml/xml.dart' as xml;

class VideoPlayerPageWithDanmuProvider with ChangeNotifier {
  bool getVideoDetailIsOk = false;
  VideoDetailEntity videoDetail;
  bool isInitVideoOk = false;
  String msg = '正在初始化';
  int page = 0;
  List<DanmukuItem> preList = [];

  String aid;

  VideoPlayerPageWithDanmuProvider({@required String aid}) {
    this.aid = aid;
    print('aid $aid');

//    getVideoDetail(aid: aid);
  }

  Future<VideoDetailEntity> getVideoDetail({@required String aid}) async {
    VideoDetailEntity videoDetailEntity = await HttpMethod.getVideoDetail(aid: aid);
    this.videoDetail = videoDetailEntity;
    if (videoDetailEntity != null) {
      getVideoDetailIsOk = true;
    } else {
      Fluttertoast.showToast(msg: '获取视频信息失败');
    }

    notifyListeners();
    return this.videoDetail;
  }

  void initVideo() async {
    isInitVideoOk = false;
    int tempPage = page;
    if (this.videoDetail == null) {
      notifyListeners();
      return;
    }
    if (tempPage == page) {
      this.msg = '正在获取弹幕';
      notifyListeners();
    }
    return;
  }

  Future<Map<String, Object>> getPlayUrl() async {
    int tempPage = page;
    if (tempPage == page) {
      this.msg = '正在获取视频链接';
    }
    var urlMap = await HttpMethod.getVideoPlayUrlV3(
      aid: this.aid,
      cid: videoDetail.data.pages[tempPage].cid.toString(),
    );

    if (urlMap == null && tempPage == page) {
      Fluttertoast.showToast(msg: '获取视频链接失败');
      this.msg = '获取视频链接失败';
      notifyListeners();
      return null;
    }

    if (tempPage == page) {
      this.msg = '正在缓冲视频';
      notifyListeners();
    } else {
      return null;
    }
    return {'tempPage': tempPage, 'urlMap': urlMap};
  }

  Future<void> getDanmuku() async {
    var data = await HttpMethod.getDanmukuUrl(url: this.videoDetail.data.pages[page].dmlink);
    if (data != null) {
      xml.XmlDocument document = xml.parse(data);
      var res = document.findAllElements('d').toList();
      for (var item in res) {
        String msg = item.firstChild.toString();
        String p = item.attributes[0].value.toString();
        List<String> ps = p.split(',');
        int time = (double.parse(ps[0]) * 1000.0).toInt();
        preList.add(DanmukuItem(msg, time));
      }
      //排序
      preList.sort((a, b) {
        return a.duration.compareTo(b.duration);
      });
    }
  }

  void setInitOk() {
    isInitVideoOk = true;
    notifyListeners();
  }

  void onTapPage(int page) {
    isInitVideoOk = false;
    notifyListeners();

//    this.page = page;
//    notifyListeners();
  }
}
