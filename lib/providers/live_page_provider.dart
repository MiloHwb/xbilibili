import 'package:flutter/material.dart';
import 'package:xbilibili/api/http_method.dart';
import 'package:xbilibili/entity/live_entity.dart';

class LivePageProvider with ChangeNotifier {
  LiveData data;

  setLiveData(LiveData data) {
    this.data = data;
    notifyListeners();
  }

  getLiveData() async {
    var liveEntity = await HttpMethod.getLiveList();
    setLiveData(liveEntity.data);
  }
}
