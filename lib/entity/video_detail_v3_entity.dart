import 'package:xbilibili/generated/json/base/json_convert_content.dart';
import 'package:xbilibili/generated/json/base/json_filed.dart';

class VideoDetailV3Entity with JsonConvert<VideoDetailV3Entity> {
	int code;
	String message;
	int ttl;
	VideoDetailV3Data data;
}

class VideoDetailV3Data with JsonConvert<VideoDetailV3Data> {
	int quality;
	String format;
	int timelength;
	@JSONField(name: "accept_format")
	String acceptFormat;
	@JSONField(name: "accept_description")
	List<String> acceptDescription;
	@JSONField(name: "accept_quality")
	List<int> acceptQuality;
	@JSONField(name: "video_codecid")
	int videoCodecid;
	int fnver;
	int fnval;
	@JSONField(name: "video_project")
	bool videoProject;
	VideoDetailV3DataDash dash;
	List<VideoDetailV3DataDurl> durl;
}

class VideoDetailV3DataDash with JsonConvert<VideoDetailV3DataDash> {
	List<VideoDetailV3DataDashVideo> video;
	List<VideoDetailV3DataDashAudio> audio;
}

class VideoDetailV3DataDashVideo with JsonConvert<VideoDetailV3DataDashVideo> {
	int id;
	@JSONField(name: "base_url")
	String baseUrl;
	@JSONField(name: "backup_url")
	List<String> backupUrl;
	int bandwidth;
	int codecid;
	int size;
}

class VideoDetailV3DataDashAudio with JsonConvert<VideoDetailV3DataDashAudio> {
	int id;
	@JSONField(name: "base_url")
	String baseUrl;
	@JSONField(name: "backup_url")
	List<String> backupUrl;
	int bandwidth;
	int codecid;
	int size;
}

class VideoDetailV3DataDurl with JsonConvert<VideoDetailV3DataDurl> {
	int order;
	int length;
	int size;
	String ahead;
	String vhead;
	String url;
}
