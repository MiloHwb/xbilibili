//横幅
class Anniversary70Banner {
  String cover;
  String title;

  Anniversary70Banner(this.cover, {this.title});
}

//横幅列表
class Anniversary70Banners {
  List<Anniversary70Banner> regions;

  Anniversary70Banners(this.regions);
}

///单个视频
class Anniversary70VideoItem {
  static String av = "av";
  String title;
  String desc;
  String play;
  String danmaku;
  String cover;
  String goto;
  String parama;
  String len;

  Anniversary70VideoItem(
      this.parama, this.cover, this.title, this.desc, this.play, this.danmaku, this.len,
      {this.goto = "av"});
}

///多个视频
class Anniversary70VideoTile {
  List<Anniversary70VideoItem> list;
  String title;

  Anniversary70VideoTile(
    this.title,
    this.list,
  );
}

class Anniversary70BigCover {
  static String av = "av";
  String goto;
  String param;
  String cover;
  String title;
  String play;
  String danmaku;

  Anniversary70BigCover(this.cover, this.param, this.title, this.play, this.danmaku,
      {this.goto = "av"});
}
