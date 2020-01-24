import 'package:xbilibili/entity/hot_entity.dart';

hotEntityFromJson(HotEntity data, Map<String, dynamic> json) {
	if (json['code'] != null) {
		data.code = json['code']?.toInt();
	}
	if (json['config'] != null) {
		data.config = new HotConfig().fromJson(json['config']);
	}
	if (json['data'] != null) {
		data.data = new List<HotData>();
		(json['data'] as List).forEach((v) {
			data.data.add(new HotData().fromJson(v));
		});
	}
	if (json['message'] != null) {
		data.message = json['message']?.toString();
	}
	if (json['ver'] != null) {
		data.ver = json['ver']?.toString();
	}
	return data;
}

Map<String, dynamic> hotEntityToJson(HotEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	if (entity.config != null) {
		data['config'] = entity.config.toJson();
	}
	if (entity.data != null) {
		data['data'] =  entity.data.map((v) => v.toJson()).toList();
	}
	data['message'] = entity.message;
	data['ver'] = entity.ver;
	return data;
}

hotConfigFromJson(HotConfig data, Map<String, dynamic> json) {
	if (json['item_title'] != null) {
		data.itemTitle = json['item_title']?.toString();
	}
	if (json['head_image'] != null) {
		data.headImage = json['head_image']?.toString();
	}
	if (json['bottom_text'] != null) {
		data.bottomText = json['bottom_text']?.toString();
	}
	if (json['bottom_text_cover'] != null) {
		data.bottomTextCover = json['bottom_text_cover']?.toString();
	}
	if (json['bottom_text_url'] != null) {
		data.bottomTextUrl = json['bottom_text_url']?.toString();
	}
	if (json['top_items'] != null) {
		data.topItems = new List<HotConfigTopItem>();
		(json['top_items'] as List).forEach((v) {
			data.topItems.add(new HotConfigTopItem().fromJson(v));
		});
	}
	if (json['share_info'] != null) {
		data.shareInfo = new HotConfigShareInfo().fromJson(json['share_info']);
	}
	return data;
}

Map<String, dynamic> hotConfigToJson(HotConfig entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['item_title'] = entity.itemTitle;
	data['head_image'] = entity.headImage;
	data['bottom_text'] = entity.bottomText;
	data['bottom_text_cover'] = entity.bottomTextCover;
	data['bottom_text_url'] = entity.bottomTextUrl;
	if (entity.topItems != null) {
		data['top_items'] =  entity.topItems.map((v) => v.toJson()).toList();
	}
	if (entity.shareInfo != null) {
		data['share_info'] = entity.shareInfo.toJson();
	}
	return data;
}

hotConfigTopItemFromJson(HotConfigTopItem data, Map<String, dynamic> json) {
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['module_id'] != null) {
		data.moduleId = json['module_id']?.toString();
	}
	if (json['uri'] != null) {
		data.uri = json['uri']?.toString();
	}
	if (json['entrance_id'] != null) {
		data.entranceId = json['entrance_id']?.toInt();
	}
	if (json['bubble'] != null) {
		data.bubble = new HotConfigTopItemsBubble().fromJson(json['bubble']);
	}
	if (json['top_photo'] != null) {
		data.topPhoto = json['top_photo']?.toString();
	}
	return data;
}

Map<String, dynamic> hotConfigTopItemToJson(HotConfigTopItem entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['icon'] = entity.icon;
	data['title'] = entity.title;
	data['module_id'] = entity.moduleId;
	data['uri'] = entity.uri;
	data['entrance_id'] = entity.entranceId;
	if (entity.bubble != null) {
		data['bubble'] = entity.bubble.toJson();
	}
	data['top_photo'] = entity.topPhoto;
	return data;
}

hotConfigTopItemsBubbleFromJson(HotConfigTopItemsBubble data, Map<String, dynamic> json) {
	if (json['bubble_content'] != null) {
		data.bubbleContent = json['bubble_content']?.toString();
	}
	if (json['version'] != null) {
		data.version = json['version']?.toInt();
	}
	if (json['stime'] != null) {
		data.stime = json['stime']?.toInt();
	}
	return data;
}

