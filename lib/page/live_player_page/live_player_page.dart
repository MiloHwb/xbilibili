import 'dart:ui';

import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xbilibili/entity/live_info_entity.dart';
import 'package:xbilibili/entity/live_player_request_model.dart';
import 'package:xbilibili/providers/live_danmuku_page_provider.dart';
import 'package:xbilibili/providers/live_player_page_provider.dart';

import '../../r.dart';
import 'live_danmuku_page.dart';
import 'liver_info_page.dart';

/*
 * @ 创建者       黄文彪
 * @ 创建时间     2020/2/3 14:12
 * @ 描述         
 */

class LivePlayerPage extends StatefulWidget {
  final String roomid;
  final String cover;
  final String userName;

  LivePlayerPage(LivePlayerRequestModel model)
      : this.roomid = model.roomid,
        this.cover = model.cover,
        this.userName = model.userName;

  @override
  _LivePlayerPageState createState() => _LivePlayerPageState();
}

class _LivePlayerPageState extends State<LivePlayerPage> {
  LivePlayerPageProvider provider;

  var _tabController = TabController(length: 2, vsync: AnimatedListState());

  @override
  Widget build(BuildContext context) {
    init(context);
    return Consumer<LivePlayerPageProvider>(
      builder: (context, value, child) {
        Widget child;
        if (value.entity == null) {
          child = _buildLoadingView();
        } else {
          child = _buildLiveRoom(context, value);
        }

        return child;
      },
    );
  }

  Widget _buildLiveRoom(context, LivePlayerPageProvider provider) {
    var data = provider.entity.data;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: data.isPortrait
            ? Size.fromHeight(MediaQuery.of(context).size.height)
            : Size.fromHeight(MediaQuery.of(context).size.width * 9 / 16 -
                MediaQueryData.fromWindow(window).padding.top),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          title: Text(
            data.title,
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          flexibleSpace: Container(
            height: double.infinity,
            width: double.infinity,
            child: provider.chewieController == null
                ? Center(child: CircularProgressIndicator())
                : Chewie(
                    controller: provider.chewieController,
                  ),
          ),
        ),
      ),
      body: buildLiveInfo(data),
    );
  }

  Widget buildLiveInfo(LiveInfoData data) {
    if (data.isPortrait) {
      return Container();
    }

    return Column(
      children: <Widget>[
        TabBar(
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Theme.of(context).primaryColor,
          labelColor: Theme.of(context).primaryColor,
          tabs: <Widget>[
            Container(
              height: 35,
              child: Tab(
                text: '互动',
              ),
            ),
            Container(
              height: 35,
              child: Tab(
                text: '主播',
              ),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              ChangeNotifierProvider(
                create: (_) => LiveDanmukuPageProvider(widget.roomid),
                child: LiveDanmukuPage(widget.roomid),
              ),
              LiverInfoPage(data, widget.cover, widget.userName),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildLoadingView() {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(R.imagesIcLoading),
            Text('正在初始化直播间'),
          ],
        ),
      ),
    );
  }

  void init(BuildContext context) {
    provider = Provider.of<LivePlayerPageProvider>(context, listen: false);
    provider.reset();
    provider.setContext(context);
    getLiveInfo(context);
  }

  void getLiveInfo(context) {
    provider.getLiveInfo(id: widget.roomid);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
