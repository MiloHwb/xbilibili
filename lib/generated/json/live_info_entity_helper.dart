import 'package:xbilibili/entity/live_info_entity.dart';

liveInfoEntityFromJson(LiveInfoEntity data, Map<String, dynamic> json) {
	if (json['code'] != null) {
		data.code = json['code']?.toInt();
	}
	if (json['msg'] != null) {
		data.msg = json['msg']?.toString();
	}
	if (json['message'] != null) {
		data.message = json['message']?.toString();
	}
	if (json['data'] != null) {
		data.data = new LiveInfoData().fromJson(json['data']);
	}
	return data;
}

Map<String, dynamic> liveInfoEntityToJson(LiveInfoEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['msg'] = entity.msg;
	data['message'] = entity.message;
	if (entity.data != null) {
		data['data'] = entity.data.toJson();
	}
	return data;
}

liveInfoDataFromJson(LiveInfoData data, Map<String, dynamic> json) {
	if (json['uid'] != null) {
		data.uid = json['uid']?.toInt();
	}
	if (json['room_id'] != null) {
		data.roomId = json['room_id']?.toInt();
	}
	if (json['short_id'] != null) {
		data.shortId = json['short_id']?.toInt();
	}
	if (json['attention'] != null) {
		data.attention = json['attention']?.toInt();
	}
	if (json['online'] != null) {
		data.online = json['online']?.toInt();
	}
	if (json['is_portrait'] != null) {
		data.isPortrait = json['is_portrait'];
	}
	if (json['description'] != null) {
		data.description = json['description']?.toString();
	}
	if (json['live_status'] != null) {
		data.liveStatus = json['live_status']?.toInt();
	}
	if (json['area_id'] != null) {
		data.areaId = json['area_id']?.toInt();
	}
	if (json['parent_area_id'] != null) {
		data.parentAreaId = json['parent_area_id']?.toInt();
	}
	if (json['parent_area_name'] != null) {
		data.parentAreaName = json['parent_area_name']?.toString();
	}
	if (json['old_area_id'] != null) {
		data.oldAreaId = json['old_area_id']?.toInt();
	}
	if (json['background'] != null) {
		data.background = json['background']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['user_cover'] != null) {
		data.userCover = json['user_cover']?.toString();
	}
	if (json['keyframe'] != null) {
		data.keyframe = json['keyframe']?.toString();
	}
	if (json['is_strict_room'] != null) {
		data.isStrictRoom = json['is_strict_room'];
	}
	if (json['live_time'] != null) {
		data.liveTime = json['live_time']?.toString();
	}
	if (json['tags'] != null) {
		data.tags = json['tags']?.toString();
	}
	if (json['is_anchor'] != null) {
		data.isAnchor = json['is_anchor']?.toInt();
	}
	if (json['room_silent_type'] != null) {
		data.roomSilentType = json['room_silent_type']?.toString();
	}
	if (json['room_silent_level'] != null) {
		data.roomSilentLevel = json['room_silent_level']?.toInt();
	}
	if (json['room_silent_second'] != null) {
		data.roomSilentSecond = json['room_silent_second']?.toInt();
	}
	if (json['area_name'] != null) {
		data.areaName = json['area_name']?.toString();
	}
	if (json['pendants'] != null) {
		data.pendants = json['pendants']?.toString();
	}
	if (json['area_pendants'] != null) {
		data.areaPendants = json['area_pendants']?.toString();
	}
	if (json['hot_words'] != null) {
		data.hotWords = json['hot_words']?.map((v) => v?.toString())?.toList()?.cast<String>();
	}
	if (json['hot_words_status'] != null) {
		data.hotWordsStatus = json['hot_words_status']?.toInt();
	}
	if (json['verify'] != null) {
		data.verify = json['verify']?.toString();
	}
	if (json['new_pendants'] != null) {
		data.newPendants = new LiveInfoDataNewPendants().fromJson(json['new_pendants']);
	}
	if (json['up_session'] != null) {
		data.upSession = json['up_session']?.toString();
	}
	if (json['pk_status'] != null) {
		data.pkStatus = json['pk_status']?.toInt();
	}
	if (json['pk_id'] != null) {
		data.pkId = json['pk_id']?.toInt();
	}
	if (json['battle_id'] != null) {
		data.battleId = json['battle_id']?.toInt();
	}
	if (json['allow_change_area_time'] != null) {
		data.allowChangeAreaTime = json['allow_change_area_time']?.toInt();
	}
	if (json['allow_upload_cover_time'] != null) {
		data.allowUploadCoverTime = json['allow_upload_cover_time']?.toInt();
	}
	if (json['studio_info'] != null) {
		data.studioInfo = new LiveInfoDataStudioInfo().fromJson(json['studio_info']);
	}
	return data;
}

