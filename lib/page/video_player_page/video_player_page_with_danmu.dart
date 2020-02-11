import 'dart:typed_data';
import 'dart:ui';

import 'package:chewie/chewie.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';
import 'package:xbilibili/entity/video_detail_entity.dart';
import 'package:xbilibili/page/video_detail_page_with_danmu.dart';
import 'package:xbilibili/page/video_replies_page.dart';
import 'package:xbilibili/providers/video_player_with_danmu_provider.dart';
import 'package:xbilibili/providers/video_replies_page_provider.dart';
import 'package:xbilibili/view/danmuku/chewie_custom_with_danmuku.dart';
import 'package:xbilibili/view/danmuku/danmuku_controller.dart';

/*
 * @ 创建者       黄文彪
 * @ 创建时间     2020/2/7 14:05
 * @ 描述         
 */
class VideoPlayerPageWithDanmu extends StatefulWidget {
  final String aid;

  VideoPlayerPageWithDanmu({Key key, this.aid}) : super(key: key);

  @override
  _VideoPlayerPageWithDanmuState createState() => _VideoPlayerPageWithDanmuState();
}

class _VideoPlayerPageWithDanmuState extends State<VideoPlayerPageWithDanmu> {
  VideoPlayerPageWithDanmuProvider provider;
  List<VideoPlayerController> _videoControllerList;
  List<VideoPlayerController> _audioControllerList;
  DanmukuController _danmukuController;
  TabController _tabController = TabController(length: 2, vsync: AnimatedListState());

  @override
  void initState() {
    super.initState();

    init(context);
  }

  @override
  void dispose() {
    super.dispose();
    _danmukuController?.dispose();
    _tabController?.dispose();
    for (VideoPlayerController videoPlayerController in _videoControllerList) {
      videoPlayerController?.dispose();
    }
    for (VideoPlayerController audioPlayerController in _audioControllerList) {
      audioPlayerController?.dispose();
    }
  }

  void init(BuildContext context) async {
    provider = Provider.of<VideoPlayerPageWithDanmuProvider>(context, listen: false);
    await getDetail();
    await initVideo();
  }

  initVideo() async {
    provider.initVideo();
    await provider.getDanmuku();
    _danmukuController = DanmukuController(provider.preList);
    var map = await provider.getPlayUrl();
    if (map != null) {
      var tempPage = map['tempPage'];
      var urlMap = map['urlMap'] as Map;
      _videoControllerList[tempPage]?.dispose();
      _videoControllerList[tempPage] = VideoPlayerController.network(urlMap['video_url']);
      await _videoControllerList[tempPage].initialize();
      if (urlMap['audio_url'] != null) {
        _audioControllerList[tempPage]?.dispose();
        _audioControllerList[tempPage] = VideoPlayerController.network(urlMap['audio_url']);
      }
      await _audioControllerList[tempPage]?.initialize();

      if (tempPage == provider.page) {
        await _audioControllerList[tempPage]?.play();
      } else {
        return;
      }
      provider.setInitOk();
    }
  }

  getDetail() async {
    VideoDetailEntity videoDetail = await provider.getVideoDetail(aid: widget.aid);
    if (videoDetail == null) {
      return;
    }

    _videoControllerList = List(videoDetail.data.pages.length);
    _audioControllerList = List(videoDetail.data.pages.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.width * 9.0 / 16.0 -
            MediaQueryData.fromWindow(window).padding.top +
            30),
        child: Consumer<VideoPlayerPageWithDanmuProvider>(
          builder: (context, value, child) {
            return AppBar(
              backgroundColor: Colors.white,
              elevation: 1,
              centerTitle: true,
              flexibleSpace: Container(
                margin: EdgeInsets.only(bottom: 30),
                color: Colors.black,
                child: value.isInitVideoOk
                    ? Chewie(
                        controller: ChewieController(
                          videoPlayerController: _videoControllerList[value.page],
                          autoPlay: true,
                          aspectRatio: _videoControllerList[value.page].value.size.aspectRatio,
                          allowedScreenSleep: false,
                          customControls: ChewieCustomWithDanmuku(
                            danmukuController: _danmukuController,
                            audioController: _audioControllerList[value.page],
                          ),
                        ),
                      )
                    : Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            CircularProgressIndicator(),
                            Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text(
                                  value.msg,
                                  style: TextStyle(color: Colors.grey),
                                )),
                          ],
                        ),
                      ),
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {
                    _showCheckDialog(value.videoDetail);
                  },
                ),
              ],
              bottom: TabBar(
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.pinkAccent,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.pinkAccent,
                tabs: <Widget>[
                  Container(
                    height: 30,
                    child: Tab(
                      text: "简介",
                    ),
                  ),
                  Container(
                      height: 30,
                      child: Tab(
                        text: value.videoDetail == null
                            ? "评论"
                            : "评论 ${intToString(value.videoDetail.data.stat.reply)}",
                      )),
                ],
              ),
            );
          },
        ),
      ),
      body: Consumer<VideoPlayerPageWithDanmuProvider>(
        builder: (context, value, child) {
          return value.getVideoDetailIsOk
              ? TabBarView(
                  controller: _tabController,
                  children: <Widget>[
                    VideoDetailPageWithDanmu(
                      videoDetail: value.videoDetail,
                      aid: widget.aid,
                      onTapPage: (int i) async {
                        Provider.of<VideoPlayerPageWithDanmuProvider>(context, listen: false)
                            .onTapPage(i);
                        await _audioControllerList[value.page]?.pause();
                        await _videoControllerList[value.page]?.pause();
                        await _audioControllerList[value.page]?.dispose();
                        await _videoControllerList[value.page]?.dispose();
                        await _danmukuController?.dispose();
                        _audioControllerList[value.page] = null;
                        _videoControllerList[value.page] = null;
                        provider.page = i;
                        print("onchangepage");
                        await initVideo();
                      },
                    ),
                    ChangeNotifierProvider(
                      create: (_) => VideoRepliesPageProvider(widget.aid),
                      lazy: false,
                      child: VideoRepliesPage(),
                    ),
                  ],
                )
              : Center(
                  child: Text('正在加载'),
                );
        },
      ),
    );
  }

  _showCheckDialog(VideoDetailEntity videoDetail) async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        contentPadding: EdgeInsets.all(15),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              '是否保存封面?',
              textAlign: TextAlign.center,
            ),
            Image.network(videoDetail.data.pic + "@320w_200h"),
          ],
        ),
        actions: <Widget>[
          FlatButton(
            child: Text("取消"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          FlatButton(
            child: Text("确定"),
            onPressed: () async {
              Navigator.pop(context);
              await _saveCover(videoDetail.data.pic);
            },
          ),
        ],
      ),
    );
  }

  _saveCover(String url) async {
    Fluttertoast.showToast(msg: "正在保存");
    //先检查权限
    await PermissionHandler().requestPermissions([PermissionGroup.storage]);
    PermissionStatus permission =
        await PermissionHandler().checkPermissionStatus(PermissionGroup.storage);
    if (permission == PermissionStatus.granted) {
      var response = await Dio().get(url, options: Options(responseType: ResponseType.bytes));
      final result = await ImageGallerySaver.saveImage(Uint8List.fromList(response.data));
      Fluttertoast.showToast(msg: "保存成功 路径" + result);
    } else {
      Fluttertoast.showToast(msg: "申请权限失败");
    }
  }

  static String intToString(int n) {
    if (n > 10000) {
      return (n / 10000).toStringAsFixed(1) + "万";
    } else {
      return n.toString();
    }
  }
}
