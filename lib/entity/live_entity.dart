import 'package:xbilibili/generated/json/base/json_convert_content.dart';
import 'package:xbilibili/generated/json/base/json_filed.dart';

class LiveEntity with JsonConvert<LiveEntity> {
	int code;
	String msg;
	String message;
	LiveData data;
}

class LiveData with JsonConvert<LiveData> {
	List<dynamic> entranceIcons;
	List<LiveDataBanner> banner;
	List<LiveDataPartition> partitions;
	@JSONField(name: "star_show")
	LiveDataStarShow starShow;
	@JSONField(name: "recommend_data")
	LiveDataRecommendData recommendData;
}

class LiveDataBanner with JsonConvert<LiveDataBanner> {
	String id;
	String pic;
	String link;
	String title;
	String location;
	String position;
	@JSONField(name: "sort_num")
	String sortNum;
	String weight;
	String img;
}

class LiveDataPartition with JsonConvert<LiveDataPartition> {
	LiveDataPartitionsPartition partition;
	List<LiveDataPartitionsLife> lives;
}

class LiveDataPartitionsPartition with JsonConvert<LiveDataPartitionsPartition> {
	int id;
	String name;
	@JSONField(name: "sub_icon")
	LiveDataPartitionsPartitionSubIcon subIcon;
	int count;
}

class LiveDataPartitionsPartitionSubIcon with JsonConvert<LiveDataPartitionsPartitionSubIcon> {
	String src;
	String height;
	String width;
}

class LiveDataPartitionsLife with JsonConvert<LiveDataPartitionsLife> {
	int roomid;
	int uid;
	String title;
	String uname;
	int online;
	@JSONField(name: "user_cover")
	String userCover;
	@JSONField(name: "user_cover_flag")
	int userCoverFlag;
	@JSONField(name: "system_cover")
	String systemCover;
	String cover;
	@JSONField(name: "show_cover")
	String showCover;
	String link;
	String face;
	@JSONField(name: "parent_id")
	int parentId;
	@JSONField(name: "parent_name")
	String parentName;
	@JSONField(name: "area_id")
	int areaId;
	@JSONField(name: "area_name")
	String areaName;
	@JSONField(name: "area_v2_parent_id")
	int areaV2ParentId;
	@JSONField(name: "area_v2_parent_name")
	String areaV2ParentName;
	@JSONField(name: "area_v2_id")
	int areaV2Id;
	@JSONField(name: "area_v2_name")
	String areaV2Name;
	@JSONField(name: "web_pendent")
	String webPendent;
	@JSONField(name: "pk_id")
	int pkId;
	@JSONField(name: "cover_size")
	LiveDataPartitionsLivesCoverSize coverSize;
	@JSONField(name: "play_url")
	String playUrl;
	@JSONField(name: "accept_quality_v2")
	List<dynamic> acceptQualityV2;
	@JSONField(name: "current_quality")
	int currentQuality;
	@JSONField(name: "accept_quality")
	String acceptQuality;
	@JSONField(name: "broadcast_type")
	int broadcastType;
	@JSONField(name: "is_tv")
	int isTv;
	String corner;
	String pendent;
	@JSONField(name: "pendent_ld")
	String pendentLd;
	@JSONField(name: "pendent_ru")
	String pendentRu;
	@JSONField(name: "pendent_ld_color")
	String pendentLdColor;
	@JSONField(name: "pendent_ru_color")
	String pendentRuColor;
	@JSONField(name: "pendent_ru_pic")
	String pendentRuPic;
}

class LiveDataPartitionsLivesCoverSize with JsonConvert<LiveDataPartitionsLivesCoverSize> {
	int height;
	int width;
}

class LiveDataStarShow with JsonConvert<LiveDataStarShow> {
	LiveDataStarShowPartition partition;
	List<LiveDataStarShowLife> lives;
}

class LiveDataStarShowPartition with JsonConvert<LiveDataStarShowPartition> {
	int id;
	String name;
	@JSONField(name: "sub_icon")
	LiveDataStarShowPartitionSubIcon subIcon;
	int count;
	int hidden;
}

class LiveDataStarShowPartitionSubIcon with JsonConvert<LiveDataStarShowPartitionSubIcon> {
	String src;
	String height;
	String width;
}

