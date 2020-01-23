import 'package:flutter/material.dart';
import 'package:xbilibili/api/http_method.dart';
import 'package:xbilibili/entity/recommend_entity.dart';

class RecommendPageProvider with ChangeNotifier {
  List<RecommendData> list = [];

  _setLiveData(List<RecommendData> list, {bool isRefresh = false}) {
    if (isRefresh) {
      this.list.clear();
    }
    this.list.addAll(list);

    notifyListeners();
  }

  getRecommendData({bool isRefresh = false}) async {
    var recommendEntity = await HttpMethod.getRecommendList();

    _setLiveData(recommendEntity.data, isRefresh: isRefresh);
  }
}
