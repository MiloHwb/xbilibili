import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:provider/provider.dart';
import 'package:xbilibili/entity/live_entity.dart';
import 'package:xbilibili/page/main_page/home_page/live_page/partitions.dart';
import 'package:xbilibili/providers/live_page_provider.dart';
import 'package:xbilibili/route/routes.dart';

import 'cards.dart';

/*
 * @ 创建者       milohuang
 * @ 创建时间     2020/1/21 15:39
 * @ 描述         
 */
class LivePage extends StatefulWidget {
  @override
  _LivePageState createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> with AutomaticKeepAliveClientMixin {
  final List<String> cardPics = [
    'http://i0.hdslb.com/bfs/vc/dcfb14f14ec83e503147a262e7607858b05d7ac0.png',
    'http://i0.hdslb.com/bfs/vc/c666c6dc2d5346e0d3cfda7162914d84d16964dd.png',
    'http://i0.hdslb.com/bfs/vc/8f7134aa4942b544c4630be3e042f013cc778ea2.png',
    'http://i0.hdslb.com/bfs/live/8fd5339dac84ec34e72f707f4c3b665d0aa41905.png',
    'http://i0.hdslb.com/bfs/live/827033eb0ac50db3d9f849abe8e39a5d3b1ecd53.png',
    'http://i0.hdslb.com/bfs/live/a7adae1f7571a97f51d60f685823acc610d00a7e.png',
    'http://i0.hdslb.com/bfs/vc/9bfde767eae7769bcaf9156d3a7c4df86632bd03.png',
    'http://i0.hdslb.com/bfs/vc/973d2fe12c771207d49f6dff1440f73d153aa2b2.png',
    'http://i0.hdslb.com/bfs/vc/976be38da68267cab88f92f0ed78e057995798d6.png',
    'https://i0.hdslb.com/bfs/vc/ff03528785fc8c91491d79e440398484811d6d87.png',
  ];
  final List<String> cardNames = [
    '英雄联盟',
    'lol云顶之弈',
    '王者荣耀',
    '娱乐',
    '单机',
    '电台',
    '怪物猎人:世界',
    '无主之地3',
    '第五人格',
    '全部标签',
  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      floatingActionButton: _buildFloatingActionButton(context),
      body: FutureBuilder(
        future: _getLiveData(context),
        builder: (BuildContext context, AsyncSnapshot<Null> snapshot) {
          return RefreshIndicator(
            color: Theme.of(context).primaryColor,
            onRefresh: () {
              return _getLiveData(context);
            },
            child: Consumer<LivePageProvider>(
              builder: (context, value, child) {
                Widget child;
                if (value.data == null) {
                  child = Container();
                } else {
                  child = _buildListView(context, value.data);
                }
                return child;
              },
            ),
          );
        },
      ),
    );
  }

  Widget _buildListView(BuildContext context, LiveData data) {
    return ListView(
      physics: ClampingScrollPhysics(),
      children: <Widget>[
        _buildBanner(data.banner),
        Cards(cardPics: cardPics, cardNames: cardNames),
        Partitions(data.partitions),
      ],
    );
  }

  //构建Banner
  _buildBanner(List<LiveDataBanner> banner) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 100,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        child: Swiper(
          autoplay: true,
          itemCount: banner.length,
          itemBuilder: (BuildContext context, int index) {
            return  Image.network(
              banner[index].pic,
              fit: BoxFit.cover,
            );
          },
        ),
      ),
    );
  }

  Future<Null> _getLiveData(context) async {
    await Provider.of<LivePageProvider>(context, listen: false).getLiveData();
  }

  //构建悬浮按钮
  FloatingActionButton _buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).pushNamed(RouteName.loginPage);
      },
      backgroundColor: Theme.of(context).primaryColor,
      child: Container(
        padding: EdgeInsets.all(5),
        child: Text(
          '我要直播',
          style: TextStyle(color: Colors.white, fontSize: 15),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
