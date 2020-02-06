import 'dart:typed_data';
import 'dart:ui';

import 'package:chewie/chewie.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:xbilibili/icons/bilibili_icons.dart';
import 'package:xbilibili/providers/video_player_provider.dart';
import 'package:xbilibili/providers/video_replies_page_provider.dart';

import '../video_detail_page.dart';
import '../video_replies_page.dart';

/*
 * @ 创建者       黄文彪
 * @ 创建时间     2020/2/5 11:54
 * @ 描述         
 */
class VideoPlayerPage extends StatefulWidget {
  final String aid;

  const VideoPlayerPage({Key key, this.aid}) : super(key: key);

  @override
  _VideoPlayerPageState createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  VideoPlayerProvider provider;

  TabController _tabController = TabController(length: 2, vsync: AnimatedListState());

  @override
  void initState() {
    super.initState();
    provider = Provider.of<VideoPlayerProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<VideoPlayerProvider>(
      builder: (context, value, child) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(
                MediaQuery.of(context).size.width * 9 / 16 + MediaQuery.of(context).padding.top),
            child: AppBar(
              elevation: 1,
              centerTitle: true,
              automaticallyImplyLeading: true,
              flexibleSpace: GestureDetector(
                onDoubleTap: () {
                  value.videoPlayerController.value.isPlaying
                      ? value.chewieController.pause()
                      : value.chewieController.play();
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 30),
                  color: Colors.black,
                  child: value.chewieController != null
                      ? Chewie(
                          controller: value.chewieController,
                        )
                      : Center(
                          child: CircularProgressIndicator(),
                        ),
                ),
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: _showCheckDialog,
                ),
              ],
              bottom: PreferredSize(
                preferredSize: Size(44.0, 44.0),
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TabBar(
                          controller: _tabController,
                          indicatorSize: TabBarIndicatorSize.label,
                          labelColor: Colors.pinkAccent,
                          unselectedLabelColor: Colors.grey,
                          indicatorColor: Colors.pinkAccent,
                          tabs: <Widget>[
                            Container(
                              height: 30,
                              child: Tab(
                                text: '简介',
                              ),
                            ),
                            Container(
                              height: 30,
                              child: Tab(
                                text: '评论',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 40),
                          alignment: Alignment.centerRight,
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              BIcon.danmu_off,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: value.getVideoDetailIsOk
              ? TabBarView(
                  controller: _tabController,
                  children: <Widget>[
                    VideoDetailPage(videoDetail: value.videoDetail, aid: widget.aid),
                    ChangeNotifierProvider(
                      create: (_) => VideoRepliesPageProvider(widget.aid),
                      lazy: false,
                      child: VideoRepliesPage(),
                    ),
                  ],
                )
              : Center(
                  child: Text('正在加载'),
                ),
        );
      },
    );
  }

  void _showCheckDialog() async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        contentPadding: EdgeInsets.all(15),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              '是否保存封面',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Image.network(provider.videoDetail.data.pic + '@320w_200h'),
          ],
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('取消'),
          ),
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
              _saveCover(provider.videoDetail.data.pic);
            },
            child: Text(
              '确定',
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          ),
        ],
      ),
    );
  }

  void _saveCover(String pic) async {
    Fluttertoast.showToast(msg: '正在保存');
    //检查权限
    await PermissionHandler().requestPermissions([PermissionGroup.storage]);

    PermissionStatus permissionStatus =
        await PermissionHandler().checkPermissionStatus(PermissionGroup.storage);

    if (permissionStatus == PermissionStatus.granted) {
      var response = await Dio().get(pic, options: Options(responseType: ResponseType.bytes));

      var result = await ImageGallerySaver.saveImage(Uint8List.fromList(response.data));
      Fluttertoast.showToast(msg: '保存成功 路径：$result');
    } else {
      Fluttertoast.showToast(msg: '申请权限失败');
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    provider.videoPlayerController?.dispose();
    provider.chewieController?.dispose();
    super.dispose();
  }
}
