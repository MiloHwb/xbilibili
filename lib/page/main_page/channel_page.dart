import 'package:flutter/material.dart';
import 'package:xbilibili/api/http_method.dart';

/*
 * @ 创建者       milo
 * @ 创建时间     2020/1/11 17:06
 * @ 描述         
 */
class ChannelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HttpMethod.getChannelList();
    return Container(child: Text('频道'),);
  }
}
