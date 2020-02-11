import 'package:xbilibili/entity/video_detail_v3_entity.dart';

videoDetailV3EntityFromJson(VideoDetailV3Entity data, Map<String, dynamic> json) {
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
		data.data = new VideoDetailV3Data().fromJson(json['data']);
	}
	return data;
}

Map<String, dynamic> videoDetailV3EntityToJson(VideoDetailV3Entity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['message'] = entity.message;
	data['ttl'] = entity.ttl;
	if (entity.data != null) {
		data['data'] = entity.data.toJson();
	}
	return data;
}

videoDetailV3DataFromJson(VideoDetailV3Data data, Map<String, dynamic> json) {
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
	if (json['accept_description'] != null) {
		data.acceptDescription = json['accept_description']?.map((v) => v?.toString())?.toList()?.cast<String>();
	}
	if (json['accept_quality'] != null) {
		data.acceptQuality = json['accept_quality']?.map((v) => v?.toInt())?.toList()?.cast<int>();
	}
	if (json['video_codecid'] != null) {
		data.videoCodecid = json['video_codecid']?.toInt();
	}
	if (json['fnver'] != null) {
		data.fnver = json['fnver']?.toInt();
	}
	if (json['fnval'] != null) {
		data.fnval = json['fnval']?.toInt();
	}
	if (json['video_project'] != null) {
		data.videoProject = json['video_project'];
	}
	if (json['dash'] != null) {
		data.dash = new VideoDetailV3DataDash().fromJson(json['dash']);
	}
	if (json['durl'] != null) {
		data.durl = new List<VideoDetailV3DataDurl>();
		(json['durl'] as List).forEach((v) {
			data.durl.add(new VideoDetailV3DataDurl().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> videoDetailV3DataToJson(VideoDetailV3Data entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['quality'] = entity.quality;
	data['format'] = entity.format;
	data['timelength'] = entity.timelength;
	data['accept_format'] = entity.acceptFormat;
	data['accept_description'] = entity.acceptDescription;
	data['accept_quality'] = entity.acceptQuality;
	data['video_codecid'] = entity.videoCodecid;
	data['fnver'] = entity.fnver;
	data['fnval'] = entity.fnval;
	data['video_project'] = entity.videoProject;
	if (entity.dash != null) {
		data['dash'] = entity.dash.toJson();
	}
	if (entity.durl != null) {
		data['durl'] =  entity.durl.map((v) => v.toJson()).toList();
	}
	return data;
}

videoDetailV3DataDashFromJson(VideoDetailV3DataDash data, Map<String, dynamic> json) {
	if (json['video'] != null) {
		data.video = new List<VideoDetailV3DataDashVideo>();
		(json['video'] as List).forEach((v) {
			data.video.add(new VideoDetailV3DataDashVideo().fromJson(v));
		});
	}
	if (json['audio'] != null) {
		data.audio = new List<VideoDetailV3DataDashAudio>();
		(json['audio'] as List).forEach((v) {
			data.audio.add(new VideoDetailV3DataDashAudio().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> videoDetailV3DataDashToJson(VideoDetailV3DataDash entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.video != null) {
		data['video'] =  entity.video.map((v) => v.toJson()).toList();
	}
	if (entity.audio != null) {
		data['audio'] =  entity.audio.map((v) => v.toJson()).toList();
	}
	return data;
}

videoDetailV3DataDashVideoFromJson(VideoDetailV3DataDashVideo data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['base_url'] != null) {
		data.baseUrl = json['base_url']?.toString();
	}
	if (json['backup_url'] != null) {
		data.backupUrl = json['backup_url']?.map((v) => v?.toString())?.toList()?.cast<String>();
	}
	if (json['bandwidth'] != null) {
		data.bandwidth = json['bandwidth']?.toInt();
	}
	if (json['codecid'] != null) {
		data.codecid = json['codecid']?.toInt();
	}
	if (json['size'] != null) {
		data.size = json['size']?.toInt();
	}
	return data;
}

Map<String, dynamic> videoDetailV3DataDashVideoToJson(VideoDetailV3DataDashVideo entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['base_url'] = entity.baseUrl;
	data['backup_url'] = entity.backupUrl;
	data['bandwidth'] = entity.bandwidth;
	data['codecid'] = entity.codecid;
	data['size'] = entity.size;
	return data;
}

videoDetailV3DataDashAudioFromJson(VideoDetailV3DataDashAudio data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['base_url'] != null) {
		data.baseUrl = json['base_url']?.toString();
	}
	if (json['backup_url'] != null) {
		data.backupUrl = json['backup_url']?.map((v) => v?.toString())?.toList()?.cast<String>();
	}
	if (json['bandwidth'] != null) {
		data.bandwidth = json['bandwidth']?.toInt();
	}
	if (json['codecid'] != null) {
		data.codecid = json['codecid']?.toInt();
	}
	if (json['size'] != null) {
		data.size = json['size']?.toInt();
	}
	return data;
}

Map<String, dynamic> videoDetailV3DataDashAudioToJson(VideoDetailV3DataDashAudio entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['base_url'] = entity.baseUrl;
	data['backup_url'] = entity.backupUrl;
	data['bandwidth'] = entity.bandwidth;
	data['codecid'] = entity.codecid;
	data['size'] = entity.size;
	return data;
}

videoDetailV3DataDurlFromJson(VideoDetailV3DataDurl data, Map<String, dynamic> json) {
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

Map<String, dynamic> videoDetailV3DataDurlToJson(VideoDetailV3DataDurl entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['order'] = entity.order;
	data['length'] = entity.length;
	data['size'] = entity.size;
	data['ahead'] = entity.ahead;
	data['vhead'] = entity.vhead;
	data['url'] = entity.url;
	return data;
}