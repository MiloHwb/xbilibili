class Url {
  //频道
  static const channelUrl = 'https://app.bilibili.com/x/channel/square';

  //大家都在搜
  static const searchHotUrl = 'https://app.bilibili.com/x/v2/search/hot?build=5370000&limit=10';

  //获取获取会员购列表
  static const mallUrl = 'https://mall.bilibili.com/mall-c/home/index/v2?mVersion=17';

  //直播
  static const liveUrl =
      'https://api.live.bilibili.com/room/v1/AppIndex/getAllList?device=android&platform=android&scale=xhdpi';

  //推荐
  static const recommendUrl =
      'https://app.bilibili.com/x/feed/index?appkey=1d8b6e7d45233436&build=508000&login_event=0&mobi_app=android';

  //热门
  static const hotUrl =
      'https://app.bilibili.com/x/v2/show/popular/index?build=5470400&mobi_app=android';

  //直播信息
  static const liveInfoUrl = 'https://api.live.bilibili.com/room/v1/Room/get_info';

  //直播url
  static const livePlayUrl = 'https://api.live.bilibili.com/room/v1/Room/playUrl';

  //视频详情
  static const videoDetailUrl = 'https://app.bilibili.com/x/v2/view';

  //获取视频播放url
  static const getVideoPlayUrlV2 = 'https://app.bilibili.com/playurl';
  static const getVideoPlayUrlV3 = 'https://app.bilibili.com/x/playurl';

  //获取视频回复
  static const getReplyUrl = 'https://api.bilibili.com/x/v2/reply/main';

  //获取弹幕
  static const getDanmukuUrl = 'http://106.12.218.227/api/bilibili/getDanmaku.php';
}
