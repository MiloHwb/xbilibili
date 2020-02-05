import 'package:xbilibili/entity/video_url_entity.dart';

videoUrlEntityFromJson(VideoUrlEntity data, Map<String, dynamic> json) {
	if (json['from'] != null) {
		data.from = json['from']?.toString();
	}
	if (json['result'] != null) {
		data.result = json['result']?.toString();
	}
	if (json['quality'] != null) {
		data.quality = json['quality']?.toInt();
	}
	if (json['format'] != null) {
		data.format = json['format']?.toString();
	}
	if (json['timelength'] != null) {
		data.timelength = json['timelength']?.toInt();
	}
	if (json['accept_format'] != null) {
		data.acceptFormat = json['accept_format']?.toString();
	}
	if (json['accept_quality'] != null) {
		data.acceptQuality = json['accept_quality']?.map((v) => v?.toInt())?.toList()?.cast<int>();
	}
	if (json['video_codecid'] != null) {
		data.videoCodecid = json['video_codecid']?.toInt();
	}
	if (json['video_project'] != null) {
		data.videoProject = json['video_project'];
	}
	if (json['seek_param'] != null) {
		data.seekParam = json['seek_param']?.toString();
	}
	if (json['seek_type'] != null) {
		data.seekType = json['seek_type']?.toString();
	}
	if (json['durl'] != null) {
		data.durl = new List<VideoUrlDurl>();
		(json['durl'] as List).forEach((v) {
			data.durl.add(new VideoUrlDurl().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> videoUrlEntityToJson(VideoUrlEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['from'] = entity.from;
	data['result'] = entity.result;
	data['quality'] = entity.quality;
	data['format'] = entity.format;
	data['timelength'] = entity.timelength;
	data['accept_format'] = entity.acceptFormat;
	data['accept_quality'] = entity.acceptQuality;
	data['video_codecid'] = entity.videoCodecid;
	data['video_project'] = entity.videoProject;
	data['seek_param'] = entity.seekParam;
	data['seek_type'] = entity.seekType;
	if (entity.durl != null) {
		data['durl'] =  entity.durl.map((v) => v.toJson()).toList();
	}
	return data;
}

videoUrlDurlFromJson(VideoUrlDurl data, Map<String, dynamic> json) {
	if (json['order'] != null) {
		data.order = json['order']?.toInt();
	}
	if (json['length'] != null) {
		data.length = json['length']?.toInt();
	}
	if (json['size'] != null) {
		data.size = json['size']?.toInt();
	}
	if (json['ahead'] != null) {
		data.ahead = json['ahead']?.toString();
	}
	if (json['vhead'] != null) {
		data.vhead = json['vhead']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	return data;
}

Map<String, dynamic> videoUrlDurlToJson(VideoUrlDurl entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['order'] = entity.order;
	data['length'] = entity.length;
	data['size'] = entity.size;
	data['ahead'] = entity.ahead;
	data['vhead'] = entity.vhead;
	data['url'] = entity.url;
	return data;
}