Map<String, dynamic> hotConfigTopItemsBubbleToJson(HotConfigTopItemsBubble entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['bubble_content'] = entity.bubbleContent;
	data['version'] = entity.version;
	data['stime'] = entity.stime;
	return data;
}

hotConfigShareInfoFromJson(HotConfigShareInfo data, Map<String, dynamic> json) {
	if (json['current_top_photo'] != null) {
		data.currentTopPhoto = json['current_top_photo']?.toString();
	}
	if (json['current_title'] != null) {
		data.currentTitle = json['current_title']?.toString();
	}
	if (json['share_desc'] != null) {
		data.shareDesc = json['share_desc']?.toString();
	}
	if (json['share_title'] != null) {
		data.shareTitle = json['share_title']?.toString();
	}
	if (json['share_sub_title'] != null) {
		data.shareSubTitle = json['share_sub_title']?.toString();
	}
	if (json['share_icon'] != null) {
		data.shareIcon = json['share_icon']?.toString();
	}
	return data;
}

Map<String, dynamic> hotConfigShareInfoToJson(HotConfigShareInfo entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['current_top_photo'] = entity.currentTopPhoto;
	data['current_title'] = entity.currentTitle;
	data['share_desc'] = entity.shareDesc;
	data['share_title'] = entity.shareTitle;
	data['share_sub_title'] = entity.shareSubTitle;
	data['share_icon'] = entity.shareIcon;
	return data;
}

