import 'package:xbilibili/entity/recommend_entity.dart';

recommendEntityFromJson(RecommendEntity data, Map<String, dynamic> json) {
	if (json['code'] != null) {
		data.code = json['code']?.toInt();
	}
	if (json['config'] != null) {
		data.config = new RecommendConfig().fromJson(json['config']);
	}
	if (json['data'] != null) {
		data.data = new List<RecommendData>();
		(json['data'] as List).forEach((v) {
			data.data.add(new RecommendData().fromJson(v));
		});
	}
	if (json['message'] != null) {
		data.message = json['message']?.toString();
	}
	return data;
}

Map<String, dynamic> recommendEntityToJson(RecommendEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	if (entity.config != null) {
		data['config'] = entity.config.toJson();
	}
	if (entity.data != null) {
		data['data'] =  entity.data.map((v) => v.toJson()).toList();
	}
	data['message'] = entity.message;
	return data;
}

recommendConfigFromJson(RecommendConfig data, Map<String, dynamic> json) {
	if (json['feed_clean_abtest'] != null) {
		data.feedCleanAbtest = json['feed_clean_abtest']?.toInt();
	}
	return data;
}

Map<String, dynamic> recommendConfigToJson(RecommendConfig entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['feed_clean_abtest'] = entity.feedCleanAbtest;
	return data;
}

recommendDataFromJson(RecommendData data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['cover'] != null) {
		data.cover = json['cover']?.toString();
	}
	if (json['uri'] != null) {
		data.uri = json['uri']?.toString();
	}
	if (json['param'] != null) {
		data.param = json['param']?.toString();
	}
	if (json['goto'] != null) {
		data.goto = json['goto']?.toString();
	}
	if (json['desc'] != null) {
		data.desc = json['desc']?.toString();
	}
	if (json['play'] != null) {
		data.play = json['play']?.toInt();
	}
	if (json['danmaku'] != null) {
		data.danmaku = json['danmaku']?.toInt();
	}
	if (json['reply'] != null) {
		data.reply = json['reply']?.toInt();
	}
	if (json['favorite'] != null) {
		data.favorite = json['favorite']?.toInt();
	}
	if (json['coin'] != null) {
		data.coin = json['coin']?.toInt();
	}
	if (json['share'] != null) {
		data.share = json['share']?.toInt();
	}
	if (json['like'] != null) {
		data.like = json['like']?.toInt();
	}
	if (json['duration'] != null) {
		data.duration = json['duration']?.toInt();
	}
	if (json['idx'] != null) {
		data.idx = json['idx']?.toInt();
	}
	if (json['cid'] != null) {
		data.cid = json['cid']?.toInt();
	}
	if (json['tid'] != null) {
		data.tid = json['tid']?.toInt();
	}
	if (json['tname'] != null) {
		data.tname = json['tname']?.toString();
	}
	if (json['tag'] != null) {
		data.tag = new RecommendDataTag().fromJson(json['tag']);
	}
	if (json['dislike_reasons'] != null) {
		data.dislikeReasons = new List<RecommandDataDislikeReasons>();
		(json['dislike_reasons'] as List).forEach((v) {
			data.dislikeReasons.add(new RecommandDataDislikeReasons().fromJson(v));
		});
	}
	if (json['ctime'] != null) {
		data.ctime = json['ctime']?.toInt();
	}
	if (json['autoplay'] != null) {
		data.autoplay = json['autoplay']?.toInt();
	}
	if (json['mid'] != null) {
		data.mid = json['mid']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['face'] != null) {
		data.face = json['face']?.toString();
	}
	if (json['official'] != null) {
		data.official = new RecommendDataOfficial().fromJson(json['official']);
	}
	if (json['autoplay_card'] != null) {
		data.autoplayCard = json['autoplay_card']?.toInt();
	}
	if (json['request_id'] != null) {
		data.requestId = json['request_id']?.toString();
	}
	if (json['src_id'] != null) {
		data.srcId = json['src_id']?.toInt();
	}
	if (json['is_ad_loc'] != null) {
		data.isAdLoc = json['is_ad_loc'];
	}
	if (json['client_ip'] != null) {
		data.clientIp = json['client_ip']?.toString();
	}
	if (json['ad_index'] != null) {
		data.adIndex = json['ad_index']?.toInt();
	}
	if (json['card_index'] != null) {
		data.cardIndex = json['card_index']?.toInt();
	}
	return data;
}

