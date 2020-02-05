import 'package:xbilibili/generated/json/base/json_convert_content.dart';
import 'package:xbilibili/generated/json/base/json_filed.dart';

class VideoDetailEntity with JsonConvert<VideoDetailEntity> {
  int code;
  String message;
  int ttl;
  VideoDetailData data;
}

class VideoDetailData with JsonConvert<VideoDetailData> {
  int aid;
  int videos;
  int tid;
  String tname;
  int copyright;
  String pic;
  String title;
  int pubdate;
  int ctime;
  String desc;
  int state;
  int attribute;
  int duration;
  @JSONField(name: "mission_id")
  int missionId;
  VideoDetailDataRights rights;
  VideoDetailDataOwner owner;
  VideoDetailDataStat stat;
  @JSONField(name: "dynamic")
  String xDynamic;
  int cid;
  VideoDetailDataDimension dimension;
  List<VideoDetailDataPage> pages;
  @JSONField(name: "owner_ext")
  VideoDetailDataOwnerExt ownerExt;
  @JSONField(name: "req_user")
  VideoDetailDataReqUser reqUser;
  List<VideoDetailDataTag> tag;
  @JSONField(name: "t_icon")
  VideoDetailDataTIcon tIcon;
  VideoDetailDataElec elec;
  List<VideoDetailDataRelate> relates;
  @JSONField(name: "dislike_reasons")
  List<VideoDetailDataDislikeReason> dislikeReasons;
  @JSONField(name: "dislike_reasons_v2")
  VideoDetailDataDislikeReasonsV2 dislikeReasonsV2;
  @JSONField(name: "dm_seg")
  int dmSeg;
  VideoDetailDataPaster paster;
  @JSONField(name: "player_icon")
  VideoDetailDataPlayerIcon playerIcon;
  List<VideoDetailDataCm> cms;
  @JSONField(name: "cm_config")
  VideoDetailDataCmConfig cmConfig;
  @JSONField(name: "activity_url")
  String activityUrl;
  @JSONField(name: "short_link")
  String shortLink;
  @JSONField(name: "play_param")
  int playParam;
  VideoDetailDataLabel label;
  VideoDetailDataConfig config;
  @JSONField(name: "share_subtitle")
  String shareSubtitle;
}

class VideoDetailDataRights with JsonConvert<VideoDetailDataRights> {
  int bp;
  int elec;
  int download;
  int movie;
  int pay;
  int hd5;
  @JSONField(name: "no_reprint")
  int noReprint;
  int autoplay;
  @JSONField(name: "ugc_pay")
  int ugcPay;
  @JSONField(name: "is_cooperation")
  int isCooperation;
  @JSONField(name: "ugc_pay_preview")
  int ugcPayPreview;
  @JSONField(name: "no_background")
  int noBackground;
}

class VideoDetailDataOwner with JsonConvert<VideoDetailDataOwner> {
  int mid;
  String name;
  String face;
}

class VideoDetailDataStat with JsonConvert<VideoDetailDataStat> {
  int aid;
  int view;
  int danmaku;
  int reply;
  int favorite;
  int coin;
  int share;
  @JSONField(name: "now_rank")
  int nowRank;
  @JSONField(name: "his_rank")
  int hisRank;
  int like;
  int dislike;
}

class VideoDetailDataDimension with JsonConvert<VideoDetailDataDimension> {
  int width;
  int height;
  int rotate;
}

class VideoDetailDataPage with JsonConvert<VideoDetailDataPage> {
  int cid;
  int page;
  String from;
  @JSONField(name: "part")
  String xPart;
  int duration;
  String vid;
  String weblink;
  VideoDetailDataPagesDimension dimension;
  List<VideoDetailDataPagesMeta> metas;
  String dmlink;
  VideoDetailDataPagesDm dm;
  @JSONField(name: "download_title")
  String downloadTitle;
  @JSONField(name: "download_subtitle")
  String downloadSubtitle;
}

class VideoDetailDataPagesDimension with JsonConvert<VideoDetailDataPagesDimension> {
  int width;
  int height;
  int rotate;
}

class VideoDetailDataPagesMeta with JsonConvert<VideoDetailDataPagesMeta> {
  int quality;
  String format;
  int size;
}

class VideoDetailDataPagesDm with JsonConvert<VideoDetailDataPagesDm> {
  bool closed;
  @JSONField(name: "real_name")
  bool realName;
  int count;
  VideoDetailDataPagesDmMask mask;
  dynamic subtitles;
}

class VideoDetailDataPagesDmMask with JsonConvert<VideoDetailDataPagesDmMask> {}

class VideoDetailDataOwnerExt with JsonConvert<VideoDetailDataOwnerExt> {
  @JSONField(name: "official_verify")
  VideoDetailDataOwnerExtOfficialVerify officialVerify;
  VideoDetailDataOwnerExtVip vip;
  dynamic assists;
  int fans;
}

class VideoDetailDataOwnerExtOfficialVerify
    with JsonConvert<VideoDetailDataOwnerExtOfficialVerify> {
  int type;
  String desc;
}

class VideoDetailDataOwnerExtVip with JsonConvert<VideoDetailDataOwnerExtVip> {
  int vipType;
  int vipDueDate;
  String dueRemark;
  int accessStatus;
  int vipStatus;
  String vipStatusWarn;
  int themeType;
  VideoDetailDataOwnerExtVipLabel label;
}

class VideoDetailDataOwnerExtVipLabel with JsonConvert<VideoDetailDataOwnerExtVipLabel> {
  String path;
}

class VideoDetailDataReqUser with JsonConvert<VideoDetailDataReqUser> {
  int attention;
  @JSONField(name: "guest_attention")
  int guestAttention;
  int favorite;
  int like;
  int dislike;
  int coin;
}

