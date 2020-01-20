import 'package:flutter/material.dart';
import 'package:xbilibili/api/http_method.dart';
import 'package:xbilibili/entity/mall_list_model.dart';

class MallPageProvider with ChangeNotifier {
  List<ListModel> mallList = [];

  setMallList(List<ListModel> mallList, {bool isAppend = false}) async {
    if (!isAppend) {
      this.mallList.clear();
    }
    print('添加前列表长度${this.mallList.length}');
    mallList.forEach((model) {
      if (model.type == 'ticketproject' || model.type == 'mallitems') {
        this.mallList.add(model);
      }
    });
    print('添加后列表长度${this.mallList.length}');

    notifyListeners();
  }

  getMallList(context, {bool isAppend = false}) async {
    print('获取商城列表');

    var mallListModel = await HttpMethod.getMallList();
    setMallList(mallListModel.data.vo.feeds.list, isAppend: isAppend);
  }
}
