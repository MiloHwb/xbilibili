import 'package:xbilibili/entity/live_entity.dart';

liveEntityFromJson(LiveEntity data, Map<String, dynamic> json) {
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
		data.data = new LiveData().fromJson(json['data']);
	}
	return data;
}

Map<String, dynamic> liveEntityToJson(LiveEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['msg'] = entity.msg;
	data['message'] = entity.message;
	if (entity.data != null) {
		data['data'] = entity.data.toJson();
	}
	return data;
}

liveDataFromJson(LiveData data, Map<String, dynamic> json) {
	if (json['entranceIcons'] != null) {
		data.entranceIcons = new List<dynamic>();
		data.entranceIcons.addAll(json['entranceIcons']);
	}
	if (json['banner'] != null) {
		data.banner = new List<LiveDataBanner>();
		(json['banner'] as List).forEach((v) {
			data.banner.add(new LiveDataBanner().fromJson(v));
		});
	}
	if (json['partitions'] != null) {
		data.partitions = new List<LiveDataPartition>();
		(json['partitions'] as List).forEach((v) {
			data.partitions.add(new LiveDataPartition().fromJson(v));
		});
	}
	if (json['star_show'] != null) {
		data.starShow = new LiveDataStarShow().fromJson(json['star_show']);
	}
	if (json['recommend_data'] != null) {
		data.recommendData = new LiveDataRecommendData().fromJson(json['recommend_data']);
	}
	return data;
}

Map<String, dynamic> liveDataToJson(LiveData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.entranceIcons != null) {
		data['entranceIcons'] =  [];
	}
	if (entity.banner != null) {
		data['banner'] =  entity.banner.map((v) => v.toJson()).toList();
	}
	if (entity.partitions != null) {
		data['partitions'] =  entity.partitions.map((v) => v.toJson()).toList();
	}
	if (entity.starShow != null) {
		data['star_show'] = entity.starShow.toJson();
	}
	if (entity.recommendData != null) {
		data['recommend_data'] = entity.recommendData.toJson();
	}
	return data;
}

liveDataBannerFromJson(LiveDataBanner data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toString();
	}
	if (json['pic'] != null) {
		data.pic = json['pic']?.toString();
	}
	if (json['link'] != null) {
		data.link = json['link']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['location'] != null) {
		data.location = json['location']?.toString();
	}
	if (json['position'] != null) {
		data.position = json['position']?.toString();
	}
	if (json['sort_num'] != null) {
		data.sortNum = json['sort_num']?.toString();
	}
	if (json['weight'] != null) {
		data.weight = json['weight']?.toString();
	}
	if (json['img'] != null) {
		data.img = json['img']?.toString();
	}
	return data;
}

Map<String, dynamic> liveDataBannerToJson(LiveDataBanner entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['pic'] = entity.pic;
	data['link'] = entity.link;
	data['title'] = entity.title;
	data['location'] = entity.location;
	data['position'] = entity.position;
	data['sort_num'] = entity.sortNum;
	data['weight'] = entity.weight;
	data['img'] = entity.img;
	return data;
}

