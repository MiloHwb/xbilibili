import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xbilibili/providers/search_page_provider.dart';

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
            return Wrap(
              spacing: 10,
              runSpacing: 10,
              children: value.historyList.map((value) {
                return FlatButton(
                  onPressed: () {
                    //todo 搜索
                  },
                  color: Colors.grey[200],
                  child: Text(value),
                );
              }).toList(),
            );
          }),
        ],
      ),
    );
  }
}
