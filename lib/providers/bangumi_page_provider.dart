import 'package:flutter/material.dart';
import 'package:xbilibili/entity/bangumi_model.dart';

class BangumiProvider with ChangeNotifier {
  final List list = [
    BangumiBanners(
      [
        BangumiBanner(
            "http://i0.hdslb.com/bfs/bangumi/a085f60bda7f18226accf3993b328e17f419c00d.jpg",
            "FGO动画专题页"),
        BangumiBanner(
            "http://i0.hdslb.com/bfs/bangumi/8c39135d5191acbe0f0108ede3dbc76b6342cd36.jpg",
            "少女前线 人形小剧场：第9话"),
        BangumiBanner(
            "http://i0.hdslb.com/bfs/bangumi/105c45fa8538c897e85e44f3811eda2de2d79b85.jpg", "风起绿林"),
        BangumiBanner(
            "http://i0.hdslb.com/bfs/bangumi/20429c37693f67e5310f3b4d02f96c2b7403a6ec.jpg",
            "【一周资讯】第37期"),
      ],
    ),
    BangumiRegions([
      BangumiRegion(
          "http://i0.hdslb.com/bfs/bangumi/125ba229db0dcc3b5a9fe110ba3f4984ddc2c775.png", "番剧"),
      BangumiRegion(
          "http://i0.hdslb.com/bfs/bangumi/2c782d7a8127d0de8667321d4071eebff01ea977.png", "国创"),
      BangumiRegion(
          "http://i0.hdslb.com/bfs/bangumi/7a7d9db1911b7cbfdad44ae953dd5acc49ef5187.png", "时间表"),
      BangumiRegion(
          "http://i0.hdslb.com/bfs/bangumi/76c03a7ca20815765c7f5bc17d320e0676e15a20.png", "索引"),
      BangumiRegion(
          "http://i0.hdslb.com/bfs/bangumi/e713a764f9146b73673ba9b126d963aa50f4fc3b.png", "热门榜单"),
    ]),
    "登陆",
    BangumiTile("番剧推荐", [
      BangumiItem("猎兽神兵", "全12话", "会员抢先", "69.1万追番",
          "http://i0.hdslb.com/bfs/archive/81385f895a48a1c27a0e701218781908fb9d5dd2.jpg"),
      BangumiItem("鬼灭之刃", "更新至第24话", "会员抢先", "476.9万追番",
          "http://i0.hdslb.com/bfs/archive/efc989798673c8c374cad6e2b4fc555a8f0f3c2c.jpg"),
      BangumiItem("女高中生的虚度日常", "更新至第11话", "会员抢先", "171.1万追番",
          "http://i0.hdslb.com/bfs/archive/1c277223735cfe18a32f8130855a20c1a699f706.jpg"),
      BangumiItem("某科学的一方通行", "更新至第10话", "会员抢先", "217.2万追番",
          "http://i0.hdslb.com/bfs/archive/def29a30113e96248830b2a984c8feb6749252f4.jpg"),
    ]),
    BangumiTile("国创推荐", [
      BangumiItem("画江湖之不良人 第三季", "更新至第36话", "会员抢先", "132.8万系列追番",
          "http://i0.hdslb.com/bfs/archive/ad8fe0bbc56b951a57e02142b79b4e9e7137b2e3.jpg"),
      BangumiItem("阴阳师·平安物语", "全12话", "会员抢先", "140.8万系列追番",
          "http://i0.hdslb.com/bfs/archive/2e2198e297e98fe77b007710a3cefa9683e31898.jpg"),
      BangumiItem("我家大师兄脑子有坑 特别篇", "更新至第48话", "会员抢先", "196.8万系列追番",
          "http://i0.hdslb.com/bfs/archive/55cd9010e59c310b3ccf6281b4ec57bf44967054.jpg"),
      BangumiItem("更新至第9话", "斩兽之刃", "会员抢先", "43.9万系列追番",
          "http://i0.hdslb.com/bfs/archive/148be0d6209c7a7538998467f50dae3c6f21f322.jpg"),
    ]),
  ];

  getList(){
    notifyListeners();
  }
}
