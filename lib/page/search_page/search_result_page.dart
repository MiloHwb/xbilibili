import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xbilibili/providers/search_result_page_provider.dart';

/*
 * @ 创建者       黄文彪
 * @ 创建时间     2020/2/11 20:25
 * @ 描述         
 */
class SearchResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SearchResultPageProvider>(context,listen: false);
    provider.search(keyWord: provider.searchText, pn: 1);
    return Scaffold(
      body: Center(
        child: Text('data'),
      ),
    );
  }
}
