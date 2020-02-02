//横幅
class BangumiBanner {
  String cover;
  String title;

  BangumiBanner(this.cover, this.title);
}

//横幅列表
class BangumiBanners {
  List<BangumiBanner> regions;

  BangumiBanners(this.regions);
}

//分区列表
class BangumiRegion {
  String icon;
  String title;

  BangumiRegion(this.icon, this.title);
}

//分区
class BangumiRegions {
  List<BangumiRegion> regions;

  BangumiRegions(this.regions);
}

///单个动漫
class BangumiItem {
  String title;
  String desc;
  String badge;
  String followView;
  String cover;

  BangumiItem(this.title, this.desc, this.badge, this.followView, this.cover);
}

///四格动漫
class BangumiTile {
  List<BangumiItem> list;
  String title;

  BangumiTile(this.title, this.list);
}
