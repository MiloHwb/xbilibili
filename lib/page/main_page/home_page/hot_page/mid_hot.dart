import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xbilibili/entity/hot_entity.dart';
import 'package:xbilibili/icons/bilibili_icons.dart';

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
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          _buildMidHotTop(context),
          _buildMidHotBottom(context),
        ],
      ),
    );
  }

  _buildMidHotBottom(BuildContext context) {
    return Container(
      height: 120,
      margin: EdgeInsets.only(top: 10),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: data.item.length,
        itemBuilder: (context, index) {
          var item = data.item[index];
          return Container(
            height: 100,
            width: 140,
            margin: EdgeInsets.only(right: 10),
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.only(left: 5, right: 5, bottom: 5),
                    alignment: Alignment.bottomCenter,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(item.cover + '@320w_200h'),
                        fit: BoxFit.fitWidth,
                      ),
                      borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(BIcon.play,color: Colors.white,size: 16,),
                            Text(
                              item.coverLeftText1,
                              style: TextStyle(color: Colors.white, fontSize: 12),
                            )
                          ],
                        ),
                        Text(
                          item.coverRightText,
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      item.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 13, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildMidHotTop(BuildContext context) {
    return Row(
      children: <Widget>[
        ClipOval(
          child: Image.network(
            data.cover + '@100w_100h',
            height: 50,
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                data.title,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 1.5),
                decoration: BoxDecoration(
                  color: Colors.orange[400],
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                ),
                child: Text(
                  data.topRcmdReasonStyle.text,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              )
            ],
          ),
        ),
        OutlineButton(
          onPressed: () {},
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
          color: Theme.of(context).primaryColor,
          highlightedBorderColor: Theme.of(context).primaryColor,
          disabledBorderColor: Colors.white,
          textColor: Theme.of(context).primaryColor,
          child: Text('+关注'),
        ),
      ],
    );
  }
}
