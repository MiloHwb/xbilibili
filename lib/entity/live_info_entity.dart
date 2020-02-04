import 'package:xbilibili/generated/json/base/json_convert_content.dart';
import 'package:xbilibili/generated/json/base/json_filed.dart';

class LiveInfoEntity with JsonConvert<LiveInfoEntity> {
	int code;
	String msg;
	String message;
	LiveInfoData data;
}

class LiveInfoData with JsonConvert<LiveInfoData> {
	int uid;
	@JSONField(name: "room_id")
	int roomId;
	@JSONField(name: "short_id")
	int shortId;
	int attention;
	int online;
	@JSONField(name: "is_portrait")
	bool isPortrait;
	String description;
	@JSONField(name: "live_status")
	int liveStatus;
	@JSONField(name: "area_id")
	int areaId;
	@JSONField(name: "parent_area_id")
	int parentAreaId;
	@JSONField(name: "parent_area_name")
	String parentAreaName;
	@JSONField(name: "old_area_id")
	int oldAreaId;
	String background;
	String title;
	@JSONField(name: "user_cover")
	String userCover;
	String keyframe;
	@JSONField(name: "is_strict_room")
	bool isStrictRoom;
	@JSONField(name: "live_time")
	String liveTime;
	String tags;
	@JSONField(name: "is_anchor")
	int isAnchor;
	@JSONField(name: "room_silent_type")
	String roomSilentType;
	@JSONField(name: "room_silent_level")
	int roomSilentLevel;
	@JSONField(name: "room_silent_second")
	int roomSilentSecond;
	@JSONField(name: "area_name")
	String areaName;
	String pendants;
	@JSONField(name: "area_pendants")
	String areaPendants;
	@JSONField(name: "hot_words")
	List<String> hotWords;
	@JSONField(name: "hot_words_status")
	int hotWordsStatus;
	String verify;
	@JSONField(name: "new_pendants")
	LiveInfoDataNewPendants newPendants;
	@JSONField(name: "up_session")
	String upSession;
	@JSONField(name: "pk_status")
	int pkStatus;
	@JSONField(name: "pk_id")
	int pkId;
	@JSONField(name: "battle_id")
	int battleId;
	@JSONField(name: "allow_change_area_time")
	int allowChangeAreaTime;
	@JSONField(name: "allow_upload_cover_time")
	int allowUploadCoverTime;
	@JSONField(name: "studio_info")
	LiveInfoDataStudioInfo studioInfo;
}

class LiveInfoDataNewPendants with JsonConvert<LiveInfoDataNewPendants> {
	LiveInfoDataNewPendantsFrame frame;
	dynamic badge;
	@JSONField(name: "mobile_frame")
	LiveInfoDataNewPendantsMobileFrame mobileFrame;
	@JSONField(name: "mobile_badge")
	dynamic mobileBadge;
}

class LiveInfoDataNewPendantsFrame with JsonConvert<LiveInfoDataNewPendantsFrame> {
	String name;
	String value;
	int position;
	String desc;
	int area;
	@JSONField(name: "area_old")
	int areaOld;
	@JSONField(name: "bg_color")
	String bgColor;
	@JSONField(name: "bg_pic")
	String bgPic;
	@JSONField(name: "use_old_area")
	bool useOldArea;
}

class LiveInfoDataNewPendantsMobileFrame with JsonConvert<LiveInfoDataNewPendantsMobileFrame> {
	String name;
	String value;
	int position;
	String desc;
	int area;
	@JSONField(name: "area_old")
	int areaOld;
	@JSONField(name: "bg_color")
	String bgColor;
	@JSONField(name: "bg_pic")
	String bgPic;
	@JSONField(name: "use_old_area")
	bool useOldArea;
}

class LiveInfoDataStudioInfo with JsonConvert<LiveInfoDataStudioInfo> {
	int status;
	@JSONField(name: "master_list")
	List<dynamic> masterList;
}
