import 'package:flutter/material.dart';
import 'package:xbilibili/entity/channel_list_model.dart';

class ChannelPageProvider with ChangeNotifier {
  List<Region> region = [];
  bool hasError = false;

  setRegions(List<Region> region) {
    this.region = region;
    this.hasError = false;
    notifyListeners();
  }

  setError(bool hasError) {
    region = [];
    this.hasError = hasError;
    notifyListeners();
  }
}
