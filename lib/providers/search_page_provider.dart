import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:xbilibili/entity/search_hot_model.dart';
import 'package:xbilibili/utils/storage.dart';

class SearchPageProvider with ChangeNotifier {
  static const String hotKey = "hotSearchList";
  List<ListModel> list = [];
  List<String> historyList = [];

  setSearchHotList(List<ListModel> list) {
    this.list = list;
    notifyListeners();
  }

  //插入一条数据
  insertHistoryData(String keyWord) async {
    print('插入一条数据');
    List historyList = json.decode(await Storage.getString(hotKey));
    bool hasData = historyList.any((v) => v == keyWord);
    if (!hasData) {
      historyList.insert(0, keyWord);
    } else {
      historyList.remove(keyWord);
      historyList.insert(0, keyWord);
    }

    if (historyList.length > 8) {
      historyList.removeRange(8, historyList.length);
    }

    await Storage.setString(hotKey, json.encode(historyList));
    this.historyList = json.decode(await Storage.getString(hotKey));
    notifyListeners();
  }

  getHistoryData() async {
    this.historyList = json.decode(await Storage.getString(hotKey));
    notifyListeners();
  }

  //删除搜索历史
  removeHistory() async {
    await Storage.remove(hotKey);
    this.historyList = json.decode(await Storage.getString(hotKey));
    notifyListeners();
  }
}
