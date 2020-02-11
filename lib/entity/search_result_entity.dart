import 'package:xbilibili/generated/json/base/json_convert_content.dart';
import 'package:xbilibili/generated/json/base/json_filed.dart';

class SearchResultEntity with JsonConvert<SearchResultEntity> {
	int code;
	String message;
	int ttl;
	SearchResultData data;
}

class SearchResultData with JsonConvert<SearchResultData> {
	String trackid;
	int page;
	List<SearchResultDataNav> nav;
	SearchResultDataItems items;
	List<SearchResultDataItem> item;
	int array;
	int attribute;
	@JSONField(name: "exp_str")
	String expStr;
}

class SearchResultDataNav with JsonConvert<SearchResultDataNav> {
	String name;
	int total;
	int pages;
	int type;
	@JSONField(name: "show_more")
	int showMore;
}

class SearchResultDataItems with JsonConvert<SearchResultDataItems> {

}

class SearchResultDataItem with JsonConvert<SearchResultDataItem> {
	String trackid;
	String linktype;
	int position;
	String title;
	String cover;
	String uri;
	String param;
	String goto;
	int ptime;
	@JSONField(name: "season_id")
	int seasonId;
	@JSONField(name: "season_type")
	int seasonType;
	@JSONField(name: "season_type_name")
	String seasonTypeName;
	@JSONField(name: "media_type")
	int mediaType;
	String style;
	String styles;
	String cv;
	double rating;
	int vote;
	String area;
	@JSONField(name: "is_selection")
	int isSelection;
	String badge;
	List<SearchResultDataItemEpisode> episodes;
	String label;
	@JSONField(name: "watch_button")
	SearchResultDataItemWatchButton watchButton;
	@JSONField(name: "follow_button")
	SearchResultDataItemFollowButton followButton;
	@JSONField(name: "selection_style")
	String selectionStyle;
	@JSONField(name: "check_more")
	SearchResultDataItemCheckMore checkMore;
	@JSONField(name: "episodes_new")
	List<SearchResultDataItemEpisodesNew> episodesNew;
	String sign;
	int fans;
	int level;
	@JSONField(name: "official_verify")
	SearchResultDataItemOfficialVerify officialVerify;
	SearchResultDataItemVip vip;
	@JSONField(name: "av_items")
	List<SearchResultDataItemAvItem> avItems;
	@JSONField(name: "is_up")
	bool isUp;
	@JSONField(name: "live_uri")
	String liveUri;
	int archives;
	int roomid;
	int mid;
	int play;
	int danmaku;
	String author;
	@JSONField(name: "rec_tags")
	List<String> recTags;
	@JSONField(name: "new_rec_tags")
	List<SearchResultDataItemNewRecTag> newRecTags;
	String desc;
	String duration;
	String face;
}

class SearchResultDataItemEpisode with JsonConvert<SearchResultDataItemEpisode> {
	int position;
	String uri;
	String param;
	String index;
}

class SearchResultDataItemWatchButton with JsonConvert<SearchResultDataItemWatchButton> {
	String title;
	String link;
}

class SearchResultDataItemFollowButton with JsonConvert<SearchResultDataItemFollowButton> {
	String icon;
	SearchResultDataItemFollowButtonTexts texts;
	@JSONField(name: "status_report")
	String statusReport;
}

class SearchResultDataItemFollowButtonTexts with JsonConvert<SearchResultDataItemFollowButtonTexts> {
	@JSONField(name: "0")
	String $0;
	@JSONField(name: "1")
	String $1;
}

class SearchResultDataItemCheckMore with JsonConvert<SearchResultDataItemCheckMore> {
	String content;
	String uri;
}

class SearchResultDataItemEpisodesNew with JsonConvert<SearchResultDataItemEpisodesNew> {
	String title;
	String uri;
	String param;
	@JSONField(name: "is_new")
	int isNew;
	int position;
}

class SearchResultDataItemOfficialVerify with JsonConvert<SearchResultDataItemOfficialVerify> {
	int type;
}

class SearchResultDataItemVip with JsonConvert<SearchResultDataItemVip> {
	int type;
	int status;
	@JSONField(name: "due_date")
	int dueDate;
	@JSONField(name: "vip_pay_type")
	int vipPayType;
	@JSONField(name: "theme_type")
	int themeType;
	SearchResultDataItemVipLabel label;
}

class SearchResultDataItemVipLabel with JsonConvert<SearchResultDataItemVipLabel> {
	String path;
}

class SearchResultDataItemAvItem with JsonConvert<SearchResultDataItemAvItem> {
	int position;
	String title;
	String cover;
	String uri;
	String param;
	String goto;
	int play;
	int danmaku;
	int ctime;
	String duration;
}

class SearchResultDataItemNewRecTag with JsonConvert<SearchResultDataItemNewRecTag> {
	String text;
	@JSONField(name: "text_color")
	String textColor;
	@JSONField(name: "text_color_night")
	String textColorNight;
	@JSONField(name: "bg_color")
	String bgColor;
	@JSONField(name: "bg_color_night")
	String bgColorNight;
	@JSONField(name: "border_color")
	String borderColor;
	@JSONField(name: "border_color_night")
	String borderColorNight;
	@JSONField(name: "bg_style")
	int bgStyle;
}
