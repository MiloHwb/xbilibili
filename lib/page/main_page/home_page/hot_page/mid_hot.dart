import 'package:flutter/material.dart';
import 'package:xbilibili/entity/hot_entity.dart';

/*
 * @ 创建者       milohuang
 * @ 创建时间     2020/1/25 12:46
 * @ 描述         
 */
class MidHot extends StatelessWidget {
  final HotData data;

  MidHot(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Text('${data.title}'),
    );
  }
}