Map<String, dynamic> liveInfoDataToJson(LiveInfoData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['uid'] = entity.uid;
	data['room_id'] = entity.roomId;
	data['short_id'] = entity.shortId;
	data['attention'] = entity.attention;
	data['online'] = entity.online;
	data['is_portrait'] = entity.isPortrait;
	data['description'] = entity.description;
	data['live_status'] = entity.liveStatus;
	data['area_id'] = entity.areaId;
	data['parent_area_id'] = entity.parentAreaId;
	data['parent_area_name'] = entity.parentAreaName;
	data['old_area_id'] = entity.oldAreaId;
	data['background'] = entity.background;
	data['title'] = entity.title;
	data['user_cover'] = entity.userCover;
	data['keyframe'] = entity.keyframe;
	data['is_strict_room'] = entity.isStrictRoom;
	data['live_time'] = entity.liveTime;
	data['tags'] = entity.tags;
	data['is_anchor'] = entity.isAnchor;
	data['room_silent_type'] = entity.roomSilentType;
	data['room_silent_level'] = entity.roomSilentLevel;
	data['room_silent_second'] = entity.roomSilentSecond;
	data['area_name'] = entity.areaName;
	data['pendants'] = entity.pendants;
	data['area_pendants'] = entity.areaPendants;
	data['hot_words'] = entity.hotWords;
	data['hot_words_status'] = entity.hotWordsStatus;
	data['verify'] = entity.verify;
	if (entity.newPendants != null) {
		data['new_pendants'] = entity.newPendants.toJson();
	}
	data['up_session'] = entity.upSession;
	data['pk_status'] = entity.pkStatus;
	data['pk_id'] = entity.pkId;
	data['battle_id'] = entity.battleId;
	data['allow_change_area_time'] = entity.allowChangeAreaTime;
	data['allow_upload_cover_time'] = entity.allowUploadCoverTime;
	if (entity.studioInfo != null) {
		data['studio_info'] = entity.studioInfo.toJson();
	}
	return data;
}

liveInfoDataNewPendantsFromJson(LiveInfoDataNewPendants data, Map<String, dynamic> json) {
	if (json['frame'] != null) {
		data.frame = new LiveInfoDataNewPendantsFrame().fromJson(json['frame']);
	}
	if (json['badge'] != null) {
		data.badge = json['badge'];
	}
	if (json['mobile_frame'] != null) {
		data.mobileFrame = new LiveInfoDataNewPendantsMobileFrame().fromJson(json['mobile_frame']);
	}
	if (json['mobile_badge'] != null) {
		data.mobileBadge = json['mobile_badge'];
	}
	return data;
}

Map<String, dynamic> liveInfoDataNewPendantsToJson(LiveInfoDataNewPendants entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.frame != null) {
		data['frame'] = entity.frame.toJson();
	}
	data['badge'] = entity.badge;
	if (entity.mobileFrame != null) {
		data['mobile_frame'] = entity.mobileFrame.toJson();
	}
	data['mobile_badge'] = entity.mobileBadge;
	return data;
}

liveInfoDataNewPendantsFrameFromJson(LiveInfoDataNewPendantsFrame data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['value'] != null) {
		data.value = json['value']?.toString();
	}
	if (json['position'] != null) {
		data.position = json['position']?.toInt();
	}
	if (json['desc'] != null) {
		data.desc = json['desc']?.toString();
	}
	if (json['area'] != null) {
		data.area = json['area']?.toInt();
	}
	if (json['area_old'] != null) {
		data.areaOld = json['area_old']?.toInt();
	}
	if (json['bg_color'] != null) {
		data.bgColor = json['bg_color']?.toString();
	}
	if (json['bg_pic'] != null) {
		data.bgPic = json['bg_pic']?.toString();
	}
	if (json['use_old_area'] != null) {
		data.useOldArea = json['use_old_area'];
	}
	return data;
}

Map<String, dynamic> liveInfoDataNewPendantsFrameToJson(LiveInfoDataNewPendantsFrame entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['value'] = entity.value;
	data['position'] = entity.position;
	data['desc'] = entity.desc;
	data['area'] = entity.area;
	data['area_old'] = entity.areaOld;
	data['bg_color'] = entity.bgColor;
	data['bg_pic'] = entity.bgPic;
	data['use_old_area'] = entity.useOldArea;
	return data;
}

liveInfoDataNewPendantsMobileFrameFromJson(LiveInfoDataNewPendantsMobileFrame data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['value'] != null) {
		data.value = json['value']?.toString();
	}
	if (json['position'] != null) {
		data.position = json['position']?.toInt();
	}
	if (json['desc'] != null) {
		data.desc = json['desc']?.toString();
	}
	if (json['area'] != null) {
		data.area = json['area']?.toInt();
	}
	if (json['area_old'] != null) {
		data.areaOld = json['area_old']?.toInt();
	}
	if (json['bg_color'] != null) {
		data.bgColor = json['bg_color']?.toString();
	}
	if (json['bg_pic'] != null) {
		data.bgPic = json['bg_pic']?.toString();
	}
	if (json['use_old_area'] != null) {
		data.useOldArea = json['use_old_area'];
	}
	return data;
}

Map<String, dynamic> liveInfoDataNewPendantsMobileFrameToJson(LiveInfoDataNewPendantsMobileFrame entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['value'] = entity.value;
	data['position'] = entity.position;
	data['desc'] = entity.desc;
	data['area'] = entity.area;
	data['area_old'] = entity.areaOld;
	data['bg_color'] = entity.bgColor;
	data['bg_pic'] = entity.bgPic;
	data['use_old_area'] = entity.useOldArea;
	return data;
}

liveInfoDataStudioInfoFromJson(LiveInfoDataStudioInfo data, Map<String, dynamic> json) {
	if (json['status'] != null) {
		data.status = json['status']?.toInt();
	}
	if (json['master_list'] != null) {
		data.masterList = new List<dynamic>();
		data.masterList.addAll(json['master_list']);
	}
	return data;
}

Map<String, dynamic> liveInfoDataStudioInfoToJson(LiveInfoDataStudioInfo entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['status'] = entity.status;
	if (entity.masterList != null) {
		data['master_list'] =  [];
	}
	return data;
}