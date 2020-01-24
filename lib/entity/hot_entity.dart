import 'package:xbilibili/generated/json/base/json_convert_content.dart';
import 'package:xbilibili/generated/json/base/json_filed.dart';

class HotEntity with JsonConvert<HotEntity> {
	int code;
	HotConfig config;
	List<HotData> data;
	String message;
	String ver;
}

class HotConfig with JsonConvert<HotConfig> {
	@JSONField(name: "item_title")
	String itemTitle;
	@JSONField(name: "head_image")
	String headImage;
	@JSONField(name: "bottom_text")
	String bottomText;
	@JSONField(name: "bottom_text_cover")
	String bottomTextCover;
	@JSONField(name: "bottom_text_url")
	String bottomTextUrl;
	@JSONField(name: "top_items")
	List<HotConfigTopItem> topItems;
	@JSONField(name: "share_info")
	HotConfigShareInfo shareInfo;
}

class HotConfigTopItem with JsonConvert<HotConfigTopItem> {
	String icon;
	String title;
	@JSONField(name: "module_id")
	String moduleId;
	String uri;
	@JSONField(name: "entrance_id")
	int entranceId;
	HotConfigTopItemsBubble bubble;
	@JSONField(name: "top_photo")
	String topPhoto;
}

class HotConfigTopItemsBubble with JsonConvert<HotConfigTopItemsBubble> {
	@JSONField(name: "bubble_content")
	String bubbleContent;
	int version;
	int stime;
}

class HotConfigShareInfo with JsonConvert<HotConfigShareInfo> {
	@JSONField(name: "current_top_photo")
	String currentTopPhoto;
	@JSONField(name: "current_title")
	String currentTitle;
	@JSONField(name: "share_desc")
	String shareDesc;
	@JSONField(name: "share_title")
	String shareTitle;
	@JSONField(name: "share_sub_title")
	String shareSubTitle;
	@JSONField(name: "share_icon")
	String shareIcon;
}

class HotData with JsonConvert<HotData> {
	@JSONField(name: "card_type")
	String cardType;
	@JSONField(name: "card_goto")
	String cardGoto;
	String goto;
	String param;
	String cover;
	String title;
	String uri;
	@JSONField(name: "three_point")
	HotDataThreePoint threePoint;
	HotDataArgs args;
	int idx;
	@JSONField(name: "from_type")
	String fromType;
	@JSONField(name: "three_point_v2")
	List<HotDataThreePointV2> threePointV2;
	@JSONField(name: "cover_right_text_1")
	String coverRightText1;
	@JSONField(name: "right_desc_1")
	String rightDesc1;
	@JSONField(name: "right_desc_2")
	String rightDesc2;
	@JSONField(name: "rcmd_reason_style")
	HotDataRcmdReasonStyle rcmdReasonStyle;
	@JSONField(name: "desc_button")
	HotDataDescButton descButton;
	@JSONField(name: "top_rcmd_reason_style")
	HotDataTopRcmdReasonStyle topRcmdReasonStyle;
	List<HotDataItem> item;
}

class HotDataThreePoint with JsonConvert<HotDataThreePoint> {
	@JSONField(name: "watch_later")
	int watchLater;
}

class HotDataArgs with JsonConvert<HotDataArgs> {

}

class HotDataThreePointV2 with JsonConvert<HotDataThreePointV2> {
	String title;
	String type;
}

class HotDataRcmdReasonStyle with JsonConvert<HotDataRcmdReasonStyle> {
	String text;
	@JSONField(name: "text_color")
	String textColor;
	@JSONField(name: "bg_color")
	String bgColor;
	@JSONField(name: "border_color")
	String borderColor;
	@JSONField(name: "text_color_night")
	String textColorNight;
	@JSONField(name: "bg_color_night")
	String bgColorNight;
	@JSONField(name: "border_color_night")
	String borderColorNight;
	@JSONField(name: "bg_style")
	int bgStyle;
}

class HotDataDescButton with JsonConvert<HotDataDescButton> {
	String text;
	String param;
	String event;
	int type;
	@JSONField(name: "event_v2")
	String eventV2;
}

class HotDataTopRcmdReasonStyle with JsonConvert<HotDataTopRcmdReasonStyle> {
	String text;
	@JSONField(name: "text_color")
	String textColor;
	@JSONField(name: "bg_color")
	String bgColor;
	@JSONField(name: "border_color")
	String borderColor;
	@JSONField(name: "text_color_night")
	String textColorNight;
	@JSONField(name: "bg_color_night")
	String bgColorNight;
	@JSONField(name: "border_color_night")
	String borderColorNight;
	@JSONField(name: "bg_style")
	int bgStyle;
}

class HotDataItem with JsonConvert<HotDataItem> {
	String title;
	String cover;
	String uri;
	String param;
	HotDataItemArgs args;
	String goto;
	@JSONField(name: "cover_left_text_1")
	String coverLeftText1;
	@JSONField(name: "cover_left_icon_1")
	int coverLeftIcon1;
	@JSONField(name: "cover_right_text")
	String coverRightText;
}

class HotDataItemArgs with JsonConvert<HotDataItemArgs> {
	@JSONField(name: "up_id")
	int upId;
	@JSONField(name: "up_name")
	String upName;
	int rid;
	String rname;
	int aid;
}
