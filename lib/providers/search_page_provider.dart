import 'package:flutter/material.dart';
import 'package:xbilibili/entity/search_hot_model.dart';

class SearchPageProvider with ChangeNotifier {
  List<ListModel> list = [];

  setSearchHotList(List<ListModel> list) {
    this.list = list;
    notifyListeners();
  }
}