class LiveDataStarShowLife with JsonConvert<LiveDataStarShowLife> {
	int roomid;
	int uid;
	String title;
	String uname;
	int online;
	@JSONField(name: "user_cover")
	String userCover;
	@JSONField(name: "user_cover_flag")
	int userCoverFlag;
	@JSONField(name: "system_cover")
	String systemCover;
	String cover;
	@JSONField(name: "show_cover")
	String showCover;
	String link;
	String face;
	@JSONField(name: "parent_id")
	int parentId;
	@JSONField(name: "parent_name")
	String parentName;
	@JSONField(name: "area_id")
	int areaId;
	@JSONField(name: "area_name")
	String areaName;
	@JSONField(name: "area_v2_parent_id")
	int areaV2ParentId;
	@JSONField(name: "area_v2_parent_name")
	String areaV2ParentName;
	@JSONField(name: "area_v2_id")
	int areaV2Id;
	@JSONField(name: "area_v2_name")
	String areaV2Name;
	@JSONField(name: "web_pendent")
	String webPendent;
	@JSONField(name: "pk_id")
	int pkId;
	@JSONField(name: "cover_size")
	LiveDataStarShowLivesCoverSize coverSize;
	@JSONField(name: "play_url")
	String playUrl;
	@JSONField(name: "accept_quality_v2")
	List<dynamic> acceptQualityV2;
	@JSONField(name: "current_quality")
	int currentQuality;
	@JSONField(name: "accept_quality")
	String acceptQuality;
	@JSONField(name: "broadcast_type")
	int broadcastType;
	@JSONField(name: "is_tv")
	int isTv;
	String corner;
	String pendent;
	@JSONField(name: "pendent_ld")
	String pendentLd;
	@JSONField(name: "pendent_ru")
	String pendentRu;
	@JSONField(name: "pendent_ld_color")
	String pendentLdColor;
	@JSONField(name: "pendent_ru_color")
	String pendentRuColor;
	@JSONField(name: "pendent_ru_pic")
	String pendentRuPic;
}

class LiveDataStarShowLivesCoverSize with JsonConvert<LiveDataStarShowLivesCoverSize> {
	int height;
	int width;
}

class LiveDataRecommendData with JsonConvert<LiveDataRecommendData> {
	LiveDataRecommendDataPartition partition;
	@JSONField(name: "banner_data")
	List<LiveDataRecommendDataBannerData> bannerData;
	List<LiveDataRecommandDataLives> lives;
}

class LiveDataRecommendDataPartition with JsonConvert<LiveDataRecommendDataPartition> {
	int id;
	String name;
	String area;
	@JSONField(name: "sub_icon")
	LiveDataRecommendDataPartitionSubIcon subIcon;
	int count;
}

class LiveDataRecommendDataPartitionSubIcon with JsonConvert<LiveDataRecommendDataPartitionSubIcon> {
	String src;
	String height;
	String width;
}

class LiveDataRecommendDataBannerData with JsonConvert<LiveDataRecommendDataBannerData> {
	LiveDataRecommendDataBannerDataCover cover;
	String title;
	@JSONField(name: "is_clip")
	int isClip;
	@JSONField(name: "new_cover")
	LiveDataRecommendDataBannerDataNewCover newCover;
	@JSONField(name: "new_title")
	String newTitle;
	@JSONField(name: "new_router")
	String newRouter;
}

class LiveDataRecommendDataBannerDataCover with JsonConvert<LiveDataRecommendDataBannerDataCover> {
	String src;
	int height;
	int width;
}

class LiveDataRecommendDataBannerDataNewCover with JsonConvert<LiveDataRecommendDataBannerDataNewCover> {
	String src;
	int height;
	int width;
}

class LiveDataRecommandDataLives with JsonConvert<LiveDataRecommandDataLives> {
	LiveDataRecommendDataLivesOwner owner;
	LiveDataRecommendDataLivesCover cover;
	@JSONField(name: "room_id")
	int roomId;
	@JSONField(name: "check_version")
	int checkVersion;
	int online;
	String area;
	@JSONField(name: "area_id")
	int areaId;
	String title;
	String playurl;
	@JSONField(name: "accept_quality_v2")
	List<dynamic> acceptQualityV2;
	@JSONField(name: "current_quality")
	int currentQuality;
	@JSONField(name: "accept_quality")
	String acceptQuality;
	@JSONField(name: "broadcast_type")
	int broadcastType;
	@JSONField(name: "is_tv")
	int isTv;
	String corner;
	String pendent;
	@JSONField(name: "area_v2_id")
	int areaV2Id;
	@JSONField(name: "area_v2_name")
	String areaV2Name;
	@JSONField(name: "area_v2_parent_id")
	int areaV2ParentId;
	@JSONField(name: "area_v2_parent_name")
	String areaV2ParentName;
}

class LiveDataRecommendDataLivesOwner with JsonConvert<LiveDataRecommendDataLivesOwner> {
	String face;
	int mid;
	String name;
}

class LiveDataRecommendDataLivesCover with JsonConvert<LiveDataRecommendDataLivesCover> {
	dynamic src;
	int height;
	int width;
}
