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
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          _buildMidHotTop(context),
        ],
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
