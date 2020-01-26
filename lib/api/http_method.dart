import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:xbilibili/entity/channel_list_model.dart';
import 'package:xbilibili/entity/hot_entity.dart';
import 'package:xbilibili/entity/live_entity.dart';
import 'package:xbilibili/entity/mall_list_model.dart';
import 'package:xbilibili/entity/recommend_entity.dart';
import 'package:xbilibili/entity/search_hot_model.dart';
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

  static void printWrapped(String text) {
    final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern.allMatches(text).forEach((match) => print(match.group(0)));
  }
}
