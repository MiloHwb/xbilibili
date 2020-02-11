import 'package:flutter/material.dart';
import 'package:xbilibili/api/http_method.dart';
import 'package:xbilibili/entity/search_result_entity.dart';

class SearchResultPageProvider with ChangeNotifier {
  String searchText;

  SearchResultPageProvider({this.searchText});

  search({@required String keyWord, @required int pn, String order = 'default'}) async {
    SearchResultEntity searchResult =
        await HttpMethod.search(keyWord: keyWord, pn: pn, order: order);
    print('object');

  }
}
