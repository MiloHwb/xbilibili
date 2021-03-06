import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xbilibili/api/http_method.dart';
import 'package:xbilibili/providers/search_page_provider.dart';
import 'package:xbilibili/route/routes.dart';

/*
 * @ 创建者       milo
 * @ 创建时间     2020/1/14 21:59
 * @ 描述         
 */
class EveryoneSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    getSearchHotList(context);

    return Container(
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.black12, width: 0.5),
              ),
            ),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(10),
            child: Text(
              '大家都在搜',
              style: TextStyle(fontSize: 15),
            ),
          ),
          Consumer<SearchPageProvider>(builder: (context, value, child) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.topLeft,
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: value.list.map((value) {
                  return FlatButton(
                    onPressed: () {
                      // 搜索
                      Provider.of<SearchPageProvider>(context, listen: false)
                          .insertHistoryData(value.keyword);
                      Navigator.of(context)
                          .pushNamed(RouteName.searchResultPage, arguments: value.keyword);
                    },
                    color: Colors.grey[200],
                    child: Text(value.keyword),
                  );
                }).toList(),
              ),
            );
          }),
        ],
      ),
    );
  }

  void getSearchHotList(context) async {
    HttpMethod.getSearchHot().then((value) {
      Provider.of<SearchPageProvider>(context, listen: false).setSearchHotList(value.data.list);
    }).catchError((e) {
      Provider.of<SearchPageProvider>(context, listen: false).setSearchHotList([]);
    });
  }
}
