import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:xbilibili/providers/mall_page_privider.dart';

import 'mall_banner.dart';
import 'mall_list.dart';
import 'mall_top_block.dart';
import 'mall_top_search.dart';
import 'mall_top_section.dart';

/*
 * @ 创建者       milo
 * @ 创建时间     2020/1/11 17:07
 * @ 描述         
 */
class MallPage extends StatelessWidget {
  //分区图片列表
  final List<String> sectionImagesList = [
    'http://i0.hdslb.com/bfs/mall/mall/ff/a9/ffa981909ec568972dc476a4891c91db.png',
    'http://i0.hdslb.com/bfs/mall/mall/90/a2/90a2604b0b3ed5a4b0a8110d1c3b6b7c.png',
    'http://i0.hdslb.com/bfs/mall/mall/7f/b9/7fb9c1351a8eb1d3071d8bcbec6653b7.png',
    'http://i0.hdslb.com/bfs/mall/mall/be/58/be58af018d88ea87382960e5d5f6d322.png',
    'http://i0.hdslb.com/bfs/mall/mall/21/1c/211c98c6efdf471c4d377a2f36c74b01.png',
  ];

  //分区描述列表
  final List<String> sectionDesList = [
    '手办',
    '模型',
    '漫展演出',
    '周边',
    '全部分类',
  ];

  final List<String> blockList = [
    'http://i0.hdslb.com/bfs/mall/mall/49/c4/49c47bb4e5138edd96b04bcbc41a6488.png',
    'http://i0.hdslb.com/bfs/mall/mall/14/29/1429e0e891a351c745b4fca6136b2fc9.png',
    'http://i0.hdslb.com/bfs/mall/mall/ad/2e/ad2e11096cc4a3537bfa2d5f88938a4e.png',
  ];

  //banner列表
  final List<String> bannerList = [
    "http://i0.hdslb.com/bfs/openplatform/201905/1242x4201557282234340.jpeg",
    "http://i0.hdslb.com/bfs/openplatform/201905/1242new1557302829737.jpeg",
    "http://i1.hdslb.com/bfs/openplatform/201905/12421557397375753.jpeg",
    "http://i1.hdslb.com/bfs/openplatform/201905/BML1557480532077.jpeg",
    "http://i2.hdslb.com/bfs/openplatform/201905/12421557129720654.jpeg",
  ];

  final RefreshController _controller = RefreshController();

  @override
  Widget build(BuildContext context) {
    getMallList(context);
    return SmartRefresher(
      controller: _controller,
      enablePullUp: true,
      enablePullDown: true,
      footer: CustomFooter(
        builder: (context, LoadStatus mode) {
          Widget body;
          if (mode == LoadStatus.loading) {
            body = CupertinoActivityIndicator();
          } else {
            body = Center(
              child: Text("正在加载"),
            );
          }
          return Container(
            height: 30,
            child: body,
          );
        },
      ),
      onLoading: () {
        getMallList(context, isAppend: true);
      },
      onRefresh: () {
        getMallList(context);
      },
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          MallTopSearch(),
          MallTopSection(sectionImagesList, sectionDesList),
          MallTopBlock(blockList),
          MallBanner(bannerList),
          MallList(),
        ],
      ),
    );
  }

  getMallList(context, {bool isAppend = false}) async {
    await Provider.of<MallPageProvider>(context, listen: false).getMallList(context);
    _controller.refreshCompleted();
  }
}
