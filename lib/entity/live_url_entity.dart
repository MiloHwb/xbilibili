import 'package:xbilibili/generated/json/base/json_convert_content.dart';
import 'package:xbilibili/generated/json/base/json_filed.dart';

class LiveUrlEntity with JsonConvert<LiveUrlEntity> {
	int code;
	String message;
	int ttl;
	LiveUrlData data;
}

class LiveUrlData with JsonConvert<LiveUrlData> {
	@JSONField(name: "current_quality")
	int currentQuality;
	@JSONField(name: "accept_quality")
	List<String> acceptQuality;
	@JSONField(name: "current_qn")
	int currentQn;
	@JSONField(name: "quality_description")
	List<LiveUrlDataQualityDescription> qualityDescription;
	List<LiveUrlDataDurl> durl;
}

class LiveUrlDataQualityDescription with JsonConvert<LiveUrlDataQualityDescription> {
	int qn;
	String desc;
}

class LiveUrlDataDurl with JsonConvert<LiveUrlDataDurl> {
	String url;
	int length;
	int order;
	@JSONField(name: "stream_type")
	int streamType;
}
