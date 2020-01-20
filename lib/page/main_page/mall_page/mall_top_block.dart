import 'package:flutter/material.dart';

/*
 * @ 创建者       milohuang
 * @ 创建时间     2020/1/20 14:29
 * @ 描述         
 */
class MallTopBlock extends StatelessWidget {
  final List<String> blockList;

  MallTopBlock(this.blockList);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        crossAxisSpacing: 10,
        childAspectRatio: 2,
        shrinkWrap: true,
        crossAxisCount: 3,
        children: blockList.map((image) {
          return Image.network(image);
        }).toList(),
      ),
    );
  }
}
