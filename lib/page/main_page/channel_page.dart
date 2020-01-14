import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xbilibili/api/http_method.dart';
import 'package:xbilibili/providers/channel_page_provider.dart';

/*
 * @ 创建者       milo
 * @ 创建时间     2020/1/11 17:06
 * @ 描述         
 */
class ChannelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    getChannelList(context);
    return Consumer<ChannelPageProvider>(builder: (context, value, child) {
      if (value.hasError) {
        return Center(
          child: OutlineButton(
            onPressed: () {
              getChannelList(context);
            },
            child: Text('请点击重试'),
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 1,
            ),
            textColor: Theme.of(context).primaryColor,
          ),
        );
      } else {
        return GridView.count(
          crossAxisCount: 4,
          shrinkWrap: true,
          children: value.region.map((region) {
            return Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Image.network(
                    region.logo,
                    width: MediaQuery.of(context).size.width / 10,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(region.name),
                ),
              ],
            );
          }).toList(),
        );
      }
    });
  }

  void getChannelList(BuildContext context) {
    HttpMethod.getChannelList().then((value) {
      Provider.of<ChannelPageProvider>(context, listen: false).setRegions(value.data.region);
    }).catchError((e) {
      Provider.of<ChannelPageProvider>(context, listen: false).setError(true);
    });
  }
}
