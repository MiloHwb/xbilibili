import 'package:flutter/material.dart';
import 'package:xbilibili/entity/anniversary70_model.dart';

class Anniversary70PageProvider with ChangeNotifier {
  final List list = [
    Anniversary70Banners([
      Anniversary70Banner(
          "http://i0.hdslb.com/bfs/archive/fc523c90d05bade49143294262a3a297da2a5d55.jpg"),
      Anniversary70Banner(
          "http://i0.hdslb.com/bfs/archive/77da52bb418a4d7f959805d68779cc677c0cb71c.jpg"),
      Anniversary70Banner(
          "http://i0.hdslb.com/bfs/archive/02127e444fd82aab723c7747f57d5c903c602605.jpg"),
    ]),
    Anniversary70VideoTile("手造中国", [
      Anniversary70VideoItem(
          "15500607",
          "http://i1.hdslb.com/bfs/archive/69b341351180227d90b54cd61297177b643642c5.jpg",
          "91岁仍坚守方桌，剪艺宗师袁秀莹与她的剪纸人生",
          "趣味科普人文",
          "4.6万",
          "163",
          "3:23"),
      Anniversary70VideoItem(
          "10146180",
          "http://i0.hdslb.com/bfs/archive/0baf3c2bc01200caecffdefd1eb9908d474aa4ac.jpg",
          "被称为中国三宝之一的它，却不及日本，面临失传",
          "趣味科普人文",
          "14.4万",
          "296",
          "4:17"),
      Anniversary70VideoItem(
          "13963830",
          "http://i0.hdslb.com/bfs/archive/2356a444ee4dd26bb830fe834dd3d1dddb4af955.jpg",
          "从一根青竹变成一摞纸，都发生了什么？",
          "趣味科普人文",
          "9万",
          "546",
          "3:02"),
      Anniversary70VideoItem(
          "15902489",
          "http://i2.hdslb.com/bfs/archive/2d21750c9cd9a3707c583a98e4a8fff3000c1c3e.jpg",
          "他用编竹子的手艺，编出了年收108亿的传奇",
          "趣味科普人文",
          "7.1万",
          "362",
          "4:25"),
    ]),
    Anniversary70BigCover(
        "http://i1.hdslb.com/bfs/archive/685562c7df25a391723490d36354fd1440c0e2d4.jpg",
        "68129825",
        "外交高手”大熊猫：为国卖萌，应该的",
        "9968",
        "42"),
    Anniversary70BigCover(
        "http://i0.hdslb.com/bfs/archive/ee5829877e348ca9b69e7fb88dd72e3925514dce.jpg",
        "68098480",
        "黄河亮了！“人民红”点亮黄河沿岸 向祖国表白",
        "2381",
        "9"),
    Anniversary70BigCover(
        "http://i2.hdslb.com/bfs/archive/05d92363b590b1bf013dd6f9d3377d16e5557740.png",
        "3924328",
        "我在故宫修文物（2016）",
        "532.4万",
        "10万"),
  ];

  getList() {
    notifyListeners();
  }
}
