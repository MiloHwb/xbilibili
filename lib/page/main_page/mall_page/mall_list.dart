import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xbilibili/entity/mall_list_model.dart';
import 'package:xbilibili/providers/mall_page_privider.dart';

/*
 * @ 创建者       milohuang
 * @ 创建时间     2020/1/20 15:21
 * @ 描述         
 */
class MallList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MallPageProvider>(
      builder: (context, value, child) {
        return _buildMallList(context, value.mallList);
      },
    );
  }

  _buildMallList(context, List<ListModel> mallList) {
    return GridView.count(
      controller: ScrollController(),
      childAspectRatio: 0.6,
      physics:  ScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 5,
      padding: EdgeInsets.all(10),
      children: mallList.map((mall) {
        return _buildMallItem(context, mall);
      }).toList(),
    );
  }

  Widget _buildMallItem(context, ListModel mall) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      padding: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.network(
            'https:' + mall.imageUrls[0] + "@320w_200h.jpg",
            width: 320,
            height: 180,
          ),
          Text(
            mall.title,
            maxLines: 2,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '${mall.priceSymbol}${mall.price[0]}',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                Text('${getLikeDes(mall)}'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  getLikeDes(ListModel mall) {
    var like;
    if (mall.type == "ticketproject") {
      like = mall.want;
    } else if (mall.type == "mallitems") {
      if (mall.like > 10000) {
        like = (mall.like / 10000).toStringAsFixed(1) + "万人想要"; //保留1位小数
      } else {
        like = mall.like.toString() + "人想要";
      }
    }

    return like;
  }
}
