import 'package:flutter/material.dart';
import 'package:xbilibili/api/http_method.dart';
import 'package:xbilibili/entity/search_result_entity.dart';

class SearchResultPageProvider with ChangeNotifier {
  final Map<String, String> searchOrderList = {
    "default": "默认排序",
    "view": "播放多",
    "danmaku": "弹幕多",
    "pubdate": "新发布",
  };
  String searchOrder = "default";
  String searchText;
  List<SearchResultDataItem> list = [];
  SearchController searchController = SearchController();
  int pn = 1;

  SearchResultPageProvider({this.searchText}) {
    search(keyWord: this.searchText);
  }

  search({@required String keyWord}) async {
    print('search = ' + keyWord);
    this.searchText = keyWord;
    pn = 1;
    list.clear();
    searchController.status = SearchController.loading;
    notifyListeners();
    list.addAll(await HttpMethod.search(keyWord: keyWord, pn: pn, order: searchOrder));
    if (list.length > 0) {
      searchController.status = SearchController.success;
    } else {
      searchController.status = SearchController.error;
    }
    notifyListeners();
  }

  searchMore({@required String keyWord}) async {
    pn++;
    list.addAll(await HttpMethod.search(keyWord: keyWord, pn: pn, order: searchOrder));
    notifyListeners();
  }

  setSearchOrder(String searchOrder) {
    this.searchOrder = searchOrder;
    search(keyWord: this.searchText);
  }
}

class SearchController {
  static int error = -1;
  static int success = 0;
  static int loading = 1;
  static int video = 0;
  static int live = 4;
  int status = loading;

  SearchController();
}
