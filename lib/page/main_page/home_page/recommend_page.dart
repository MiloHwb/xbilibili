import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:xbilibili/entity/recommend_entity.dart';
import 'package:xbilibili/providers/recommend_page_provider.dart';

/*
 * @ 创建者       milohuang
 * @ 创建时间     2020/1/21 15:40
 * @ 描述         
 */
class RecommendPage extends StatelessWidget {
  final controller = RefreshController(initialRefresh: true);

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      controller: controller,
      physics: ScrollPhysics(),
      onRefresh: () {
        getRecommendList(context, isRefresh: true);
      },
      onLoading: () {
        getRecommendList(context);
      },
      enablePullDown: true,
      enablePullUp: true,
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
      child: Consumer<RecommendPageProvider>(builder: (context, value, child) {
        Widget child;
        if (value.list.length == 0) {
          child = Container();
        } else {
          child = Container(
            padding: EdgeInsets.all(10),
            child: GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.8,
              children: value.list.map((RecommendData data) {
                return _buildRecommendItem(context, data);
              }).toList(),
            ),
          );
        }

        return child;
      }),
    );
  }

  Widget _buildRecommendItem(BuildContext context, RecommendData data) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.network(
                data.cover + "@320w_200h",
                fit: BoxFit.fitHeight,
              ),
            ],
          ),
        ],
      ),
    );
  }

  getRecommendList(context, {bool isRefresh = false}) async {
    print('获取推荐列表 isRefresh = $isRefresh');

    await Provider.of<RecommendPageProvider>(context, listen: false)
        .getRecommendData(isRefresh: isRefresh);
    if (isRefresh) {
      controller.refreshCompleted();
    } else {
      controller.loadComplete();
    }
  }
}
