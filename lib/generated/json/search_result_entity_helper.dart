import 'package:xbilibili/entity/search_result_entity.dart';

searchResultEntityFromJson(SearchResultEntity data, Map<String, dynamic> json) {
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
		data.data = new SearchResultData().fromJson(json['data']);
	}
	return data;
}

Map<String, dynamic> searchResultEntityToJson(SearchResultEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['message'] = entity.message;
	data['ttl'] = entity.ttl;
	if (entity.data != null) {
		data['data'] = entity.data.toJson();
	}
	return data;
}

searchResultDataFromJson(SearchResultData data, Map<String, dynamic> json) {
	if (json['trackid'] != null) {
		data.trackid = json['trackid']?.toString();
	}
	if (json['page'] != null) {
		data.page = json['page']?.toInt();
	}
	if (json['nav'] != null) {
		data.nav = new List<SearchResultDataNav>();
		(json['nav'] as List).forEach((v) {
			data.nav.add(new SearchResultDataNav().fromJson(v));
		});
	}
	if (json['items'] != null) {
		data.items = new SearchResultDataItems().fromJson(json['items']);
	}
	if (json['item'] != null) {
		data.item = new List<SearchResultDataItem>();
		(json['item'] as List).forEach((v) {
			data.item.add(new SearchResultDataItem().fromJson(v));
		});
	}
	if (json['array'] != null) {
		data.array = json['array']?.toInt();
	}
	if (json['attribute'] != null) {
		data.attribute = json['attribute']?.toInt();
	}
	if (json['exp_str'] != null) {
		data.expStr = json['exp_str']?.toString();
	}
	return data;
}

Map<String, dynamic> searchResultDataToJson(SearchResultData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['trackid'] = entity.trackid;
	data['page'] = entity.page;
	if (entity.nav != null) {
		data['nav'] =  entity.nav.map((v) => v.toJson()).toList();
	}
	if (entity.items != null) {
		data['items'] = entity.items.toJson();
	}
	if (entity.item != null) {
		data['item'] =  entity.item.map((v) => v.toJson()).toList();
	}
	data['array'] = entity.array;
	data['attribute'] = entity.attribute;
	data['exp_str'] = entity.expStr;
	return data;
}

searchResultDataNavFromJson(SearchResultDataNav data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['total'] != null) {
		data.total = json['total']?.toInt();
	}
	if (json['pages'] != null) {
		data.pages = json['pages']?.toInt();
	}
	if (json['type'] != null) {
		data.type = json['type']?.toInt();
	}
	if (json['show_more'] != null) {
		data.showMore = json['show_more']?.toInt();
	}
	return data;
}

Map<String, dynamic> searchResultDataNavToJson(SearchResultDataNav entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['total'] = entity.total;
	data['pages'] = entity.pages;
	data['type'] = entity.type;
	data['show_more'] = entity.showMore;
	return data;
}

searchResultDataItemsFromJson(SearchResultDataItems data, Map<String, dynamic> json) {
	return data;
}

Map<String, dynamic> searchResultDataItemsToJson(SearchResultDataItems entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	return data;
}

