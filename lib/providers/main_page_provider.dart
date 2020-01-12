import 'package:flutter/material.dart';

class MainPageProvider with ChangeNotifier {
  int currentIndex = 0; //当前页面索引
  DateTime lastClick; //最后一次点击返回的时间
  final scaffoldKey = GlobalKey<ScaffoldState>();

  setCurrentIndex(int index) {
    this.currentIndex = index;
    notifyListeners();
  }

  setLastClick(DateTime lastClick) {
    this.lastClick = lastClick;
  }
}
