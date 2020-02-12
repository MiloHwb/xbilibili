import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xbilibili/entity/search_result_entity.dart';
import 'package:xbilibili/providers/search_page_provider.dart';
import 'package:xbilibili/providers/search_result_page_provider.dart';
import 'package:xbilibili/r.dart';
import 'package:xbilibili/route/routes.dart';

import 'search_bar.dart';

/*
 * @ 创建者       黄文彪
 * @ 创建时间     2020/2/11 20:25
 * @ 描述         
 */
class SearchResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    var provider = Provider.of<SearchResultPageProvider>(context, listen: false);
//    provider.search(keyWord: provider.searchText);
    return Scaffold(
      appBar: SearchBar(
        onSubmitted: (text) {
          if (text == '') {
            return;
          }
          // 搜索
          Provider.of<SearchPageProvider>(context, listen: false).insertHistoryData(text);
          Provider.of<SearchResultPageProvider>(context, listen: false).search(keyWord: text);
        },
      ),
      body: _buildSearchResult(context),
    );
  }

  Widget _buildSearchResult(BuildContext context) {
    return Consumer<SearchResultPageProvider>(
      builder: (context, provider, child) {
        Widget child;

        var status = provider.searchController.status;
        if (status == SearchController.error) {
          //加载失败
          child = _buildErrorView();
        } else if (status == SearchController.loading) {
          child = _buildLoadingView();
        } else {
          child = _buildResultView(context, provider);
        }

        return child;
      },
    );
  }

  Widget _buildResultView(BuildContext context, SearchResultPageProvider provider) {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey[300], width: 0.5)),
          ),
          alignment: Alignment.center,
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  //todo
                  selectorSearchOrder(context, provider);
                },
                child: Text(provider.searchOrderList[provider.searchOrder]),
              ),
              Text("全部时长"),
              Text("全部分区"),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: provider.list.length,
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              if (index >= provider.list.length - 1) {
                provider.searchMore(keyWord: provider.searchText);
              }
              return _buildSearchItem(context, provider.list[index]);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSearchItem(context, SearchResultDataItem item) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey[300], width: 0.5)),
      ),
      padding: EdgeInsets.all(10),
      height: 120,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushNamed(RouteName.videoPlayerPageWithDanmu, arguments: item.param);
        },
        child: Row(
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  ConstrainedBox(
                    constraints: BoxConstraints.expand(),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: Image.network(
                        item.cover,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 5,
                    bottom: 3,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Text(
                        item.duration,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      item.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  Text(
                    item.author,
                    maxLines: 1,
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    "播放 ${getView(item.play)} 弹幕 ${getView(item.danmaku)}",
                    style: TextStyle(fontSize: 12),
                    maxLines: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Center _buildLoadingView() {
    return Center(
      child: Container(
        child: Text("正在搜索..."),
      ),
    );
  }

  Center _buildErrorView() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 100,
            width: 100,
            child: Image.asset(R.imagesImgTipsErrorLoadError),
          ),
          Text('加载失败了'),
        ],
      ),
    );
  }

  getView(int count) {
    if (count != null) {
      return count > 10000 ? (count ~/ 10000).toString() + "万" : count.toString();
    } else {
      return "--";
    }
  }

  void selectorSearchOrder(BuildContext context, SearchResultPageProvider provider) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        contentPadding: EdgeInsets.zero,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: provider.searchOrderList.keys.map((key) {
            return FlatButton(
              onPressed: () {
                provider.setSearchOrder(key);
                Navigator.of(context).pop();
              },
              child: Text(provider.searchOrderList[key]),
            );
          }).toList(),
        ),
      ),
    );
  }
}
