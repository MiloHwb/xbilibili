import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xbilibili/providers/search_page_provider.dart';

/*
 * @ 创建者       milo
 * @ 创建时间     2020/1/14 19:43
 * @ 描述         
 */
class SearchBar extends StatelessWidget with PreferredSizeWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Size get preferredSize => Size.fromHeight(46);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.search,
              color: Colors.grey,
              size: 20,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 5),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: '搜索',
                    border: InputBorder.none,
                  ),
                  autofocus: true,
                  maxLines: 1,
                  textInputAction: TextInputAction.search,
                  onSubmitted: (text){
                    Provider.of<SearchPageProvider>(context,listen: false).insertHistoryData(text);
                    //todo 搜索
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        Center(
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              padding: EdgeInsets.only(right: 10),
              child: Text(
                '取消',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        )
      ],
    );
  }
}