searchResultDataItemFromJson(SearchResultDataItem data, Map<String, dynamic> json) {
	if (json['trackid'] != null) {
		data.trackid = json['trackid']?.toString();
	}
	if (json['linktype'] != null) {
		data.linktype = json['linktype']?.toString();
	}
	if (json['position'] != null) {
		data.position = json['position']?.toInt();
	}
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
	if (json['goto'] != null) {
		data.goto = json['goto']?.toString();
	}
	if (json['ptime'] != null) {
		data.ptime = json['ptime']?.toInt();
	}
	if (json['season_id'] != null) {
		data.seasonId = json['season_id']?.toInt();
	}
	if (json['season_type'] != null) {
		data.seasonType = json['season_type']?.toInt();
	}
	if (json['season_type_name'] != null) {
		data.seasonTypeName = json['season_type_name']?.toString();
	}
	if (json['media_type'] != null) {
		data.mediaType = json['media_type']?.toInt();
	}
	if (json['style'] != null) {
		data.style = json['style']?.toString();
	}
	if (json['styles'] != null) {
		data.styles = json['styles']?.toString();
	}
	if (json['cv'] != null) {
		data.cv = json['cv']?.toString();
	}
	if (json['rating'] != null) {
		data.rating = json['rating']?.toDouble();
	}
	if (json['vote'] != null) {
		data.vote = json['vote']?.toInt();
	}
	if (json['area'] != null) {
		data.area = json['area']?.toString();
	}
	if (json['is_selection'] != null) {
		data.isSelection = json['is_selection']?.toInt();
	}
	if (json['badge'] != null) {
		data.badge = json['badge']?.toString();
	}
	if (json['episodes'] != null) {
		data.episodes = new List<SearchResultDataItemEpisode>();
		(json['episodes'] as List).forEach((v) {
			data.episodes.add(new SearchResultDataItemEpisode().fromJson(v));
		});
	}
	if (json['label'] != null) {
		data.label = json['label']?.toString();
	}
	if (json['watch_button'] != null) {
		data.watchButton = new SearchResultDataItemWatchButton().fromJson(json['watch_button']);
	}
	if (json['follow_button'] != null) {
		data.followButton = new SearchResultDataItemFollowButton().fromJson(json['follow_button']);
	}
	if (json['selection_style'] != null) {
		data.selectionStyle = json['selection_style']?.toString();
	}
	if (json['check_more'] != null) {
		data.checkMore = new SearchResultDataItemCheckMore().fromJson(json['check_more']);
	}
	if (json['episodes_new'] != null) {
		data.episodesNew = new List<SearchResultDataItemEpisodesNew>();
		(json['episodes_new'] as List).forEach((v) {
			data.episodesNew.add(new SearchResultDataItemEpisodesNew().fromJson(v));
		});
	}
	if (json['sign'] != null) {
		data.sign = json['sign']?.toString();
	}
	if (json['fans'] != null) {
		data.fans = json['fans']?.toInt();
	}
	if (json['level'] != null) {
		data.level = json['level']?.toInt();
	}
	if (json['official_verify'] != null) {
		data.officialVerify = new SearchResultDataItemOfficialVerify().fromJson(json['official_verify']);
	}
	if (json['vip'] != null) {
		data.vip = new SearchResultDataItemVip().fromJson(json['vip']);
	}
	if (json['av_items'] != null) {
		data.avItems = new List<SearchResultDataItemAvItem>();
		(json['av_items'] as List).forEach((v) {
			data.avItems.add(new SearchResultDataItemAvItem().fromJson(v));
		});
	}
	if (json['is_up'] != null) {
		data.isUp = json['is_up'];
	}
	if (json['live_uri'] != null) {
		data.liveUri = json['live_uri']?.toString();
	}
	if (json['archives'] != null) {
		data.archives = json['archives']?.toInt();
	}
	if (json['roomid'] != null) {
		data.roomid = json['roomid']?.toInt();
	}
	if (json['mid'] != null) {
		data.mid = json['mid']?.toInt();
	}
	if (json['play'] != null) {
		data.play = json['play']?.toInt();
	}
	if (json['danmaku'] != null) {
		data.danmaku = json['danmaku']?.toInt();
	}
	if (json['author'] != null) {
		data.author = json['author']?.toString();
	}
	if (json['rec_tags'] != null) {
		data.recTags = json['rec_tags']?.map((v) => v?.toString())?.toList()?.cast<String>();
	}
	if (json['new_rec_tags'] != null) {
		data.newRecTags = new List<SearchResultDataItemNewRecTag>();
		(json['new_rec_tags'] as List).forEach((v) {
			data.newRecTags.add(new SearchResultDataItemNewRecTag().fromJson(v));
		});
	}
	if (json['desc'] != null) {
		data.desc = json['desc']?.toString();
	}
	if (json['duration'] != null) {
		data.duration = json['duration']?.toString();
	}
	if (json['face'] != null) {
		data.face = json['face']?.toString();
	}
	return data;
}

