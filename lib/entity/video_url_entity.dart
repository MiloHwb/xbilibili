import 'package:xbilibili/generated/json/base/json_convert_content.dart';
import 'package:xbilibili/generated/json/base/json_filed.dart';

class VideoUrlEntity with JsonConvert<VideoUrlEntity> {
	String from;
	String result;
	int quality;
	String format;
	int timelength;
	@JSONField(name: "accept_format")
	String acceptFormat;
	@JSONField(name: "accept_quality")
	List<int> acceptQuality;
	@JSONField(name: "video_codecid")
	int videoCodecid;
	@JSONField(name: "video_project")
	bool videoProject;
	@JSONField(name: "seek_param")
	String seekParam;
	@JSONField(name: "seek_type")
	String seekType;
	List<VideoUrlDurl> durl;
}

class VideoUrlDurl with JsonConvert<VideoUrlDurl> {
	int order;
	int length;
	int size;
	String ahead;
	String vhead;
	String url;
}
