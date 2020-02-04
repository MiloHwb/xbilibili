import 'package:xbilibili/entity/live_url_entity.dart';

liveUrlEntityFromJson(LiveUrlEntity data, Map<String, dynamic> json) {
	if (json['code'] != null) {
		data.code = json['code']?.toInt();
	}
	if (json['message'] != null) {
		data.message = json['message']?.toString();
	}
	if (json['ttl'] != null) {
		data.ttl = json['ttl']?.toInt();
	}
	if (json['data'] != null) {
		data.data = new LiveUrlData().fromJson(json['data']);
	}
	return data;
}

Map<String, dynamic> liveUrlEntityToJson(LiveUrlEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['message'] = entity.message;
	data['ttl'] = entity.ttl;
	if (entity.data != null) {
		data['data'] = entity.data.toJson();
	}
	return data;
}

liveUrlDataFromJson(LiveUrlData data, Map<String, dynamic> json) {
	if (json['current_quality'] != null) {
		data.currentQuality = json['current_quality']?.toInt();
	}
	if (json['accept_quality'] != null) {
		data.acceptQuality = json['accept_quality']?.map((v) => v?.toString())?.toList()?.cast<String>();
	}
	if (json['current_qn'] != null) {
		data.currentQn = json['current_qn']?.toInt();
	}
	if (json['quality_description'] != null) {
		data.qualityDescription = new List<LiveUrlDataQualityDescription>();
		(json['quality_description'] as List).forEach((v) {
			data.qualityDescription.add(new LiveUrlDataQualityDescription().fromJson(v));
		});
	}
	if (json['durl'] != null) {
		data.durl = new List<LiveUrlDataDurl>();
		(json['durl'] as List).forEach((v) {
			data.durl.add(new LiveUrlDataDurl().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> liveUrlDataToJson(LiveUrlData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['current_quality'] = entity.currentQuality;
	data['accept_quality'] = entity.acceptQuality;
	data['current_qn'] = entity.currentQn;
	if (entity.qualityDescription != null) {
		data['quality_description'] =  entity.qualityDescription.map((v) => v.toJson()).toList();
	}
	if (entity.durl != null) {
		data['durl'] =  entity.durl.map((v) => v.toJson()).toList();
	}
	return data;
}

liveUrlDataQualityDescriptionFromJson(LiveUrlDataQualityDescription data, Map<String, dynamic> json) {
	if (json['qn'] != null) {
		data.qn = json['qn']?.toInt();
	}
	if (json['desc'] != null) {
		data.desc = json['desc']?.toString();
	}
	return data;
}

Map<String, dynamic> liveUrlDataQualityDescriptionToJson(LiveUrlDataQualityDescription entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['qn'] = entity.qn;
	data['desc'] = entity.desc;
	return data;
}

liveUrlDataDurlFromJson(LiveUrlDataDurl data, Map<String, dynamic> json) {
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['length'] != null) {
		data.length = json['length']?.toInt();
	}
	if (json['order'] != null) {
		data.order = json['order']?.toInt();
	}
	if (json['stream_type'] != null) {
		data.streamType = json['stream_type']?.toInt();
	}
	return data;
}

Map<String, dynamic> liveUrlDataDurlToJson(LiveUrlDataDurl entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['url'] = entity.url;
	data['length'] = entity.length;
	data['order'] = entity.order;
	data['stream_type'] = entity.streamType;
	return data;
}