hotDataFromJson(HotData data, Map<String, dynamic> json) {
	if (json['card_type'] != null) {
		data.cardType = json['card_type']?.toString();
	}
	if (json['card_goto'] != null) {
		data.cardGoto = json['card_goto']?.toString();
	}
	if (json['goto'] != null) {
		data.goto = json['goto']?.toString();
	}
	if (json['param'] != null) {
		data.param = json['param']?.toString();
	}
	if (json['cover'] != null) {
		data.cover = json['cover']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['uri'] != null) {
		data.uri = json['uri']?.toString();
	}
	if (json['three_point'] != null) {
		data.threePoint = new HotDataThreePoint().fromJson(json['three_point']);
	}
	if (json['args'] != null) {
		data.args = new HotDataArgs().fromJson(json['args']);
	}
	if (json['idx'] != null) {
		data.idx = json['idx']?.toInt();
	}
	if (json['from_type'] != null) {
		data.fromType = json['from_type']?.toString();
	}
	if (json['three_point_v2'] != null) {
		data.threePointV2 = new List<HotDataThreePointV2>();
		(json['three_point_v2'] as List).forEach((v) {
			data.threePointV2.add(new HotDataThreePointV2().fromJson(v));
		});
	}
	if (json['cover_right_text_1'] != null) {
		data.coverRightText1 = json['cover_right_text_1']?.toString();
	}
	if (json['right_desc_1'] != null) {
		data.rightDesc1 = json['right_desc_1']?.toString();
	}
	if (json['right_desc_2'] != null) {
		data.rightDesc2 = json['right_desc_2']?.toString();
	}
	if (json['rcmd_reason_style'] != null) {
		data.rcmdReasonStyle = new HotDataRcmdReasonStyle().fromJson(json['rcmd_reason_style']);
	}
	if (json['desc_button'] != null) {
		data.descButton = new HotDataDescButton().fromJson(json['desc_button']);
	}
	if (json['top_rcmd_reason_style'] != null) {
		data.topRcmdReasonStyle = new HotDataTopRcmdReasonStyle().fromJson(json['top_rcmd_reason_style']);
	}
	if (json['item'] != null) {
		data.item = new List<HotDataItem>();
		(json['item'] as List).forEach((v) {
			data.item.add(new HotDataItem().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> hotDataToJson(HotData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['card_type'] = entity.cardType;
	data['card_goto'] = entity.cardGoto;
	data['goto'] = entity.goto;
	data['param'] = entity.param;
	data['cover'] = entity.cover;
	data['title'] = entity.title;
	data['uri'] = entity.uri;
	if (entity.threePoint != null) {
		data['three_point'] = entity.threePoint.toJson();
	}
	if (entity.args != null) {
		data['args'] = entity.args.toJson();
	}
	data['idx'] = entity.idx;
	data['from_type'] = entity.fromType;
	if (entity.threePointV2 != null) {
		data['three_point_v2'] =  entity.threePointV2.map((v) => v.toJson()).toList();
	}
	data['cover_right_text_1'] = entity.coverRightText1;
	data['right_desc_1'] = entity.rightDesc1;
	data['right_desc_2'] = entity.rightDesc2;
	if (entity.rcmdReasonStyle != null) {
		data['rcmd_reason_style'] = entity.rcmdReasonStyle.toJson();
	}
	if (entity.descButton != null) {
		data['desc_button'] = entity.descButton.toJson();
	}
	if (entity.topRcmdReasonStyle != null) {
		data['top_rcmd_reason_style'] = entity.topRcmdReasonStyle.toJson();
	}
	if (entity.item != null) {
		data['item'] =  entity.item.map((v) => v.toJson()).toList();
	}
	return data;
}

hotDataThreePointFromJson(HotDataThreePoint data, Map<String, dynamic> json) {
	if (json['watch_later'] != null) {
		data.watchLater = json['watch_later']?.toInt();
	}
	return data;
}

Map<String, dynamic> hotDataThreePointToJson(HotDataThreePoint entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['watch_later'] = entity.watchLater;
	return data;
}

hotDataArgsFromJson(HotDataArgs data, Map<String, dynamic> json) {
	return data;
}

Map<String, dynamic> hotDataArgsToJson(HotDataArgs entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	return data;
}

hotDataThreePointV2FromJson(HotDataThreePointV2 data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['type'] != null) {
		data.type = json['type']?.toString();
	}
	return data;
}

Map<String, dynamic> hotDataThreePointV2ToJson(HotDataThreePointV2 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['type'] = entity.type;
	return data;
}

hotDataRcmdReasonStyleFromJson(HotDataRcmdReasonStyle data, Map<String, dynamic> json) {
	if (json['text'] != null) {
		data.text = json['text']?.toString();
	}
	if (json['text_color'] != null) {
		data.textColor = json['text_color']?.toString();
	}
	if (json['bg_color'] != null) {
		data.bgColor = json['bg_color']?.toString();
	}
	if (json['border_color'] != null) {
		data.borderColor = json['border_color']?.toString();
	}
	if (json['text_color_night'] != null) {
		data.textColorNight = json['text_color_night']?.toString();
	}
	if (json['bg_color_night'] != null) {
		data.bgColorNight = json['bg_color_night']?.toString();
	}
	if (json['border_color_night'] != null) {
		data.borderColorNight = json['border_color_night']?.toString();
	}
	if (json['bg_style'] != null) {
		data.bgStyle = json['bg_style']?.toInt();
	}
	return data;
}

Map<String, dynamic> hotDataRcmdReasonStyleToJson(HotDataRcmdReasonStyle entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['text'] = entity.text;
	data['text_color'] = entity.textColor;
	data['bg_color'] = entity.bgColor;
	data['border_color'] = entity.borderColor;
	data['text_color_night'] = entity.textColorNight;
	data['bg_color_night'] = entity.bgColorNight;
	data['border_color_night'] = entity.borderColorNight;
	data['bg_style'] = entity.bgStyle;
	return data;
}

hotDataDescButtonFromJson(HotDataDescButton data, Map<String, dynamic> json) {
	if (json['text'] != null) {
		data.text = json['text']?.toString();
	}
	if (json['param'] != null) {
		data.param = json['param']?.toString();
	}
	if (json['event'] != null) {
		data.event = json['event']?.toString();
	}
	if (json['type'] != null) {
		data.type = json['type']?.toInt();
	}
	if (json['event_v2'] != null) {
		data.eventV2 = json['event_v2']?.toString();
	}
	return data;
}

Map<String, dynamic> hotDataDescButtonToJson(HotDataDescButton entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['text'] = entity.text;
	data['param'] = entity.param;
	data['event'] = entity.event;
	data['type'] = entity.type;
	data['event_v2'] = entity.eventV2;
	return data;
}

hotDataTopRcmdReasonStyleFromJson(HotDataTopRcmdReasonStyle data, Map<String, dynamic> json) {
	if (json['text'] != null) {
		data.text = json['text']?.toString();
	}
	if (json['text_color'] != null) {
		data.textColor = json['text_color']?.toString();
	}
	if (json['bg_color'] != null) {
		data.bgColor = json['bg_color']?.toString();
	}
	if (json['border_color'] != null) {
		data.borderColor = json['border_color']?.toString();
	}
	if (json['text_color_night'] != null) {
		data.textColorNight = json['text_color_night']?.toString();
	}
	if (json['bg_color_night'] != null) {
		data.bgColorNight = json['bg_color_night']?.toString();
	}
	if (json['border_color_night'] != null) {
		data.borderColorNight = json['border_color_night']?.toString();
	}
	if (json['bg_style'] != null) {
		data.bgStyle = json['bg_style']?.toInt();
	}
	return data;
}

Map<String, dynamic> hotDataTopRcmdReasonStyleToJson(HotDataTopRcmdReasonStyle entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['text'] = entity.text;
	data['text_color'] = entity.textColor;
	data['bg_color'] = entity.bgColor;
	data['border_color'] = entity.borderColor;
	data['text_color_night'] = entity.textColorNight;
	data['bg_color_night'] = entity.bgColorNight;
	data['border_color_night'] = entity.borderColorNight;
	data['bg_style'] = entity.bgStyle;
	return data;
}

hotDataItemFromJson(HotDataItem data, Map<String, dynamic> json) {
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
	if (json['args'] != null) {
		data.args = new HotDataItemArgs().fromJson(json['args']);
	}
	if (json['goto'] != null) {
		data.goto = json['goto']?.toString();
	}
	if (json['cover_left_text_1'] != null) {
		data.coverLeftText1 = json['cover_left_text_1']?.toString();
	}
	if (json['cover_left_icon_1'] != null) {
		data.coverLeftIcon1 = json['cover_left_icon_1']?.toInt();
	}
	if (json['cover_right_text'] != null) {
		data.coverRightText = json['cover_right_text']?.toString();
	}
	return data;
}

Map<String, dynamic> hotDataItemToJson(HotDataItem entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['cover'] = entity.cover;
	data['uri'] = entity.uri;
	data['param'] = entity.param;
	if (entity.args != null) {
		data['args'] = entity.args.toJson();
	}
	data['goto'] = entity.goto;
	data['cover_left_text_1'] = entity.coverLeftText1;
	data['cover_left_icon_1'] = entity.coverLeftIcon1;
	data['cover_right_text'] = entity.coverRightText;
	return data;
}

hotDataItemArgsFromJson(HotDataItemArgs data, Map<String, dynamic> json) {
	if (json['up_id'] != null) {
		data.upId = json['up_id']?.toInt();
	}
	if (json['up_name'] != null) {
		data.upName = json['up_name']?.toString();
	}
	if (json['rid'] != null) {
		data.rid = json['rid']?.toInt();
	}
	if (json['rname'] != null) {
		data.rname = json['rname']?.toString();
	}
	if (json['aid'] != null) {
		data.aid = json['aid']?.toInt();
	}
	return data;
}

Map<String, dynamic> hotDataItemArgsToJson(HotDataItemArgs entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['up_id'] = entity.upId;
	data['up_name'] = entity.upName;
	data['rid'] = entity.rid;
	data['rname'] = entity.rname;
	data['aid'] = entity.aid;
	return data;
}