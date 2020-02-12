import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xbilibili/providers/search_page_provider.dart';
import 'package:xbilibili/route/routes.dart';

/*
 * @ 创建者       milo
 * @ 创建时间     2020/1/14 23:48
 * @ 描述         
 */
class SearchHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider.of<SearchPageProvider>(context, listen: false).getHistoryData();
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
              '搜索历史',
              style: TextStyle(fontSize: 15),
            ),
          ),
          Consumer<SearchPageProvider>(builder: (context, value, child) {
            return Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: value.historyList.map((value) {
                      return FlatButton(
                        onPressed: () {
                          // 搜索
                          Provider.of<SearchPageProvider>(context, listen: false)
                              .insertHistoryData(value);
                          Navigator.of(context)
                              .pushNamed(RouteName.searchResultPage, arguments: value);
                        },
                        color: Colors.grey[200],
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  value.historyList.length == 0
                      ? Container()
                      : Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 10),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(3),
                            onTap: () {
                              Provider.of<SearchPageProvider>(context, listen: false)
                                  .removeHistory();
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              child: Text('清空历史记录'),
                            ),
                          ),
                        ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
