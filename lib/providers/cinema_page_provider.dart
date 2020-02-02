import 'package:flutter/material.dart';
import 'package:xbilibili/entity/cinema_model.dart';

class CinemaPageProvider with ChangeNotifier {
  final List list = [
    CinemaBanners(
      [
        CinemaBanner("http://i0.hdslb.com/bfs/bangumi/6a11174b96970c2239f9f5064c57e59af70171a6.jpg",
            "吴青峰：怼粉这种事，都是靠灵感"),
        CinemaBanner("http://i0.hdslb.com/bfs/bangumi/4c58a6e3d6c9901251250ee4ef9ff5696e3c1db0.jpg",
            "中国千年的礼乐智慧"),
        CinemaBanner("http://i0.hdslb.com/bfs/bangumi/98182d952ce44c6d378be97264e7bda0b0fd4c88.jpg",
            "一群有能力、有怪癖又可爱的退休警察们"),
        CinemaBanner("http://i0.hdslb.com/bfs/bangumi/923bfb36c57cd643afb6a6c48594695372ff4a72.jpg",
            "破解冻土难题，改写国际预言"),
        CinemaBanner("http://i0.hdslb.com/bfs/bangumi/5afd0231d665fd2ee29c376c292a8b3f0203384b.jpg",
            "实拍战机空中机油~"),
      ],
    ),
    CinemaRegions([
      CinemaRegion(
          "http://i0.hdslb.com/bfs/bangumi/85e80d8bb430e76eb3e55bbf93d8a62a51e2a774.png", "纪录片"),
      CinemaRegion(
          "http://i0.hdslb.com/bfs/bangumi/a1901aedc680a77c808787cb2cf8e22c7b9c359b.png", "电影"),
      CinemaRegion(
          "http://i0.hdslb.com/bfs/bangumi/21bd3247c745e3f1eb489bf637215f8cc8aa86ca.png", "电视剧"),
      CinemaRegion(
          "http://i0.hdslb.com/bfs/bangumi/e713a764f9146b73673ba9b126d963aa50f4fc3b.png", "热门榜单"),
      CinemaRegion(
          "http://i0.hdslb.com/bfs/bangumi/2cb9f70ac8dd4c23ccbfa3c5f8c6cae9549f0058.png", "哈利波特"),
    ]),
    CinemaTile(
        "纪录片热播",
        [
          CinemaItem("守护解放西", "9月14日，警动全城", "14.2万追剧",
              "http://i0.hdslb.com/bfs/bangumi/29e7ea9cf0a619618841caeca1a61032e4f0a2c6.jpg"),
          CinemaItem(
            "真实的残酷宫斗",
            "亨利八世6位皇后",
            "",
            "http://i0.hdslb.com/bfs/bangumi/5a95404be7ecacc69167c3eb5e4d3b5383bef25b.png",
          ),
          CinemaItem("人生一串2", "上串开吃！", "236.4万系列追剧",
              "http://i0.hdslb.com/bfs/bangumi/7db272b2e887bb3615a8aee29cf4ed839dc54e82.png",
              badge: "限时免费"),
          CinemaItem(
            "糟糕的历史",
            "最魔性历史纪录片",
            "22.6万系列追剧",
            "http://i0.hdslb.com/bfs/bangumi/f3091de24e5ff374ae3920513fecce70a63dc039.jpg",
          ),
          CinemaItem(
            "FOX的北极之旅",
            "感受北欧极致壮美",
            "",
            "http://i0.hdslb.com/bfs/bangumi/2a2b86986e3e4fcb183f0a282c439bc5f130e9e6.jpg",
          ),
          CinemaItem(
            "我们该玩电子游戏吗",
            "游戏有助身心健康？",
            "26.2万系列追剧",
            "http://i0.hdslb.com/bfs/bangumi/acda1d7fd8565706b5fd0cb9c0f7b40813467fcc.jpg",
          ),
        ],
        style: CinemaTile.vCard),
    CinemaTile(
        "电影热播",
        [
          CinemaItem("哈利·波特与死亡圣器(下)", "终极之战打响", "71万系列追剧",
              "http://i0.hdslb.com/bfs/bangumi/abcafcf95a0853f709d735f10561b993d0fc05bd.jpg",
              badge: "会员专享"),
          CinemaItem("哈利·波特与死亡圣器(上)", "三人组寻找魂器", "71万系列追剧",
              "http://i0.hdslb.com/bfs/bangumi/d435abc79671d66ce826eea03911b3d3074d27b7.jpg",
              badge: "会员专享"),
          CinemaItem("蜘蛛侠：英雄远征", "小蜘蛛登陆B站！", "14.6万追剧",
              "http://i0.hdslb.com/bfs/bangumi/37ecc29ada354bc61b9e237203fff3f4f358f731.jpg",
              badge: "会员半价"),
          CinemaItem("罗生门", "黑泽明经典悬疑神作", "2.6万追剧",
              "http://i0.hdslb.com/bfs/bangumi/9050447827d4c7fd88f6a8c536b84e3a0e1b6912.jpg"),
          CinemaItem("我想吃掉你的胰脏", "免费首播！", "73.6万追剧",
              "http://i0.hdslb.com/bfs/bangumi/fd5891a000ecdf6e76fdfea1fc204776f728c9ba.jpg"),
          CinemaItem("东京物语", "东京真的太远了", "9992追剧",
              "http://i0.hdslb.com/bfs/bangumi/42af0d04487472725d24ff3bfa01a347f87e7248.jpg"),
        ],
        style: CinemaTile.vCard),
    CinemaTile(
        "电视剧热播",
        [
          CinemaItem("大恋爱", "和喜欢的人一起吃饭", "1.9万追剧",
              "http://i0.hdslb.com/bfs/bangumi/29e7ea9cf0a619618841caeca1a61032e4f0a2c6.jpg"),
          CinemaItem("万福", "你醒啦", "1.3万追剧",
              "http://i0.hdslb.com/bfs/bangumi/4c6748f24b0cee23fe71d387a820e7b1e651ccb3.jpg",
              badge: "会员抢先"),
          CinemaItem(
            "双姝 第二季",
            "即将上线",
            "15.6万系列追剧",
            "http://i0.hdslb.com/bfs/bangumi/5c104fc023c5a6f9b6f59cd83d276a8c86f4d21d.jpg",
          ),
          CinemaItem("警察之家", "是兔子还是螃蟹", "9520追剧",
              "http://i0.hdslb.com/bfs/bangumi/2bf8fb89f3a386e37e08556d89842590655f3647.png",
              badge: "会员抢先"),
          CinemaItem("萤之光 第一季", "情侣同款睡姿", "4.9万追剧",
              "http://i0.hdslb.com/bfs/bangumi/4a28a26cf87a1f9f4c5a5392b3c69a2f39d64a5c.jpg",
              badge: "限时免费"),
          CinemaItem("原以为命中注定的恋爱", "不会发生在我身上", "1.6万追剧",
              "http://i0.hdslb.com/bfs/bangumi/9c6401a78ee23cadb7c8338af517e0b1be489535.jpg",
              badge: "会员专享"),
        ],
        style: CinemaTile.card),
  ];

  getList(){
    notifyListeners();
  }
}
