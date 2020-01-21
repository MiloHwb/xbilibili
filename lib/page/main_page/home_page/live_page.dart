import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:xbilibili/providers/live_page_provider.dart';
import 'package:xbilibili/route/routes.dart';

/*
 * @ 创建者       milohuang
 * @ 创建时间     2020/1/21 15:39
 * @ 描述         
 */
class LivePage extends StatelessWidget {
  final controller = RefreshController(initialRefresh: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _buildFloatingActionButton(context),
      body: SmartRefresher(
        controller: controller,
        enablePullDown: true,
        onRefresh: () {
          _getLiveData(context);
        },
        child: Consumer<LivePageProvider>(
          builder: (context, value, child) {
            Widget child;
            if (value.data == null) {
              child = Center(
                child: CircularProgressIndicator(backgroundColor: Theme.of(context).primaryColor,),
              );
            } else {
              child = Text(value.data.banner.length.toString());
            }

            return child;
          },
        ),
      ),
    );
  }

  _getLiveData(context) async {
    await Provider.of<LivePageProvider>(context, listen: false).getLiveData();
    controller.refreshCompleted();
  }

  FloatingActionButton _buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).pushNamed(RouteName.loginPage);
      },
      backgroundColor: Theme.of(context).primaryColor,
      child: Container(
        padding: EdgeInsets.all(5),
        child: Text(
          '我要直播',
          style: TextStyle(color: Colors.white, fontSize: 15),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