liveDataPartitionFromJson(LiveDataPartition data, Map<String, dynamic> json) {
	if (json['partition'] != null) {
		data.partition = new LiveDataPartitionsPartition().fromJson(json['partition']);
	}
	if (json['lives'] != null) {
		data.lives = new List<LiveDataPartitionsLife>();
		(json['lives'] as List).forEach((v) {
			data.lives.add(new LiveDataPartitionsLife().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> liveDataPartitionToJson(LiveDataPartition entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.partition != null) {
		data['partition'] = entity.partition.toJson();
	}
	if (entity.lives != null) {
		data['lives'] =  entity.lives.map((v) => v.toJson()).toList();
	}
	return data;
}

liveDataPartitionsPartitionFromJson(LiveDataPartitionsPartition data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['sub_icon'] != null) {
		data.subIcon = new LiveDataPartitionsPartitionSubIcon().fromJson(json['sub_icon']);
	}
	if (json['count'] != null) {
		data.count = json['count']?.toInt();
	}
	return data;
}

Map<String, dynamic> liveDataPartitionsPartitionToJson(LiveDataPartitionsPartition entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	if (entity.subIcon != null) {
		data['sub_icon'] = entity.subIcon.toJson();
	}
	data['count'] = entity.count;
	return data;
}

liveDataPartitionsPartitionSubIconFromJson(LiveDataPartitionsPartitionSubIcon data, Map<String, dynamic> json) {
	if (json['src'] != null) {
		data.src = json['src']?.toString();
	}
	if (json['height'] != null) {
		data.height = json['height']?.toString();
	}
	if (json['width'] != null) {
		data.width = json['width']?.toString();
	}
	return data;
}

Map<String, dynamic> liveDataPartitionsPartitionSubIconToJson(LiveDataPartitionsPartitionSubIcon entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['src'] = entity.src;
	data['height'] = entity.height;
	data['width'] = entity.width;
	return data;
}

liveDataPartitionsLifeFromJson(LiveDataPartitionsLife data, Map<String, dynamic> json) {
	if (json['roomid'] != null) {
		data.roomid = json['roomid']?.toInt();
	}
	if (json['uid'] != null) {
		data.uid = json['uid']?.toInt();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['uname'] != null) {
		data.uname = json['uname']?.toString();
	}
	if (json['online'] != null) {
		data.online = json['online']?.toInt();
	}
	if (json['user_cover'] != null) {
		data.userCover = json['user_cover']?.toString();
	}
	if (json['user_cover_flag'] != null) {
		data.userCoverFlag = json['user_cover_flag']?.toInt();
	}
	if (json['system_cover'] != null) {
		data.systemCover = json['system_cover']?.toString();
	}
	if (json['cover'] != null) {
		data.cover = json['cover']?.toString();
	}
	if (json['show_cover'] != null) {
		data.showCover = json['show_cover']?.toString();
	}
	if (json['link'] != null) {
		data.link = json['link']?.toString();
	}
	if (json['face'] != null) {
		data.face = json['face']?.toString();
	}
	if (json['parent_id'] != null) {
		data.parentId = json['parent_id']?.toInt();
	}
	if (json['parent_name'] != null) {
		data.parentName = json['parent_name']?.toString();
	}
	if (json['area_id'] != null) {
		data.areaId = json['area_id']?.toInt();
	}
	if (json['area_name'] != null) {
		data.areaName = json['area_name']?.toString();
	}
	if (json['area_v2_parent_id'] != null) {
		data.areaV2ParentId = json['area_v2_parent_id']?.toInt();
	}
	if (json['area_v2_parent_name'] != null) {
		data.areaV2ParentName = json['area_v2_parent_name']?.toString();
	}
	if (json['area_v2_id'] != null) {
		data.areaV2Id = json['area_v2_id']?.toInt();
	}
	if (json['area_v2_name'] != null) {
		data.areaV2Name = json['area_v2_name']?.toString();
	}
	if (json['web_pendent'] != null) {
		data.webPendent = json['web_pendent']?.toString();
	}
	if (json['pk_id'] != null) {
		data.pkId = json['pk_id']?.toInt();
	}
	if (json['cover_size'] != null) {
		data.coverSize = new LiveDataPartitionsLivesCoverSize().fromJson(json['cover_size']);
	}
	if (json['play_url'] != null) {
		data.playUrl = json['play_url']?.toString();
	}
	if (json['accept_quality_v2'] != null) {
		data.acceptQualityV2 = new List<dynamic>();
		data.acceptQualityV2.addAll(json['accept_quality_v2']);
	}
	if (json['current_quality'] != null) {
		data.currentQuality = json['current_quality']?.toInt();
	}
	if (json['accept_quality'] != null) {
		data.acceptQuality = json['accept_quality']?.toString();
	}
	if (json['broadcast_type'] != null) {
		data.broadcastType = json['broadcast_type']?.toInt();
	}
	if (json['is_tv'] != null) {
		data.isTv = json['is_tv']?.toInt();
	}
	if (json['corner'] != null) {
		data.corner = json['corner']?.toString();
	}
	if (json['pendent'] != null) {
		data.pendent = json['pendent']?.toString();
	}
	if (json['pendent_ld'] != null) {
		data.pendentLd = json['pendent_ld']?.toString();
	}
	if (json['pendent_ru'] != null) {
		data.pendentRu = json['pendent_ru']?.toString();
	}
	if (json['pendent_ld_color'] != null) {
		data.pendentLdColor = json['pendent_ld_color']?.toString();
	}
	if (json['pendent_ru_color'] != null) {
		data.pendentRuColor = json['pendent_ru_color']?.toString();
	}
	if (json['pendent_ru_pic'] != null) {
		data.pendentRuPic = json['pendent_ru_pic']?.toString();
	}
	return data;
}

Map<String, dynamic> liveDataPartitionsLifeToJson(LiveDataPartitionsLife entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['roomid'] = entity.roomid;
	data['uid'] = entity.uid;
	data['title'] = entity.title;
	data['uname'] = entity.uname;
	data['online'] = entity.online;
	data['user_cover'] = entity.userCover;
	data['user_cover_flag'] = entity.userCoverFlag;
	data['system_cover'] = entity.systemCover;
	data['cover'] = entity.cover;
	data['show_cover'] = entity.showCover;
	data['link'] = entity.link;
	data['face'] = entity.face;
	data['parent_id'] = entity.parentId;
	data['parent_name'] = entity.parentName;
	data['area_id'] = entity.areaId;
	data['area_name'] = entity.areaName;
	data['area_v2_parent_id'] = entity.areaV2ParentId;
	data['area_v2_parent_name'] = entity.areaV2ParentName;
	data['area_v2_id'] = entity.areaV2Id;
	data['area_v2_name'] = entity.areaV2Name;
	data['web_pendent'] = entity.webPendent;
	data['pk_id'] = entity.pkId;
	if (entity.coverSize != null) {
		data['cover_size'] = entity.coverSize.toJson();
	}
	data['play_url'] = entity.playUrl;
	if (entity.acceptQualityV2 != null) {
		data['accept_quality_v2'] =  [];
	}
	data['current_quality'] = entity.currentQuality;
	data['accept_quality'] = entity.acceptQuality;
	data['broadcast_type'] = entity.broadcastType;
	data['is_tv'] = entity.isTv;
	data['corner'] = entity.corner;
	data['pendent'] = entity.pendent;
	data['pendent_ld'] = entity.pendentLd;
	data['pendent_ru'] = entity.pendentRu;
	data['pendent_ld_color'] = entity.pendentLdColor;
	data['pendent_ru_color'] = entity.pendentRuColor;
	data['pendent_ru_pic'] = entity.pendentRuPic;
	return data;
}

liveDataPartitionsLivesCoverSizeFromJson(LiveDataPartitionsLivesCoverSize data, Map<String, dynamic> json) {
	if (json['height'] != null) {
		data.height = json['height']?.toInt();
	}
	if (json['width'] != null) {
		data.width = json['width']?.toInt();
	}
	return data;
}

Map<String, dynamic> liveDataPartitionsLivesCoverSizeToJson(LiveDataPartitionsLivesCoverSize entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['height'] = entity.height;
	data['width'] = entity.width;
	return data;
}

liveDataStarShowFromJson(LiveDataStarShow data, Map<String, dynamic> json) {
	if (json['partition'] != null) {
		data.partition = new LiveDataStarShowPartition().fromJson(json['partition']);
	}
	if (json['lives'] != null) {
		data.lives = new List<LiveDataStarShowLife>();
		(json['lives'] as List).forEach((v) {
			data.lives.add(new LiveDataStarShowLife().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> liveDataStarShowToJson(LiveDataStarShow entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.partition != null) {
		data['partition'] = entity.partition.toJson();
	}
	if (entity.lives != null) {
		data['lives'] =  entity.lives.map((v) => v.toJson()).toList();
	}
	return data;
}

liveDataStarShowPartitionFromJson(LiveDataStarShowPartition data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['sub_icon'] != null) {
		data.subIcon = new LiveDataStarShowPartitionSubIcon().fromJson(json['sub_icon']);
	}
	if (json['count'] != null) {
		data.count = json['count']?.toInt();
	}
	if (json['hidden'] != null) {
		data.hidden = json['hidden']?.toInt();
	}
	return data;
}

Map<String, dynamic> liveDataStarShowPartitionToJson(LiveDataStarShowPartition entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	if (entity.subIcon != null) {
		data['sub_icon'] = entity.subIcon.toJson();
	}
	data['count'] = entity.count;
	data['hidden'] = entity.hidden;
	return data;
}

liveDataStarShowPartitionSubIconFromJson(LiveDataStarShowPartitionSubIcon data, Map<String, dynamic> json) {
	if (json['src'] != null) {
		data.src = json['src']?.toString();
	}
	if (json['height'] != null) {
		data.height = json['height']?.toString();
	}
	if (json['width'] != null) {
		data.width = json['width']?.toString();
	}
	return data;
}

Map<String, dynamic> liveDataStarShowPartitionSubIconToJson(LiveDataStarShowPartitionSubIcon entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['src'] = entity.src;
	data['height'] = entity.height;
	data['width'] = entity.width;
	return data;
}

liveDataStarShowLifeFromJson(LiveDataStarShowLife data, Map<String, dynamic> json) {
	if (json['roomid'] != null) {
		data.roomid = json['roomid']?.toInt();
	}
	if (json['uid'] != null) {
		data.uid = json['uid']?.toInt();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['uname'] != null) {
		data.uname = json['uname']?.toString();
	}
	if (json['online'] != null) {
		data.online = json['online']?.toInt();
	}
	if (json['user_cover'] != null) {
		data.userCover = json['user_cover']?.toString();
	}
	if (json['user_cover_flag'] != null) {
		data.userCoverFlag = json['user_cover_flag']?.toInt();
	}
	if (json['system_cover'] != null) {
		data.systemCover = json['system_cover']?.toString();
	}
	if (json['cover'] != null) {
		data.cover = json['cover']?.toString();
	}
	if (json['show_cover'] != null) {
		data.showCover = json['show_cover']?.toString();
	}
	if (json['link'] != null) {
		data.link = json['link']?.toString();
	}
	if (json['face'] != null) {
		data.face = json['face']?.toString();
	}
	if (json['parent_id'] != null) {
		data.parentId = json['parent_id']?.toInt();
	}
	if (json['parent_name'] != null) {
		data.parentName = json['parent_name']?.toString();
	}
	if (json['area_id'] != null) {
		data.areaId = json['area_id']?.toInt();
	}
	if (json['area_name'] != null) {
		data.areaName = json['area_name']?.toString();
	}
	if (json['area_v2_parent_id'] != null) {
		data.areaV2ParentId = json['area_v2_parent_id']?.toInt();
	}
	if (json['area_v2_parent_name'] != null) {
		data.areaV2ParentName = json['area_v2_parent_name']?.toString();
	}
	if (json['area_v2_id'] != null) {
		data.areaV2Id = json['area_v2_id']?.toInt();
	}
	if (json['area_v2_name'] != null) {
		data.areaV2Name = json['area_v2_name']?.toString();
	}
	if (json['web_pendent'] != null) {
		data.webPendent = json['web_pendent']?.toString();
	}
	if (json['pk_id'] != null) {
		data.pkId = json['pk_id']?.toInt();
	}
	if (json['cover_size'] != null) {
		data.coverSize = new LiveDataStarShowLivesCoverSize().fromJson(json['cover_size']);
	}
	if (json['play_url'] != null) {
		data.playUrl = json['play_url']?.toString();
	}
	if (json['accept_quality_v2'] != null) {
		data.acceptQualityV2 = new List<dynamic>();
		data.acceptQualityV2.addAll(json['accept_quality_v2']);
	}
	if (json['current_quality'] != null) {
		data.currentQuality = json['current_quality']?.toInt();
	}
	if (json['accept_quality'] != null) {
		data.acceptQuality = json['accept_quality']?.toString();
	}
	if (json['broadcast_type'] != null) {
		data.broadcastType = json['broadcast_type']?.toInt();
	}
	if (json['is_tv'] != null) {
		data.isTv = json['is_tv']?.toInt();
	}
	if (json['corner'] != null) {
		data.corner = json['corner']?.toString();
	}
	if (json['pendent'] != null) {
		data.pendent = json['pendent']?.toString();
	}
	if (json['pendent_ld'] != null) {
		data.pendentLd = json['pendent_ld']?.toString();
	}
	if (json['pendent_ru'] != null) {
		data.pendentRu = json['pendent_ru']?.toString();
	}
	if (json['pendent_ld_color'] != null) {
		data.pendentLdColor = json['pendent_ld_color']?.toString();
	}
	if (json['pendent_ru_color'] != null) {
		data.pendentRuColor = json['pendent_ru_color']?.toString();
	}
	if (json['pendent_ru_pic'] != null) {
		data.pendentRuPic = json['pendent_ru_pic']?.toString();
	}
	return data;
}

Map<String, dynamic> liveDataStarShowLifeToJson(LiveDataStarShowLife entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['roomid'] = entity.roomid;
	data['uid'] = entity.uid;
	data['title'] = entity.title;
	data['uname'] = entity.uname;
	data['online'] = entity.online;
	data['user_cover'] = entity.userCover;
	data['user_cover_flag'] = entity.userCoverFlag;
	data['system_cover'] = entity.systemCover;
	data['cover'] = entity.cover;
	data['show_cover'] = entity.showCover;
	data['link'] = entity.link;
	data['face'] = entity.face;
	data['parent_id'] = entity.parentId;
	data['parent_name'] = entity.parentName;
	data['area_id'] = entity.areaId;
	data['area_name'] = entity.areaName;
	data['area_v2_parent_id'] = entity.areaV2ParentId;
	data['area_v2_parent_name'] = entity.areaV2ParentName;
	data['area_v2_id'] = entity.areaV2Id;
	data['area_v2_name'] = entity.areaV2Name;
	data['web_pendent'] = entity.webPendent;
	data['pk_id'] = entity.pkId;
	if (entity.coverSize != null) {
		data['cover_size'] = entity.coverSize.toJson();
	}
	data['play_url'] = entity.playUrl;
	if (entity.acceptQualityV2 != null) {
		data['accept_quality_v2'] =  [];
	}
	data['current_quality'] = entity.currentQuality;
	data['accept_quality'] = entity.acceptQuality;
	data['broadcast_type'] = entity.broadcastType;
	data['is_tv'] = entity.isTv;
	data['corner'] = entity.corner;
	data['pendent'] = entity.pendent;
	data['pendent_ld'] = entity.pendentLd;
	data['pendent_ru'] = entity.pendentRu;
	data['pendent_ld_color'] = entity.pendentLdColor;
	data['pendent_ru_color'] = entity.pendentRuColor;
	data['pendent_ru_pic'] = entity.pendentRuPic;
	return data;
}

liveDataStarShowLivesCoverSizeFromJson(LiveDataStarShowLivesCoverSize data, Map<String, dynamic> json) {
	if (json['height'] != null) {
		data.height = json['height']?.toInt();
	}
	if (json['width'] != null) {
		data.width = json['width']?.toInt();
	}
	return data;
}

Map<String, dynamic> liveDataStarShowLivesCoverSizeToJson(LiveDataStarShowLivesCoverSize entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['height'] = entity.height;
	data['width'] = entity.width;
	return data;
}

liveDataRecommendDataFromJson(LiveDataRecommendData data, Map<String, dynamic> json) {
	if (json['partition'] != null) {
		data.partition = new LiveDataRecommendDataPartition().fromJson(json['partition']);
	}
	if (json['banner_data'] != null) {
		data.bannerData = new List<LiveDataRecommendDataBannerData>();
		(json['banner_data'] as List).forEach((v) {
			data.bannerData.add(new LiveDataRecommendDataBannerData().fromJson(v));
		});
	}
	if (json['lives'] != null) {
		data.lives = new List<LiveDataRecommandDataLives>();
		(json['lives'] as List).forEach((v) {
			data.lives.add(new LiveDataRecommandDataLives().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> liveDataRecommendDataToJson(LiveDataRecommendData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.partition != null) {
		data['partition'] = entity.partition.toJson();
	}
	if (entity.bannerData != null) {
		data['banner_data'] =  entity.bannerData.map((v) => v.toJson()).toList();
	}
	if (entity.lives != null) {
		data['lives'] =  entity.lives.map((v) => v.toJson()).toList();
	}
	return data;
}

liveDataRecommendDataPartitionFromJson(LiveDataRecommendDataPartition data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['area'] != null) {
		data.area = json['area']?.toString();
	}
	if (json['sub_icon'] != null) {
		data.subIcon = new LiveDataRecommendDataPartitionSubIcon().fromJson(json['sub_icon']);
	}
	if (json['count'] != null) {
		data.count = json['count']?.toInt();
	}
	return data;
}

Map<String, dynamic> liveDataRecommendDataPartitionToJson(LiveDataRecommendDataPartition entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['area'] = entity.area;
	if (entity.subIcon != null) {
		data['sub_icon'] = entity.subIcon.toJson();
	}
	data['count'] = entity.count;
	return data;
}

liveDataRecommendDataPartitionSubIconFromJson(LiveDataRecommendDataPartitionSubIcon data, Map<String, dynamic> json) {
	if (json['src'] != null) {
		data.src = json['src']?.toString();
	}
	if (json['height'] != null) {
		data.height = json['height']?.toString();
	}
	if (json['width'] != null) {
		data.width = json['width']?.toString();
	}
	return data;
}

Map<String, dynamic> liveDataRecommendDataPartitionSubIconToJson(LiveDataRecommendDataPartitionSubIcon entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['src'] = entity.src;
	data['height'] = entity.height;
	data['width'] = entity.width;
	return data;
}

liveDataRecommendDataBannerDataFromJson(LiveDataRecommendDataBannerData data, Map<String, dynamic> json) {
	if (json['cover'] != null) {
		data.cover = new LiveDataRecommendDataBannerDataCover().fromJson(json['cover']);
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['is_clip'] != null) {
		data.isClip = json['is_clip']?.toInt();
	}
	if (json['new_cover'] != null) {
		data.newCover = new LiveDataRecommendDataBannerDataNewCover().fromJson(json['new_cover']);
	}
	if (json['new_title'] != null) {
		data.newTitle = json['new_title']?.toString();
	}
	if (json['new_router'] != null) {
		data.newRouter = json['new_router']?.toString();
	}
	return data;
}

Map<String, dynamic> liveDataRecommendDataBannerDataToJson(LiveDataRecommendDataBannerData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.cover != null) {
		data['cover'] = entity.cover.toJson();
	}
	data['title'] = entity.title;
	data['is_clip'] = entity.isClip;
	if (entity.newCover != null) {
		data['new_cover'] = entity.newCover.toJson();
	}
	data['new_title'] = entity.newTitle;
	data['new_router'] = entity.newRouter;
	return data;
}

liveDataRecommendDataBannerDataCoverFromJson(LiveDataRecommendDataBannerDataCover data, Map<String, dynamic> json) {
	if (json['src'] != null) {
		data.src = json['src']?.toString();
	}
	if (json['height'] != null) {
		data.height = json['height']?.toInt();
	}
	if (json['width'] != null) {
		data.width = json['width']?.toInt();
	}
	return data;
}

Map<String, dynamic> liveDataRecommendDataBannerDataCoverToJson(LiveDataRecommendDataBannerDataCover entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['src'] = entity.src;
	data['height'] = entity.height;
	data['width'] = entity.width;
	return data;
}

liveDataRecommendDataBannerDataNewCoverFromJson(LiveDataRecommendDataBannerDataNewCover data, Map<String, dynamic> json) {
	if (json['src'] != null) {
		data.src = json['src']?.toString();
	}
	if (json['height'] != null) {
		data.height = json['height']?.toInt();
	}
	if (json['width'] != null) {
		data.width = json['width']?.toInt();
	}
	return data;
}

Map<String, dynamic> liveDataRecommendDataBannerDataNewCoverToJson(LiveDataRecommendDataBannerDataNewCover entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['src'] = entity.src;
	data['height'] = entity.height;
	data['width'] = entity.width;
	return data;
}

liveDataRecommandDataLivesFromJson(LiveDataRecommandDataLives data, Map<String, dynamic> json) {
	if (json['owner'] != null) {
		data.owner = new LiveDataRecommendDataLivesOwner().fromJson(json['owner']);
	}
	if (json['cover'] != null) {
		data.cover = new LiveDataRecommendDataLivesCover().fromJson(json['cover']);
	}
	if (json['room_id'] != null) {
		data.roomId = json['room_id']?.toInt();
	}
	if (json['check_version'] != null) {
		data.checkVersion = json['check_version']?.toInt();
	}
	if (json['online'] != null) {
		data.online = json['online']?.toInt();
	}
	if (json['area'] != null) {
		data.area = json['area']?.toString();
	}
	if (json['area_id'] != null) {
		data.areaId = json['area_id']?.toInt();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['playurl'] != null) {
		data.playurl = json['playurl']?.toString();
	}
	if (json['accept_quality_v2'] != null) {
		data.acceptQualityV2 = new List<dynamic>();
		data.acceptQualityV2.addAll(json['accept_quality_v2']);
	}
	if (json['current_quality'] != null) {
		data.currentQuality = json['current_quality']?.toInt();
	}
	if (json['accept_quality'] != null) {
		data.acceptQuality = json['accept_quality']?.toString();
	}
	if (json['broadcast_type'] != null) {
		data.broadcastType = json['broadcast_type']?.toInt();
	}
	if (json['is_tv'] != null) {
		data.isTv = json['is_tv']?.toInt();
	}
	if (json['corner'] != null) {
		data.corner = json['corner']?.toString();
	}
	if (json['pendent'] != null) {
		data.pendent = json['pendent']?.toString();
	}
	if (json['area_v2_id'] != null) {
		data.areaV2Id = json['area_v2_id']?.toInt();
	}
	if (json['area_v2_name'] != null) {
		data.areaV2Name = json['area_v2_name']?.toString();
	}
	if (json['area_v2_parent_id'] != null) {
		data.areaV2ParentId = json['area_v2_parent_id']?.toInt();
	}
	if (json['area_v2_parent_name'] != null) {
		data.areaV2ParentName = json['area_v2_parent_name']?.toString();
	}
	return data;
}

Map<String, dynamic> liveDataRecommandDataLivesToJson(LiveDataRecommandDataLives entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.owner != null) {
		data['owner'] = entity.owner.toJson();
	}
	if (entity.cover != null) {
		data['cover'] = entity.cover.toJson();
	}
	data['room_id'] = entity.roomId;
	data['check_version'] = entity.checkVersion;
	data['online'] = entity.online;
	data['area'] = entity.area;
	data['area_id'] = entity.areaId;
	data['title'] = entity.title;
	data['playurl'] = entity.playurl;
	if (entity.acceptQualityV2 != null) {
		data['accept_quality_v2'] =  [];
	}
	data['current_quality'] = entity.currentQuality;
	data['accept_quality'] = entity.acceptQuality;
	data['broadcast_type'] = entity.broadcastType;
	data['is_tv'] = entity.isTv;
	data['corner'] = entity.corner;
	data['pendent'] = entity.pendent;
	data['area_v2_id'] = entity.areaV2Id;
	data['area_v2_name'] = entity.areaV2Name;
	data['area_v2_parent_id'] = entity.areaV2ParentId;
	data['area_v2_parent_name'] = entity.areaV2ParentName;
	return data;
}

liveDataRecommendDataLivesOwnerFromJson(LiveDataRecommendDataLivesOwner data, Map<String, dynamic> json) {
	if (json['face'] != null) {
		data.face = json['face']?.toString();
	}
	if (json['mid'] != null) {
		data.mid = json['mid']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	return data;
}

Map<String, dynamic> liveDataRecommendDataLivesOwnerToJson(LiveDataRecommendDataLivesOwner entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['face'] = entity.face;
	data['mid'] = entity.mid;
	data['name'] = entity.name;
	return data;
}

liveDataRecommendDataLivesCoverFromJson(LiveDataRecommendDataLivesCover data, Map<String, dynamic> json) {
	if (json['src'] != null) {
		data.src = json['src'];
	}
	if (json['height'] != null) {
		data.height = json['height']?.toInt();
	}
	if (json['width'] != null) {
		data.width = json['width']?.toInt();
	}
	return data;
}

Map<String, dynamic> liveDataRecommendDataLivesCoverToJson(LiveDataRecommendDataLivesCover entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['src'] = entity.src;
	data['height'] = entity.height;
	data['width'] = entity.width;
	return data;
}