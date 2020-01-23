import 'package:xbilibili/generated/json/base/json_convert_content.dart';
import 'package:xbilibili/generated/json/base/json_filed.dart';

class RecommendEntity with JsonConvert<RecommendEntity> {
	int code;
	RecommendConfig config;
	List<RecommendData> data;
	String message;
}

class RecommendConfig with JsonConvert<RecommendConfig> {
	@JSONField(name: "feed_clean_abtest")
	int feedCleanAbtest;
}

class RecommendData with JsonConvert<RecommendData> {
	String title;
	String cover;
	String uri;
	String param;
	String goto;
	String desc;
	int play;
	int danmaku;
	int reply;
	int favorite;
	int coin;
	int share;
	int like;
	int duration;
	int idx;
	int cid;
	int tid;
	String tname;
	RecommendDataTag tag;
	@JSONField(name: "dislike_reasons")
	List<RecommandDataDislikeReasons> dislikeReasons;
	int ctime;
	int autoplay;
	int mid;
	String name;
	String face;
	RecommendDataOfficial official;
	@JSONField(name: "autoplay_card")
	int autoplayCard;
	@JSONField(name: "request_id")
	String requestId;
	@JSONField(name: "src_id")
	int srcId;
	@JSONField(name: "is_ad_loc")
	bool isAdLoc;
	@JSONField(name: "client_ip")
	String clientIp;
	@JSONField(name: "ad_index")
	int adIndex;
	@JSONField(name: "card_index")
	int cardIndex;
}

class RecommendDataTag with JsonConvert<RecommendDataTag> {
	@JSONField(name: "tag_id")
	int tagId;
	@JSONField(name: "tag_name")
	String tagName;
	RecommendDataTagCount count;
}

class RecommendDataTagCount with JsonConvert<RecommendDataTagCount> {
	int atten;
}

class RecommandDataDislikeReasons with JsonConvert<RecommandDataDislikeReasons> {
	@JSONField(name: "reason_id")
	int reasonId;
	@JSONField(name: "reason_name")
	String reasonName;
}

class RecommendDataOfficial with JsonConvert<RecommendDataOfficial> {
	int role;
	String title;
}
