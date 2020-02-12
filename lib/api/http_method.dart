import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:xbilibili/entity/channel_list_model.dart';
import 'package:xbilibili/entity/hot_entity.dart';
import 'package:xbilibili/entity/live_entity.dart';
import 'package:xbilibili/entity/live_info_entity.dart';
import 'package:xbilibili/entity/live_url_entity.dart';
import 'package:xbilibili/entity/mall_list_model.dart';
import 'package:xbilibili/entity/recommend_entity.dart';
import 'package:xbilibili/entity/reply_entity.dart';
import 'package:xbilibili/entity/search_hot_model.dart';
import 'package:xbilibili/entity/search_result_entity.dart';
import 'package:xbilibili/entity/video_detail_entity.dart';
import 'package:xbilibili/entity/video_detail_v3_entity.dart';
import 'package:xbilibili/entity/video_url_entity.dart';
import 'package:xbilibili/generated/json/base/json_convert_content.dart';

import 'http_config.dart';

bool isProxyChecked = false; // a variable for debug
Dio dio = Dio();

init() {
  (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (HttpClient client) {
    client.badCertificateCallback = (X509Certificate cert, String host, int port) {
      return isProxyChecked && Platform.isAndroid;
    };
    client.findProxy = (url) {
      return isProxyChecked ? 'PROXY 10.90.1.107:8888' : 'DIRECT';
    };
  };
}

class HttpMethod {
  //获取频道列表
  static Future<ChannelListModel> getChannelList() async {
    try {
      Response response = await dio.get(Url.channelUrl, queryParameters: {
        'appkey': '1d8b6e7d45233436',
        'build': '5370000',
        'channel': 'huawei',
        'login_event': '1',
        'mobi_app': 'android',
        'platform': 'android',
        'ts': '1557534415',
        'sign': '1f43ef46c4bf2d4d738ab7af0f809b3d',
      });
      if (response.statusCode == 200) {
        var responseStr = response.data;

        var channelListModel = ChannelListModel.fromJson(responseStr);
        return channelListModel;
      } else {
        throw Exception('接口异常');
      }
    } catch (e) {
      print(e);
      throw e;
    }
  }

  //获取搜索热门
  static Future<SearchHotModel> getSearchHot() async {
    try {
      var response = await dio.get(Url.searchHotUrl);
      if (response.statusCode == 200) {
        var responseStr = response.data;

        var searchHotModel = SearchHotModel.fromJson(responseStr);
        return searchHotModel;
      } else {
        throw Exception('接口异常');
      }
    } catch (e) {
      print(e);
      throw e;
    }
  }

  //会员购列表
  static Future<MallListModel> getMallList() async {
    try {
      var response = await dio.get(Url.mallUrl);
      if (response.statusCode == 200) {
        var responseStr = response.data;

        var mallListModel = MallListModel.fromJson(responseStr);
        return mallListModel;
      } else {
        throw Exception('接口异常');
      }
    } catch (e) {
      print(e);
      throw e;
    }
  }

  //获取直播列表
  static Future<LiveEntity> getLiveList() async {
    try {
      var response = await dio.get(Url.liveUrl);
      if (response.statusCode == 200) {
        var responseStr = response.data;
        var liveEntity = JsonConvert.fromJsonAsT<LiveEntity>(responseStr);
        return liveEntity;
      } else {
        throw Exception('接口异常');
      }
    } catch (e) {
      print(e);
      throw e;
    }
  }

  //获取推荐列表
  static Future<RecommendEntity> getRecommendList() async {
    try {
      var response = await dio.get(Url.recommendUrl);
      if (response.statusCode == 200) {
        var responseStr = response.data;
        var recommendEntity = JsonConvert.fromJsonAsT<RecommendEntity>(responseStr);
        return recommendEntity;
      } else {
        throw Exception('接口异常');
      }
    } catch (e) {
      print(e);
      throw e;
    }
  }

  //获取热门列表
  static Future<HotEntity> getHotList({int idx = 0}) async {
    try {
      var url = Url.hotUrl;
      if (idx != null) {
        url = url + '&idx=$idx';
      }
      var response = await dio.get(url);
      if (response.statusCode == 200) {
        var responseStr = response.data;
//        printWrapped(responseStr.toString());

        var hotEntity = JsonConvert.fromJsonAsT<HotEntity>(responseStr);
        return hotEntity;
      } else {
        throw Exception('接口异常');
      }
    } catch (e) {
      print(e);
      throw e;
    }
  }

  //获取直播信息
  static Future<LiveInfoEntity> getLiveInfo({@required String roomid}) async {
    try {
      var url = Url.liveInfoUrl;
      var response = await dio.get(url, queryParameters: {'id': roomid});
      if (response.statusCode == 200) {
        var responseStr = response.data;

        var liveInfoEntity = JsonConvert.fromJsonAsT<LiveInfoEntity>(responseStr);
        return liveInfoEntity;
      } else {
        throw Exception('接口异常');
      }
    } catch (e) {
      print(e);
      throw e;
    }
  }

  //获取直播url
  static Future<LiveUrlEntity> getLivePlayUrl({@required String roomid}) async {
    try {
      var url = Url.livePlayUrl;
      var response = await dio.get(url, queryParameters: {
        'build': '5470400',
        'device': 'android',
        'cid': roomid,
      });
      if (response.statusCode == 200) {
        var responseStr = response.data;

        var liveUrlEntity = JsonConvert.fromJsonAsT<LiveUrlEntity>(responseStr);
        return liveUrlEntity;
      } else {
        throw Exception('接口异常');
      }
    } catch (e) {
      print(e);
      throw e;
    }
  }

  //获取视频详情
  static Future<VideoDetailEntity> getVideoDetail({@required String aid}) async {
    try {
      var url = Url.videoDetailUrl;
      String appSecret = '560c52ccd288fed045859ed18bffd973';

      String data =
          'aid=$aid&appkey=1d8b6e7d45233436&build=5480400&ts=${DateTime.now().millisecondsSinceEpoch}';

      String sign = md5.convert(utf8.encode(data + appSecret)).toString();
      url = url + '?$data&sign=$sign';
      print(url);
      var response = await dio.get(url);
      if (response.statusCode == 200) {
        var responseStr = response.data;

        var videoDetailEntity = JsonConvert.fromJsonAsT<VideoDetailEntity>(responseStr);
        return videoDetailEntity;
      } else {
        throw Exception('接口异常');
      }
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<VideoUrlEntity> getVideoPlayUrlV2({@required String cid, int qn = 64}) async {
    try {
      var url = Url.getVideoPlayUrlV2;
      String appSecret = 'aHRmhWMLkdeMuILqORnYZocwMBpMEOdt';

      String data =
          'appkey=iVGUTjsxvpLeuDCf&build=500001&buvid=C0928256-085D-4722-A38F-2E343710C8B3155817infoc&cid=$cid&device=android&otype=json&platform=android&qn=$qn';

      String sign = md5.convert(utf8.encode(data + appSecret)).toString();
      url = url + '?$data&sign=$sign';
      print(url);
      var response = await dio.get(url);
      if (response.statusCode == 200) {
        var responseStr = response.data;

        var videoUrlEntity = JsonConvert.fromJsonAsT<VideoUrlEntity>(responseStr);
        return videoUrlEntity;
      } else {
        throw Exception('接口异常');
      }
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<ReplyEntity> getReplyUrl({@required String aid, int next: 0}) async {
    try {
      var url = Url.getReplyUrl;
      var response = await dio.get(url, queryParameters: {
        'appkey': '1d8b6e7d45233436',
        'build': '5370000',
        'mobi_app': 'android',
        'type': '1',
        'next': next,
        'oid': aid,
      });
      if (response.statusCode == 200) {
        var responseStr = response.data;

        var replyEntity = JsonConvert.fromJsonAsT<ReplyEntity>(responseStr);
        return replyEntity;
      } else {
        throw Exception('接口异常');
      }
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static getDanmukuUrl({@required String url}) async {
    try {
      var response = await dio.get(
        Url.getDanmukuUrl,
        queryParameters: {
          'url': url,
        },
        options: Options(
          contentType: "text/xml",
          sendTimeout: 5000,
          receiveTimeout: 5000,
        ),
      );
      if (response.statusCode == 200) {
        var responseStr = response.data;
        return responseStr;
      } else {
        throw Exception('接口异常');
      }
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<Map<String, String>> getVideoPlayUrlV3(
      {@required String aid, @required String cid, int qn = 64}) async {
    try {
      var url = Url.getVideoPlayUrlV3;
      String appSecret = 'aHRmhWMLkdeMuILqORnYZocwMBpMEOdt';
      int ts = DateTime.now().millisecondsSinceEpoch;

      String data =
          "actionkey=appkey&aid=$aid&appkey=iVGUTjsxvpLeuDCf&build=5490400&buvid=XZF9F55FE566C57599024A397F5F160E74DBE&cid=$cid&device=android&expire=0&fnval=16&fnver=0&force_host=0&fourk=0&from_spmid=tm.recommend.0.0&mid=0&mobi_app=android&otype=json&platform=android&qn=$qn&spmid=main.ugc-video-detail.0.0&ts=$ts";
      String sign = md5.convert(utf8.encode(data + appSecret)).toString();
      url = url + '?$data&sign=$sign';
      print('getVideoPlayUrlV3 = ' + url);
      var response = await dio.get(url);
      if (response.statusCode == 200) {
        var responseStr = response.data;
        var videoDetailV3Entity = JsonConvert.fromJsonAsT<VideoDetailV3Entity>(responseStr);
        if (videoDetailV3Entity != null && videoDetailV3Entity.data != null) {
          if (videoDetailV3Entity.data.dash != null) {
            String vl;
            for (var jd in videoDetailV3Entity.data.dash.video) {
              if (jd.id == qn) {
                vl = jd.baseUrl;
                break;
              }
            }
            vl = vl ?? videoDetailV3Entity.data.dash.video[0].baseUrl;
            String al = videoDetailV3Entity.data.dash.audio[0].baseUrl;
            return {"video_url": vl, "audio_url": al};
          } else if (videoDetailV3Entity.data.durl != null) {
            String vl = videoDetailV3Entity.data.durl[0].url;
            return {"video_url": vl, "audio_url": null};
          }
        }

        return null;
      } else {
        throw Exception('接口异常');
      }
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<List<SearchResultDataItem>> search(
      {@required String keyWord, @required int pn, String order = 'default'}) async {
    List<SearchResultDataItem> searchResultList = List();
    try {
      var url = Url.searchUrl;
      var response = await dio.get(url, queryParameters: {
        'appkey': '1d8b6e7d45233436',
        'build': '5370000',
        'pn': pn,
        'ps': '15',
        'keyword': keyWord,
        'order': order,
      });
      if (response.statusCode == 200) {
        var responseStr = response.data;

        var searchResultEntity = JsonConvert.fromJsonAsT<SearchResultEntity>(responseStr);
        if (searchResultEntity != null) {
          for (var item in searchResultEntity.data.item) {
            if (item.linktype == 'video') {
              var data = SearchResultDataItem();
             data.play=item.play;
             data.danmaku=item.danmaku;
             data.title=item.title;
             data.duration=item.duration;
             data.cover='http:'+item.cover;
             data.author=item.author;
             data.desc=item.desc;
             data.param=item.param;
              searchResultList.add(data);
            }
          }
        }
      } else {
        throw Exception('接口异常');
      }
      return searchResultList;
    } catch (e) {
      print(e);
      return searchResultList;
    }
  }

  static void printWrapped(String text) {
    final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern.allMatches(text).forEach((match) => print(match.group(0)));
  }
}
