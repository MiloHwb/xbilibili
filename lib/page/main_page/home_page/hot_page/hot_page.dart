import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:xbilibili/entity/hot_entity.dart';
import 'package:xbilibili/page/main_page/home_page/hot_page/av_hot.dart';
import 'package:xbilibili/page/main_page/home_page/hot_page/mid_hot.dart';
import 'package:xbilibili/providers/hot_page_provider.dart';

/*
 * @ 创建者       milohuang
 * @ 创建时间     2020/1/21 15:40
 * @ 描述         
 */
class HotPage extends StatelessWidget {
  final RefreshController _refreshController = RefreshController(initialRefresh: true);

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      controller: _refreshController,
      onRefresh: () {
        getHotList(context, isRefresh: true);
      },
      onLoading: () {
        getHotList(context);
      },
      enablePullDown: true,
      enablePullUp: true,
      header: MaterialClassicHeader(),
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
      child: Consumer<HotPageProvider>(
        builder: (context, value, child) {
          Widget child;
          if (value.topItems.length == 0 || value.data.length == 0) {
            child = Container();
          } else {
            child = _buildListView(value);
          }

          return child;
        },
      ),
    );
  }

  Widget _buildListView(HotPageProvider value) {
    return Container(
      child: ListView(
        shrinkWrap: true,
        controller: ScrollController(),
        physics: ClampingScrollPhysics(),
        children: <Widget>[
          _buildTopList(value.topItems),
          _buildHotList(value.data),
//          Text(value.data.length.toString()),
        ],
      ),
    );
  }

  //构建热门列表
  Widget _buildHotList(List<HotData> data) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: data.length,
      itemBuilder: (context, index) {
        Widget view;
        switch (data[index].goto) {
          case 'av':
            view = AvHot(data[index]);
            break;
          case 'mid':
            view = MidHot(data[index]);
            break;
          default:
            view = Container();
            break;
        }

        return view;
      },
    );
  }

  //构建顶部列表
  Widget _buildTopList(List<HotConfigTopItem> topItems) {
    return Container(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: topItems.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              children: <Widget>[
                Image.network(
                  topItems[index].icon,
                  width: 45,
                  height: 45,
                ),
                Container(
                  child: Text(
                    topItems[index].title,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void getHotList(BuildContext context, {bool isRefresh: false}) async {
    print('获取热门列表');

    var provider = Provider.of<HotPageProvider>(context, listen: false);
    await provider.getHotList(isRefresh: isRefresh);
    if (isRefresh) {
      _refreshController.refreshCompleted();
    } else {
      if (provider.idx >= 100) {
        _refreshController.loadNoData();
      } else {
        _refreshController.loadComplete();
      }
    }
  }
}
