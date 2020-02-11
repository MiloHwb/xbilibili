import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:xbilibili/entity/search_hot_model.dart';
import 'package:xbilibili/utils/storage.dart';

class SearchPageProvider with ChangeNotifier {
  static const String hotKey = "hotSearchList";
  List<ListModel> list = [];
  List historyList = [];
  String searchText;

  setSearchHotList(List<ListModel> list) {
    this.list = list;
    notifyListeners();
  }

  //插入一条数据
  insertHistoryData(String keyWord) async {
    this.searchText = keyWord;
    var source = await Storage.getString(hotKey);
    if (source == null) {
      historyList = [];
    } else {
      historyList = json.decode(source);
    }
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

    var string = json.encode(historyList);

    await Storage.setString(hotKey, string);
    this.historyList = json.decode(string);
    notifyListeners();
  }

  getHistoryData() async {
    var source = await Storage.getString(hotKey);
    if (source != null) {
      this.historyList = json.decode(source);
    }
    notifyListeners();
  }

  //删除搜索历史
  removeHistory() async {
    await Storage.remove(hotKey);
    var source = await Storage.getString(hotKey);
    if (source == null) {
      historyList = [];
    } else {
      historyList = json.decode(source);
    }
    notifyListeners();
  }
}
