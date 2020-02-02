//横幅
class CinemaBanner {
  String cover;
  String title;
  CinemaBanner(this.cover, this.title);
}

//横幅列表
class CinemaBanners {
  List<CinemaBanner> regions;
  CinemaBanners(this.regions);
}

//分区列表
class CinemaRegion {
  String icon;
  String title;
  CinemaRegion(this.icon, this.title);
}

//分区
class CinemaRegions {
  List<CinemaRegion> regions;
  CinemaRegions(this.regions);
}

///单个影视
class CinemaItem {
  String title;
  String desc;
  String followView;
  String badge;
  String cover;
  CinemaItem(this.title, this.desc, this.followView, this.cover, {this.badge});
}

///影视列表
class CinemaTile {
  static int vCard = 1;
  static int card = 2;
  List<CinemaItem> list;
  String title;
  int style = vCard;
  CinemaTile(
      this.title,
      this.list, {
        this.style,
      });
}