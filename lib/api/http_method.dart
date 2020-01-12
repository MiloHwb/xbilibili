import 'dart:convert';
import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:xbilibili/entity/channel_list_model.dart';

import 'http_config.dart';

Dio dio = Dio();

init() {
  (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (HttpClient client) {
    client.findProxy = (uri) {
      return 'PROXY 192.168.137.1:8888';
    };
    client.badCertificateCallback = (X509Certificate cert, String host, int port) {
      return true;
    };
  };
}


class HttpMethod {
  static Future<ChannelListModel> getChannelList() async {
//    try {
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
        print(responseStr);

        var channelListModel = ChannelListModel.fromJson(json.decode(responseStr));
        return channelListModel;
      } else {
        throw Exception('接口异常');
      }
//    } catch (e) {
//      print(e);
//      throw e;
//    }
  }
}
