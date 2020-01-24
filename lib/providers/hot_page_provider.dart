import 'package:flutter/material.dart';
import 'package:xbilibili/api/http_method.dart';
import 'package:xbilibili/entity/hot_entity.dart';

class HotPageProvider with ChangeNotifier {
  List<HotConfigTopItem> topItems = [];
  List<HotData> data = [];
  int idx = 0;

  getHotList({bool isRefresh = false}) async {
    if (isRefresh) {
      data.clear();
      idx = 0;
    }
    var hotEntity = await HttpMethod.getHotList(idx: idx);
    topItems = hotEntity.config.topItems;

    data.addAll(hotEntity.data);
    idx++;
    notifyListeners();
  }
}
