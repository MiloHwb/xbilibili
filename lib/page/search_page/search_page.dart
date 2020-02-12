import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xbilibili/providers/search_page_provider.dart';
import 'package:xbilibili/route/routes.dart';

import 'everyone_search.dart';
import 'search_bar.dart';
import 'search_history.dart';

/*
 * @ 创建者       milo
 * @ 创建时间     2020/1/12 15:51
 * @ 描述         
 */
class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider.of<SearchPageProvider>(context, listen: false).searchText = null;
    return Scaffold(
      appBar: SearchBar(
        onSubmitted: (text) {
          if (text == '') {
            return;
          }
          // 搜索
          Provider.of<SearchPageProvider>(context, listen: false).insertHistoryData(text);
          //当前不是搜索结果页才需要跳转
          Navigator.of(context).pushNamed(RouteName.searchResultPage, arguments: text);
        },
      ),
      body: ListView(
        children: <Widget>[
          EveryoneSearch(),
          SearchHistory(),
        ],
      ),
    );
  }
}
