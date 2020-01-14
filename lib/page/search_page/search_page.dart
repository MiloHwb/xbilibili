import 'package:flutter/material.dart';

import 'everyone_search.dart';
import 'search_bar.dart';

/*
 * @ 创建者       milo
 * @ 创建时间     2020/1/12 15:51
 * @ 描述         
 */
class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBar(),
      body: ListView(
        children: <Widget>[
          EveryoneSearch()
        ],
      ),
    );
  }
}