Map<String, dynamic> searchResultDataItemToJson(SearchResultDataItem entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['trackid'] = entity.trackid;
	data['linktype'] = entity.linktype;
	data['position'] = entity.position;
	data['title'] = entity.title;
	data['cover'] = entity.cover;
	data['uri'] = entity.uri;
	data['param'] = entity.param;
	data['goto'] = entity.goto;
	data['ptime'] = entity.ptime;
	data['season_id'] = entity.seasonId;
	data['season_type'] = entity.seasonType;
	data['season_type_name'] = entity.seasonTypeName;
	data['media_type'] = entity.mediaType;
	data['style'] = entity.style;
	data['styles'] = entity.styles;
	data['cv'] = entity.cv;
	data['rating'] = entity.rating;
	data['vote'] = entity.vote;
	data['area'] = entity.area;
	data['is_selection'] = entity.isSelection;
	data['badge'] = entity.badge;
	if (entity.episodes != null) {
		data['episodes'] =  entity.episodes.map((v) => v.toJson()).toList();
	}
	data['label'] = entity.label;
	if (entity.watchButton != null) {
		data['watch_button'] = entity.watchButton.toJson();
	}
	if (entity.followButton != null) {
		data['follow_button'] = entity.followButton.toJson();
	}
	data['selection_style'] = entity.selectionStyle;
	if (entity.checkMore != null) {
		data['check_more'] = entity.checkMore.toJson();
	}
	if (entity.episodesNew != null) {
		data['episodes_new'] =  entity.episodesNew.map((v) => v.toJson()).toList();
	}
	data['sign'] = entity.sign;
	data['fans'] = entity.fans;
	data['level'] = entity.level;
	if (entity.officialVerify != null) {
		data['official_verify'] = entity.officialVerify.toJson();
	}
	if (entity.vip != null) {
		data['vip'] = entity.vip.toJson();
	}
	if (entity.avItems != null) {
		data['av_items'] =  entity.avItems.map((v) => v.toJson()).toList();
	}
	data['is_up'] = entity.isUp;
	data['live_uri'] = entity.liveUri;
	data['archives'] = entity.archives;
	data['roomid'] = entity.roomid;
	data['mid'] = entity.mid;
	data['play'] = entity.play;
	data['danmaku'] = entity.danmaku;
	data['author'] = entity.author;
	data['rec_tags'] = entity.recTags;
	if (entity.newRecTags != null) {
		data['new_rec_tags'] =  entity.newRecTags.map((v) => v.toJson()).toList();
	}
	data['desc'] = entity.desc;
	data['duration'] = entity.duration;
	data['face'] = entity.face;
	return data;
}

searchResultDataItemEpisodeFromJson(SearchResultDataItemEpisode data, Map<String, dynamic> json) {
	if (json['position'] != null) {
		data.position = json['position']?.toInt();
	}
	if (json['uri'] != null) {
		data.uri = json['uri']?.toString();
	}
	if (json['param'] != null) {
		data.param = json['param']?.toString();
	}
	if (json['index'] != null) {
		data.index = json['index']?.toString();
	}
	return data;
}

Map<String, dynamic> searchResultDataItemEpisodeToJson(SearchResultDataItemEpisode entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['position'] = entity.position;
	data['uri'] = entity.uri;
	data['param'] = entity.param;
	data['index'] = entity.index;
	return data;
}

searchResultDataItemWatchButtonFromJson(SearchResultDataItemWatchButton data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['link'] != null) {
		data.link = json['link']?.toString();
	}
	return data;
}

Map<String, dynamic> searchResultDataItemWatchButtonToJson(SearchResultDataItemWatchButton entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['link'] = entity.link;
	return data;
}

searchResultDataItemFollowButtonFromJson(SearchResultDataItemFollowButton data, Map<String, dynamic> json) {
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	if (json['texts'] != null) {
		data.texts = new SearchResultDataItemFollowButtonTexts().fromJson(json['texts']);
	}
	if (json['status_report'] != null) {
		data.statusReport = json['status_report']?.toString();
	}
	return data;
}

Map<String, dynamic> searchResultDataItemFollowButtonToJson(SearchResultDataItemFollowButton entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['icon'] = entity.icon;
	if (entity.texts != null) {
		data['texts'] = entity.texts.toJson();
	}
	data['status_report'] = entity.statusReport;
	return data;
}

searchResultDataItemFollowButtonTextsFromJson(SearchResultDataItemFollowButtonTexts data, Map<String, dynamic> json) {
	return data;
}

Map<String, dynamic> searchResultDataItemFollowButtonTextsToJson(SearchResultDataItemFollowButtonTexts entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	return data;
}

searchResultDataItemCheckMoreFromJson(SearchResultDataItemCheckMore data, Map<String, dynamic> json) {
	if (json['content'] != null) {
		data.content = json['content']?.toString();
	}
	if (json['uri'] != null) {
		data.uri = json['uri']?.toString();
	}
	return data;
}

Map<String, dynamic> searchResultDataItemCheckMoreToJson(SearchResultDataItemCheckMore entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['content'] = entity.content;
	data['uri'] = entity.uri;
	return data;
}

searchResultDataItemEpisodesNewFromJson(SearchResultDataItemEpisodesNew data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['uri'] != null) {
		data.uri = json['uri']?.toString();
	}
	if (json['param'] != null) {
		data.param = json['param']?.toString();
	}
	if (json['is_new'] != null) {
		data.isNew = json['is_new']?.toInt();
	}
	if (json['position'] != null) {
		data.position = json['position']?.toInt();
	}
	return data;
}

Map<String, dynamic> searchResultDataItemEpisodesNewToJson(SearchResultDataItemEpisodesNew entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['uri'] = entity.uri;
	data['param'] = entity.param;
	data['is_new'] = entity.isNew;
	data['position'] = entity.position;
	return data;
}

