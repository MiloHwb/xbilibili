import 'dart:async';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/src/material_progress_bar.dart';
import 'package:chewie/src/utils.dart';
import 'package:xbilibili/icons/bilibili_icons.dart';

/*
 * @ 创建者       黄文彪
 * @ 创建时间     2020/2/4 14:03
 * @ 描述         
 */
class BilibiliChewieControls extends StatefulWidget {
  BilibiliChewieControls({Key key}) : super(key: key);

  @override
  _BilibiliChewieControlsState createState() => _BilibiliChewieControlsState();
}

class _BilibiliChewieControlsState extends State<BilibiliChewieControls> {
  ChewieController chewieController;
  VideoPlayerController controller;
  VideoPlayerValue _lastValue;
  bool _hideStuff = true;
  Timer _initTimer;
  Timer _hideTimer;

  bool _displayTapped = false;
  bool _dragging = false;

  final barHeight = 48.0;
  final marginSize = 5.0;
  Timer _showAfterExpandCollapseTimer;

  @override
  void didChangeDependencies() {
    final oldController = chewieController;
    chewieController = ChewieController.of(context);
    controller = chewieController.videoPlayerController;

    if (oldController != chewieController) {
      _dispose();
      _initialize();
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    if (_lastValue.hasError) {
      return chewieController.errorBuilder != null
          ? chewieController.errorBuilder(
              context,
              chewieController.videoPlayerController.value.errorDescription,
            )
          : Center(
              child: Icon(
                Icons.error,
                color: Colors.white,
                size: 42,
              ),
            );
    } else {
      return MouseRegion(
        onHover: (event) {
          _cancelAndRestartTimer();
        },
        child: GestureDetector(
          onTap: _cancelAndRestartTimer,
          child: AbsorbPointer(
            absorbing: _hideStuff,
            child: Column(
              children: <Widget>[
                _lastValue != null && !_lastValue.isPlaying && _lastValue.duration == null ||
                        _lastValue.isBuffering
                    ? const Expanded(
                        child: Center(
                        child: CircularProgressIndicator(),
                      ))
                    : _buildHitArea(),
                _buildBottomBar(context),
              ],
            ),
          ),
        ),
      );
    }
  }

  Widget _buildBottomBar(BuildContext context) {
    return AnimatedOpacity(
      opacity: _hideStuff ? 0 : 1,
      duration: Duration(milliseconds: 300),
      child: Container(
        height: barHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromRGBO(0, 0, 0, 0.02), Colors.black],
          ),
        ),
        child: Row(
          children: <Widget>[
            _buildPlayPause(controller),
            chewieController.isLive ? const SizedBox() : _buildProgressBar(),
            chewieController.isLive
                ? Expanded(
                    child: Text(
                    '直播',
                    style: TextStyle(color: Colors.white),
                  ))
                : _buildPosition(Theme.of(context).textTheme.button.color),
            chewieController.allowFullScreen ? _buildExpandButton() : Container(),
          ],
        ),
      ),
    );
  }

  Widget _buildExpandButton() {
    return GestureDetector(
      onTap: _onExpandCollapse,
      child: AnimatedOpacity(
        opacity: _hideStuff ? 0 : 1,
        duration: Duration(milliseconds: 300),
        child: Container(
          height: barHeight,
          margin: EdgeInsets.only(right: 12),
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Center(
            child: Icon(
              chewieController.isFullScreen ? Icons.fullscreen_exit : Icons.fullscreen,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  void _onExpandCollapse() {
    setState(() {
      _hideStuff = true;
      chewieController.toggleFullScreen();
      _showAfterExpandCollapseTimer = Timer(Duration(milliseconds: 300), () {
        setState(() {
          _cancelAndRestartTimer();
        });
      });
    });
  }

  Widget _buildPosition(Color color) {
    var position =
        _lastValue != null && _lastValue.position != null ? _lastValue.position : Duration.zero;

    var duration =
        _lastValue != null && _lastValue.duration != null ? _lastValue.duration : Duration.zero;
    return Padding(
      padding: EdgeInsets.only(right: 24),
      child: Text(
        '${formatDuration(position)}/ ${formatDuration(duration)}',
        style: TextStyle(fontSize: 14, color: Colors.white),
      ),
    );
  }

  Widget _buildProgressBar() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 20),
        child: MaterialVideoProgressBar(
          controller,
          onDragStart: () {
            setState(() {
              _dragging = true;
            });
            _hideTimer?.cancel();
          },
          onDragEnd: () {
            setState(() {
              _dragging = false;
            });
            _startHideTimer();
          },
          colors: ChewieProgressColors(
            playedColor: Theme.of(context).primaryColor,
            handleColor: Colors.white,
            bufferedColor: Colors.white70,
            backgroundColor: Colors.white30,
          ),
        ),
      ),
    );
  }

  Widget _buildPlayPause(VideoPlayerController controller) {
    return GestureDetector(
      onTap: _playPause,
      child: Container(
        height: barHeight,
        color: Colors.transparent,
        margin: EdgeInsets.only(left: 8, right: 4),
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Icon(
          controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildHitArea() {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          if (_lastValue != null && _lastValue.isPlaying) {
            if (_displayTapped) {
              setState(() {
                _hideStuff = true;
              });
            } else {
              _cancelAndRestartTimer();
            }
          } else {
            setState(() {
              _hideStuff = false;
            });
          }
        },
        onDoubleTap: () {
          _playPause();
        },
        child: Container(
          color: Colors.transparent,
          child: Container(
            alignment: Alignment.bottomRight,
            child: AnimatedOpacity(
              opacity: _lastValue != null && !_lastValue.isPlaying && !_dragging ? 0.8 : 0,
              duration: Duration(milliseconds: 300),
              child: GestureDetector(
                onTap: () {
                  _playPause();
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 10, right: 10),
                  decoration: BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(color: Colors.black54, blurRadius: 20),
                    ],
                  ),
                  child: Icon(
                    BIcon.play_action,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _dispose() {
    controller.removeListener(_updateState);
    _hideTimer?.cancel();
    _initTimer?.cancel();
    _showAfterExpandCollapseTimer?.cancel();
  }

  void _initialize() {
    controller.addListener(_updateState);
    _updateState();

    if ((controller.value != null && controller.value.isPlaying) || chewieController.autoPlay) {
      _startHideTimer();
    }

    if (chewieController.showControlsOnInitialize) {
      _initTimer = Timer(Duration(microseconds: 200), () {
        setState(() {
          _hideStuff = false;
        });
      });
    }
  }

  void _updateState() {
    setState(() {
      _lastValue = controller.value;
    });
  }

  void _startHideTimer() {
    _hideTimer = Timer(Duration(seconds: 3), () {
      setState(() {
        _hideStuff = true;
      });
    });
  }

  void _cancelAndRestartTimer() {
    _hideTimer?.cancel();
    _startHideTimer();
    setState(() {
      _hideStuff = false;
      _displayTapped = true;
    });
  }

  void _playPause() {
    var isFinished = _lastValue.position >= _lastValue.duration;
    setState(() {
      if (controller.value.isPlaying) {
        _hideStuff = false;
        _hideTimer?.cancel();
        controller.pause();
      } else {
        _cancelAndRestartTimer();

        if (!controller.value.initialized) {
          controller.initialize().then((_) {
            controller.play();
          });
        } else {
          if (isFinished) {
            controller.seekTo(Duration(seconds: 0));
          }
          controller.play();
        }
      }
    });
  }

  @override
  void dispose() {
    _dispose();
    super.dispose();
  }
}