Map<String, dynamic> recommendDataToJson(RecommendData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['cover'] = entity.cover;
	data['uri'] = entity.uri;
	data['param'] = entity.param;
	data['goto'] = entity.goto;
	data['desc'] = entity.desc;
	data['play'] = entity.play;
	data['danmaku'] = entity.danmaku;
	data['reply'] = entity.reply;
	data['favorite'] = entity.favorite;
	data['coin'] = entity.coin;
	data['share'] = entity.share;
	data['like'] = entity.like;
	data['duration'] = entity.duration;
	data['idx'] = entity.idx;
	data['cid'] = entity.cid;
	data['tid'] = entity.tid;
	data['tname'] = entity.tname;
	if (entity.tag != null) {
		data['tag'] = entity.tag.toJson();
	}
	if (entity.dislikeReasons != null) {
		data['dislike_reasons'] =  entity.dislikeReasons.map((v) => v.toJson()).toList();
	}
	data['ctime'] = entity.ctime;
	data['autoplay'] = entity.autoplay;
	data['mid'] = entity.mid;
	data['name'] = entity.name;
	data['face'] = entity.face;
	if (entity.official != null) {
		data['official'] = entity.official.toJson();
	}
	data['autoplay_card'] = entity.autoplayCard;
	data['request_id'] = entity.requestId;
	data['src_id'] = entity.srcId;
	data['is_ad_loc'] = entity.isAdLoc;
	data['client_ip'] = entity.clientIp;
	data['ad_index'] = entity.adIndex;
	data['card_index'] = entity.cardIndex;
	return data;
}

recommendDataTagFromJson(RecommendDataTag data, Map<String, dynamic> json) {
	if (json['tag_id'] != null) {
		data.tagId = json['tag_id']?.toInt();
	}
	if (json['tag_name'] != null) {
		data.tagName = json['tag_name']?.toString();
	}
	if (json['count'] != null) {
		data.count = new RecommendDataTagCount().fromJson(json['count']);
	}
	return data;
}

Map<String, dynamic> recommendDataTagToJson(RecommendDataTag entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['tag_id'] = entity.tagId;
	data['tag_name'] = entity.tagName;
	if (entity.count != null) {
		data['count'] = entity.count.toJson();
	}
	return data;
}

recommendDataTagCountFromJson(RecommendDataTagCount data, Map<String, dynamic> json) {
	if (json['atten'] != null) {
		data.atten = json['atten']?.toInt();
	}
	return data;
}

Map<String, dynamic> recommendDataTagCountToJson(RecommendDataTagCount entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['atten'] = entity.atten;
	return data;
}

recommandDataDislikeReasonsFromJson(RecommandDataDislikeReasons data, Map<String, dynamic> json) {
	if (json['reason_id'] != null) {
		data.reasonId = json['reason_id']?.toInt();
	}
	if (json['reason_name'] != null) {
		data.reasonName = json['reason_name']?.toString();
	}
	return data;
}

Map<String, dynamic> recommandDataDislikeReasonsToJson(RecommandDataDislikeReasons entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['reason_id'] = entity.reasonId;
	data['reason_name'] = entity.reasonName;
	return data;
}

recommendDataOfficialFromJson(RecommendDataOfficial data, Map<String, dynamic> json) {
	if (json['role'] != null) {
		data.role = json['role']?.toInt();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	return data;
}

Map<String, dynamic> recommendDataOfficialToJson(RecommendDataOfficial entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['role'] = entity.role;
	data['title'] = entity.title;
	return data;
}