class VideoDetailDataTag with JsonConvert<VideoDetailDataTag> {
  @JSONField(name: "tag_id")
  int tagId;
  @JSONField(name: "tag_name")
  String tagName;
  String cover;
  int likes;
  int hates;
  int liked;
  int hated;
  int attribute;
  @JSONField(name: "is_activity")
  int isActivity;
  String uri;
  @JSONField(name: "tag_type")
  String tagType;
}

class VideoDetailDataTIcon with JsonConvert<VideoDetailDataTIcon> {
  VideoDetailDataTIconAct act;
  @JSONField(name: "new")
  VideoDetailDataTIconNew xNew;
}

class VideoDetailDataTIconAct with JsonConvert<VideoDetailDataTIconAct> {
  String icon;
}

class VideoDetailDataTIconNew with JsonConvert<VideoDetailDataTIconNew> {
  String icon;
}

class VideoDetailDataElec with JsonConvert<VideoDetailDataElec> {
  @JSONField(name: "show")
  bool xShow;
  int total;
  @JSONField(name: "list")
  List<dynamic> xList;
  @JSONField(name: "elec_set")
  VideoDetailDataElecElecSet elecSet;
}

class VideoDetailDataElecElecSet with JsonConvert<VideoDetailDataElecElecSet> {
  @JSONField(name: "elec_theme")
  int elecTheme;
  @JSONField(name: "rmb_rate")
  int rmbRate;
  @JSONField(name: "integrity_rate")
  int integrityRate;
  @JSONField(name: "round_mode")
  int roundMode;
  @JSONField(name: "elec_list")
  List<VideoDetailDataElecElecSetElecList> elecList;
}

class VideoDetailDataElecElecSetElecList with JsonConvert<VideoDetailDataElecElecSetElecList> {
  String title;
  @JSONField(name: "elec_num")
  int elecNum;
  @JSONField(name: "is_customize")
  int isCustomize;
  @JSONField(name: "min_elec")
  int minElec;
  @JSONField(name: "max_elec")
  int maxElec;
}

class VideoDetailDataRelate with JsonConvert<VideoDetailDataRelate> {
  int aid;
  String pic;
  String title;
  VideoDetailDataRelatesOwner owner;
  VideoDetailDataRelatesStat stat;
  int duration;
  String goto;
  String param;
  String uri;
  int cid;
  @JSONField(name: "ad_index")
  int adIndex;
  @JSONField(name: "src_id")
  int srcId;
  @JSONField(name: "request_id")
  String requestId;
  @JSONField(name: "is_ad_loc")
  bool isAdLoc;
  @JSONField(name: "client_ip")
  String clientIp;
  @JSONField(name: "card_index")
  int cardIndex;
  String trackid;
}

class VideoDetailDataRelatesOwner with JsonConvert<VideoDetailDataRelatesOwner> {
  int mid;
  String name;
  String face;
}

class VideoDetailDataRelatesStat with JsonConvert<VideoDetailDataRelatesStat> {
  int aid;
  int view;
  int danmaku;
  int reply;
  int favorite;
  int coin;
  int share;
  @JSONField(name: "now_rank")
  int nowRank;
  @JSONField(name: "his_rank")
  int hisRank;
  int like;
  int dislike;
}

class VideoDetailDataDislikeReason with JsonConvert<VideoDetailDataDislikeReason> {
  @JSONField(name: "reason_id")
  int reasonId;
  @JSONField(name: "reason_name")
  String reasonName;
}

class VideoDetailDataDislikeReasonsV2 with JsonConvert<VideoDetailDataDislikeReasonsV2> {
  String title;
  String subtitle;
  List<VideoDetailDataDislikeReasonsV2Reason> reasons;
}

class VideoDetailDataDislikeReasonsV2Reason
    with JsonConvert<VideoDetailDataDislikeReasonsV2Reason> {
  int id;
  int mid;
  String name;
  @JSONField(name: "tag_id")
  int tagId;
  int rid;
}

class VideoDetailDataPaster with JsonConvert<VideoDetailDataPaster> {
  int aid;
  int cid;
  int duration;
  int type;
  @JSONField(name: "allow_jump")
  int allowJump;
  String url;
}

class VideoDetailDataPlayerIcon with JsonConvert<VideoDetailDataPlayerIcon> {
  String url1;
  String hash1;
  String url2;
  String hash2;
  int ctime;
}

class VideoDetailDataCm with JsonConvert<VideoDetailDataCm> {
  @JSONField(name: "request_id")
  String requestId;
  @JSONField(name: "rsc_id")
  int rscId;
  @JSONField(name: "src_id")
  int srcId;
  @JSONField(name: "is_ad_loc")
  bool isAdLoc;
  @JSONField(name: "client_ip")
  String clientIp;
  int index;
  @JSONField(name: "ad_info")
  VideoDetailDataCmsAdInfo adInfo;
}

class VideoDetailDataCmsAdInfo with JsonConvert<VideoDetailDataCmsAdInfo> {}

class VideoDetailDataCmConfig with JsonConvert<VideoDetailDataCmConfig> {
  @JSONField(name: "ads_control")
  VideoDetailDataCmConfigAdsControl adsControl;
}

class VideoDetailDataCmConfigAdsControl with JsonConvert<VideoDetailDataCmConfigAdsControl> {
  @JSONField(name: "has_danmu")
  int hasDanmu;
}

class VideoDetailDataLabel with JsonConvert<VideoDetailDataLabel> {
  int type;
  String uri;
}

class VideoDetailDataConfig with JsonConvert<VideoDetailDataConfig> {
  @JSONField(name: "relates_title")
  String relatesTitle;
  @JSONField(name: "share_style")
  int shareStyle;
}
