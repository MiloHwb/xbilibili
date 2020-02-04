import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xbilibili/providers/live_danmuku_page_provider.dart';

/*
 * @ 创建者       黄文彪
 * @ 创建时间     2020/2/4 18:44
 * @ 描述         
 */
class LiveDanmukuPage extends StatefulWidget {
  final String roomid;

  LiveDanmukuPage(this.roomid);

  @override
  _LiveDanmukuPageState createState() => _LiveDanmukuPageState();
}

class _LiveDanmukuPageState extends State<LiveDanmukuPage>
    with AutomaticKeepAliveClientMixin<LiveDanmukuPage> {
  LiveDanmukuPageProvider provider;

  @override
  void initState() {
    super.initState();
    provider = Provider.of<LiveDanmukuPageProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Consumer<LiveDanmukuPageProvider>(
        builder: (context, value, child) {
          return ListView.builder(
            reverse: true,
            shrinkWrap: true,
            itemCount: value.messageList.length,
            itemBuilder: (context, index) {
              Widget item;
              if (value.messageList[index] is LiveDanmakuItem) {
                LiveDanmakuItem liveDanmakuItem = value.messageList[index];
                item = Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        " ${liveDanmakuItem.name} : ",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Expanded(
                        child: Text(
                          "${liveDanmakuItem.msg}",
                        ),
                      ),
                    ],
                  ),
                );
              } else if (value.messageList[index] is GiftItem) {
                GiftItem giftItem = value.messageList[index];
                item = Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        " ${giftItem.name} ",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Expanded(
                        child: Text(
                          "${giftItem.action} ${giftItem.count} 个 ${giftItem.msg}",
                        ),
                      )
                    ],
                  ),
                );
              }

              return item;
            },
          );
        },
      ),
    );
  }

  @override
  void dispose() {
//    provider.dispose();
    provider.timer?.cancel();
    provider.channel?.sink?.close();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;
}
