import 'package:flutter/material.dart';

/*
 * @ 创建者       milohuang
 * @ 创建时间     2020/1/20 12:27
 * @ 描述         商城分区
 */
class MallTopSection extends StatelessWidget {
  final List<String> sectionImagesList;
  final List<String> sectionDesList;

  MallTopSection(this.sectionImagesList, this.sectionDesList);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 5,
        shrinkWrap: true,
        childAspectRatio: 0.9,
        children: sectionImagesList.asMap().keys.map((index) {
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Image.network(
                  sectionImagesList[index],
                  width: 50,
                  height: 50,
                ),
                Container(
                  child: Text(
                    sectionDesList[index],
                    style: TextStyle(fontSize: 14),
                  ),
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