searchResultDataItemOfficialVerifyFromJson(SearchResultDataItemOfficialVerify data, Map<String, dynamic> json) {
	if (json['type'] != null) {
		data.type = json['type']?.toInt();
	}
	return data;
}

Map<String, dynamic> searchResultDataItemOfficialVerifyToJson(SearchResultDataItemOfficialVerify entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['type'] = entity.type;
	return data;
}

searchResultDataItemVipFromJson(SearchResultDataItemVip data, Map<String, dynamic> json) {
	if (json['type'] != null) {
		data.type = json['type']?.toInt();
	}
	if (json['status'] != null) {
		data.status = json['status']?.toInt();
	}
	if (json['due_date'] != null) {
		data.dueDate = json['due_date']?.toInt();
	}
	if (json['vip_pay_type'] != null) {
		data.vipPayType = json['vip_pay_type']?.toInt();
	}
	if (json['theme_type'] != null) {
		data.themeType = json['theme_type']?.toInt();
	}
	if (json['label'] != null) {
		data.label = new SearchResultDataItemVipLabel().fromJson(json['label']);
	}
	return data;
}

Map<String, dynamic> searchResultDataItemVipToJson(SearchResultDataItemVip entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['type'] = entity.type;
	data['status'] = entity.status;
	data['due_date'] = entity.dueDate;
	data['vip_pay_type'] = entity.vipPayType;
	data['theme_type'] = entity.themeType;
	if (entity.label != null) {
		data['label'] = entity.label.toJson();
	}
	return data;
}

searchResultDataItemVipLabelFromJson(SearchResultDataItemVipLabel data, Map<String, dynamic> json) {
	if (json['path'] != null) {
		data.path = json['path']?.toString();
	}
	return data;
}

Map<String, dynamic> searchResultDataItemVipLabelToJson(SearchResultDataItemVipLabel entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['path'] = entity.path;
	return data;
}

searchResultDataItemAvItemFromJson(SearchResultDataItemAvItem data, Map<String, dynamic> json) {
	if (json['position'] != null) {
		data.position = json['position']?.toInt();
	}
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
	if (json['goto'] != null) {
		data.goto = json['goto']?.toString();
	}
	if (json['play'] != null) {
		data.play = json['play']?.toInt();
	}
	if (json['danmaku'] != null) {
		data.danmaku = json['danmaku']?.toInt();
	}
	if (json['ctime'] != null) {
		data.ctime = json['ctime']?.toInt();
	}
	if (json['duration'] != null) {
		data.duration = json['duration']?.toString();
	}
	return data;
}

Map<String, dynamic> searchResultDataItemAvItemToJson(SearchResultDataItemAvItem entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['position'] = entity.position;
	data['title'] = entity.title;
	data['cover'] = entity.cover;
	data['uri'] = entity.uri;
	data['param'] = entity.param;
	data['goto'] = entity.goto;
	data['play'] = entity.play;
	data['danmaku'] = entity.danmaku;
	data['ctime'] = entity.ctime;
	data['duration'] = entity.duration;
	return data;
}

searchResultDataItemNewRecTagFromJson(SearchResultDataItemNewRecTag data, Map<String, dynamic> json) {
	if (json['text'] != null) {
		data.text = json['text']?.toString();
	}
	if (json['text_color'] != null) {
		data.textColor = json['text_color']?.toString();
	}
	if (json['text_color_night'] != null) {
		data.textColorNight = json['text_color_night']?.toString();
	}
	if (json['bg_color'] != null) {
		data.bgColor = json['bg_color']?.toString();
	}
	if (json['bg_color_night'] != null) {
		data.bgColorNight = json['bg_color_night']?.toString();
	}
	if (json['border_color'] != null) {
		data.borderColor = json['border_color']?.toString();
	}
	if (json['border_color_night'] != null) {
		data.borderColorNight = json['border_color_night']?.toString();
	}
	if (json['bg_style'] != null) {
		data.bgStyle = json['bg_style']?.toInt();
	}
	return data;
}

Map<String, dynamic> searchResultDataItemNewRecTagToJson(SearchResultDataItemNewRecTag entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['text'] = entity.text;
	data['text_color'] = entity.textColor;
	data['text_color_night'] = entity.textColorNight;
	data['bg_color'] = entity.bgColor;
	data['bg_color_night'] = entity.bgColorNight;
	data['border_color'] = entity.borderColor;
	data['border_color_night'] = entity.borderColorNight;
	data['bg_style'] = entity.bgStyle;
	return data;
}