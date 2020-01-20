import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
 * @ 创建者       milohuang
 * @ 创建时间     2020/1/20 12:29
 * @ 描述         
 */
class MallTopSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      height: 40,
      margin: EdgeInsets.all(15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Container(
        width: 200,
        child: TextField(
          decoration: InputDecoration(
            icon: Icon(
              Icons.search,
              color: Theme.of(context).primaryColor,
            ),
            border: InputBorder.none,
            isDense: true,
            hintText: '手办模玩、展览演出',
            hintStyle: TextStyle(fontSize: 14),
          ),
          maxLines: 1,
        ),
      ),
    );
  }
}
