import 'package:xbilibili/entity/video_detail_entity.dart';

videoDetailEntityFromJson(VideoDetailEntity data, Map<String, dynamic> json) {
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
		data.data = new VideoDetailData().fromJson(json['data']);
	}
	return data;
}

Map<String, dynamic> videoDetailEntityToJson(VideoDetailEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['message'] = entity.message;
	data['ttl'] = entity.ttl;
	if (entity.data != null) {
		data['data'] = entity.data.toJson();
	}
	return data;
}

videoDetailDataFromJson(VideoDetailData data, Map<String, dynamic> json) {
	if (json['aid'] != null) {
		data.aid = json['aid']?.toInt();
	}
	if (json['videos'] != null) {
		data.videos = json['videos']?.toInt();
	}
	if (json['tid'] != null) {
		data.tid = json['tid']?.toInt();
	}
	if (json['tname'] != null) {
		data.tname = json['tname']?.toString();
	}
	if (json['copyright'] != null) {
		data.copyright = json['copyright']?.toInt();
	}
	if (json['pic'] != null) {
		data.pic = json['pic']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['pubdate'] != null) {
		data.pubdate = json['pubdate']?.toInt();
	}
	if (json['ctime'] != null) {
		data.ctime = json['ctime']?.toInt();
	}
	if (json['desc'] != null) {
		data.desc = json['desc']?.toString();
	}
	if (json['state'] != null) {
		data.state = json['state']?.toInt();
	}
	if (json['attribute'] != null) {
		data.attribute = json['attribute']?.toInt();
	}
	if (json['duration'] != null) {
		data.duration = json['duration']?.toInt();
	}
	if (json['mission_id'] != null) {
		data.missionId = json['mission_id']?.toInt();
	}
	if (json['rights'] != null) {
		data.rights = new VideoDetailDataRights().fromJson(json['rights']);
	}
	if (json['owner'] != null) {
		data.owner = new VideoDetailDataOwner().fromJson(json['owner']);
	}
	if (json['stat'] != null) {
		data.stat = new VideoDetailDataStat().fromJson(json['stat']);
	}
	if (json['dynamic'] != null) {
		data.xDynamic = json['dynamic']?.toString();
	}
	if (json['cid'] != null) {
		data.cid = json['cid']?.toInt();
	}
	if (json['dimension'] != null) {
		data.dimension = new VideoDetailDataDimension().fromJson(json['dimension']);
	}
	if (json['pages'] != null) {
		data.pages = new List<VideoDetailDataPage>();
		(json['pages'] as List).forEach((v) {
			data.pages.add(new VideoDetailDataPage().fromJson(v));
		});
	}
	if (json['owner_ext'] != null) {
		data.ownerExt = new VideoDetailDataOwnerExt().fromJson(json['owner_ext']);
	}
	if (json['req_user'] != null) {
		data.reqUser = new VideoDetailDataReqUser().fromJson(json['req_user']);
	}
	if (json['tag'] != null) {
		data.tag = new List<VideoDetailDataTag>();
		(json['tag'] as List).forEach((v) {
			data.tag.add(new VideoDetailDataTag().fromJson(v));
		});
	}
	if (json['t_icon'] != null) {
		data.tIcon = new VideoDetailDataTIcon().fromJson(json['t_icon']);
	}
	if (json['elec'] != null) {
		data.elec = new VideoDetailDataElec().fromJson(json['elec']);
	}
	if (json['relates'] != null) {
		data.relates = new List<VideoDetailDataRelate>();
		(json['relates'] as List).forEach((v) {
			data.relates.add(new VideoDetailDataRelate().fromJson(v));
		});
	}
	if (json['dislike_reasons'] != null) {
		data.dislikeReasons = new List<VideoDetailDataDislikeReason>();
		(json['dislike_reasons'] as List).forEach((v) {
			data.dislikeReasons.add(new VideoDetailDataDislikeReason().fromJson(v));
		});
	}
	if (json['dislike_reasons_v2'] != null) {
		data.dislikeReasonsV2 = new VideoDetailDataDislikeReasonsV2().fromJson(json['dislike_reasons_v2']);
	}
	if (json['dm_seg'] != null) {
		data.dmSeg = json['dm_seg']?.toInt();
	}
	if (json['paster'] != null) {
		data.paster = new VideoDetailDataPaster().fromJson(json['paster']);
	}
	if (json['player_icon'] != null) {
		data.playerIcon = new VideoDetailDataPlayerIcon().fromJson(json['player_icon']);
	}
	if (json['cms'] != null) {
		data.cms = new List<VideoDetailDataCm>();
		(json['cms'] as List).forEach((v) {
			data.cms.add(new VideoDetailDataCm().fromJson(v));
		});
	}
	if (json['cm_config'] != null) {
		data.cmConfig = new VideoDetailDataCmConfig().fromJson(json['cm_config']);
	}
	if (json['activity_url'] != null) {
		data.activityUrl = json['activity_url']?.toString();
	}
	if (json['short_link'] != null) {
		data.shortLink = json['short_link']?.toString();
	}
	if (json['play_param'] != null) {
		data.playParam = json['play_param']?.toInt();
	}
	if (json['label'] != null) {
		data.label = new VideoDetailDataLabel().fromJson(json['label']);
	}
	if (json['config'] != null) {
		data.config = new VideoDetailDataConfig().fromJson(json['config']);
	}
	if (json['share_subtitle'] != null) {
		data.shareSubtitle = json['share_subtitle']?.toString();
	}
	return data;
}

Map<String, dynamic> videoDetailDataToJson(VideoDetailData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['aid'] = entity.aid;
	data['videos'] = entity.videos;
	data['tid'] = entity.tid;
	data['tname'] = entity.tname;
	data['copyright'] = entity.copyright;
	data['pic'] = entity.pic;
	data['title'] = entity.title;
	data['pubdate'] = entity.pubdate;
	data['ctime'] = entity.ctime;
	data['desc'] = entity.desc;
	data['state'] = entity.state;
	data['attribute'] = entity.attribute;
	data['duration'] = entity.duration;
	data['mission_id'] = entity.missionId;
	if (entity.rights != null) {
		data['rights'] = entity.rights.toJson();
	}
	if (entity.owner != null) {
		data['owner'] = entity.owner.toJson();
	}
	if (entity.stat != null) {
		data['stat'] = entity.stat.toJson();
	}
	data['dynamic'] = entity.xDynamic;
	data['cid'] = entity.cid;
	if (entity.dimension != null) {
		data['dimension'] = entity.dimension.toJson();
	}
	if (entity.pages != null) {
		data['pages'] =  entity.pages.map((v) => v.toJson()).toList();
	}
	if (entity.ownerExt != null) {
		data['owner_ext'] = entity.ownerExt.toJson();
	}
	if (entity.reqUser != null) {
		data['req_user'] = entity.reqUser.toJson();
	}
	if (entity.tag != null) {
		data['tag'] =  entity.tag.map((v) => v.toJson()).toList();
	}
	if (entity.tIcon != null) {
		data['t_icon'] = entity.tIcon.toJson();
	}
	if (entity.elec != null) {
		data['elec'] = entity.elec.toJson();
	}
	if (entity.relates != null) {
		data['relates'] =  entity.relates.map((v) => v.toJson()).toList();
	}
	if (entity.dislikeReasons != null) {
		data['dislike_reasons'] =  entity.dislikeReasons.map((v) => v.toJson()).toList();
	}
	if (entity.dislikeReasonsV2 != null) {
		data['dislike_reasons_v2'] = entity.dislikeReasonsV2.toJson();
	}
	data['dm_seg'] = entity.dmSeg;
	if (entity.paster != null) {
		data['paster'] = entity.paster.toJson();
	}
	if (entity.playerIcon != null) {
		data['player_icon'] = entity.playerIcon.toJson();
	}
	if (entity.cms != null) {
		data['cms'] =  entity.cms.map((v) => v.toJson()).toList();
	}
	if (entity.cmConfig != null) {
		data['cm_config'] = entity.cmConfig.toJson();
	}
	data['activity_url'] = entity.activityUrl;
	data['short_link'] = entity.shortLink;
	data['play_param'] = entity.playParam;
	if (entity.label != null) {
		data['label'] = entity.label.toJson();
	}
	if (entity.config != null) {
		data['config'] = entity.config.toJson();
	}
	data['share_subtitle'] = entity.shareSubtitle;
	return data;
}

videoDetailDataRightsFromJson(VideoDetailDataRights data, Map<String, dynamic> json) {
	if (json['bp'] != null) {
		data.bp = json['bp']?.toInt();
	}
	if (json['elec'] != null) {
		data.elec = json['elec']?.toInt();
	}
	if (json['download'] != null) {
		data.download = json['download']?.toInt();
	}
	if (json['movie'] != null) {
		data.movie = json['movie']?.toInt();
	}
	if (json['pay'] != null) {
		data.pay = json['pay']?.toInt();
	}
	if (json['hd5'] != null) {
		data.hd5 = json['hd5']?.toInt();
	}
	if (json['no_reprint'] != null) {
		data.noReprint = json['no_reprint']?.toInt();
	}
	if (json['autoplay'] != null) {
		data.autoplay = json['autoplay']?.toInt();
	}
	if (json['ugc_pay'] != null) {
		data.ugcPay = json['ugc_pay']?.toInt();
	}
	if (json['is_cooperation'] != null) {
		data.isCooperation = json['is_cooperation']?.toInt();
	}
	if (json['ugc_pay_preview'] != null) {
		data.ugcPayPreview = json['ugc_pay_preview']?.toInt();
	}
	if (json['no_background'] != null) {
		data.noBackground = json['no_background']?.toInt();
	}
	return data;
}

Map<String, dynamic> videoDetailDataRightsToJson(VideoDetailDataRights entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['bp'] = entity.bp;
	data['elec'] = entity.elec;
	data['download'] = entity.download;
	data['movie'] = entity.movie;
	data['pay'] = entity.pay;
	data['hd5'] = entity.hd5;
	data['no_reprint'] = entity.noReprint;
	data['autoplay'] = entity.autoplay;
	data['ugc_pay'] = entity.ugcPay;
	data['is_cooperation'] = entity.isCooperation;
	data['ugc_pay_preview'] = entity.ugcPayPreview;
	data['no_background'] = entity.noBackground;
	return data;
}

videoDetailDataOwnerFromJson(VideoDetailDataOwner data, Map<String, dynamic> json) {
	if (json['mid'] != null) {
		data.mid = json['mid']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['face'] != null) {
		data.face = json['face']?.toString();
	}
	return data;
}

Map<String, dynamic> videoDetailDataOwnerToJson(VideoDetailDataOwner entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['mid'] = entity.mid;
	data['name'] = entity.name;
	data['face'] = entity.face;
	return data;
}

videoDetailDataStatFromJson(VideoDetailDataStat data, Map<String, dynamic> json) {
	if (json['aid'] != null) {
		data.aid = json['aid']?.toInt();
	}
	if (json['view'] != null) {
		data.view = json['view']?.toInt();
	}
	if (json['danmaku'] != null) {
		data.danmaku = json['danmaku']?.toInt();
	}
	if (json['reply'] != null) {
		data.reply = json['reply']?.toInt();
	}
	if (json['favorite'] != null) {
		data.favorite = json['favorite']?.toInt();
	}
	if (json['coin'] != null) {
		data.coin = json['coin']?.toInt();
	}
	if (json['share'] != null) {
		data.share = json['share']?.toInt();
	}
	if (json['now_rank'] != null) {
		data.nowRank = json['now_rank']?.toInt();
	}
	if (json['his_rank'] != null) {
		data.hisRank = json['his_rank']?.toInt();
	}
	if (json['like'] != null) {
		data.like = json['like']?.toInt();
	}
	if (json['dislike'] != null) {
		data.dislike = json['dislike']?.toInt();
	}
	return data;
}

Map<String, dynamic> videoDetailDataStatToJson(VideoDetailDataStat entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['aid'] = entity.aid;
	data['view'] = entity.view;
	data['danmaku'] = entity.danmaku;
	data['reply'] = entity.reply;
	data['favorite'] = entity.favorite;
	data['coin'] = entity.coin;
	data['share'] = entity.share;
	data['now_rank'] = entity.nowRank;
	data['his_rank'] = entity.hisRank;
	data['like'] = entity.like;
	data['dislike'] = entity.dislike;
	return data;
}

videoDetailDataDimensionFromJson(VideoDetailDataDimension data, Map<String, dynamic> json) {
	if (json['width'] != null) {
		data.width = json['width']?.toInt();
	}
	if (json['height'] != null) {
		data.height = json['height']?.toInt();
	}
	if (json['rotate'] != null) {
		data.rotate = json['rotate']?.toInt();
	}
	return data;
}

Map<String, dynamic> videoDetailDataDimensionToJson(VideoDetailDataDimension entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['width'] = entity.width;
	data['height'] = entity.height;
	data['rotate'] = entity.rotate;
	return data;
}

videoDetailDataPageFromJson(VideoDetailDataPage data, Map<String, dynamic> json) {
	if (json['cid'] != null) {
		data.cid = json['cid']?.toInt();
	}
	if (json['page'] != null) {
		data.page = json['page']?.toInt();
	}
	if (json['from'] != null) {
		data.from = json['from']?.toString();
	}
	if (json['part'] != null) {
		data.xPart = json['part']?.toString();
	}
	if (json['duration'] != null) {
		data.duration = json['duration']?.toInt();
	}
	if (json['vid'] != null) {
		data.vid = json['vid']?.toString();
	}
	if (json['weblink'] != null) {
		data.weblink = json['weblink']?.toString();
	}
	if (json['dimension'] != null) {
		data.dimension = new VideoDetailDataPagesDimension().fromJson(json['dimension']);
	}
	if (json['metas'] != null) {
		data.metas = new List<VideoDetailDataPagesMeta>();
		(json['metas'] as List).forEach((v) {
			data.metas.add(new VideoDetailDataPagesMeta().fromJson(v));
		});
	}
	if (json['dmlink'] != null) {
		data.dmlink = json['dmlink']?.toString();
	}
	if (json['dm'] != null) {
		data.dm = new VideoDetailDataPagesDm().fromJson(json['dm']);
	}
	if (json['download_title'] != null) {
		data.downloadTitle = json['download_title']?.toString();
	}
	if (json['download_subtitle'] != null) {
		data.downloadSubtitle = json['download_subtitle']?.toString();
	}
	return data;
}

Map<String, dynamic> videoDetailDataPageToJson(VideoDetailDataPage entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['cid'] = entity.cid;
	data['page'] = entity.page;
	data['from'] = entity.from;
	data['part'] = entity.xPart;
	data['duration'] = entity.duration;
	data['vid'] = entity.vid;
	data['weblink'] = entity.weblink;
	if (entity.dimension != null) {
		data['dimension'] = entity.dimension.toJson();
	}
	if (entity.metas != null) {
		data['metas'] =  entity.metas.map((v) => v.toJson()).toList();
	}
	data['dmlink'] = entity.dmlink;
	if (entity.dm != null) {
		data['dm'] = entity.dm.toJson();
	}
	data['download_title'] = entity.downloadTitle;
	data['download_subtitle'] = entity.downloadSubtitle;
	return data;
}

videoDetailDataPagesDimensionFromJson(VideoDetailDataPagesDimension data, Map<String, dynamic> json) {
	if (json['width'] != null) {
		data.width = json['width']?.toInt();
	}
	if (json['height'] != null) {
		data.height = json['height']?.toInt();
	}
	if (json['rotate'] != null) {
		data.rotate = json['rotate']?.toInt();
	}
	return data;
}

Map<String, dynamic> videoDetailDataPagesDimensionToJson(VideoDetailDataPagesDimension entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['width'] = entity.width;
	data['height'] = entity.height;
	data['rotate'] = entity.rotate;
	return data;
}

videoDetailDataPagesMetaFromJson(VideoDetailDataPagesMeta data, Map<String, dynamic> json) {
	if (json['quality'] != null) {
		data.quality = json['quality']?.toInt();
	}
	if (json['format'] != null) {
		data.format = json['format']?.toString();
	}
	if (json['size'] != null) {
		data.size = json['size']?.toInt();
	}
	return data;
}

Map<String, dynamic> videoDetailDataPagesMetaToJson(VideoDetailDataPagesMeta entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['quality'] = entity.quality;
	data['format'] = entity.format;
	data['size'] = entity.size;
	return data;
}

videoDetailDataPagesDmFromJson(VideoDetailDataPagesDm data, Map<String, dynamic> json) {
	if (json['closed'] != null) {
		data.closed = json['closed'];
	}
	if (json['real_name'] != null) {
		data.realName = json['real_name'];
	}
	if (json['count'] != null) {
		data.count = json['count']?.toInt();
	}
	if (json['mask'] != null) {
		data.mask = new VideoDetailDataPagesDmMask().fromJson(json['mask']);
	}
	if (json['subtitles'] != null) {
		data.subtitles = json['subtitles'];
	}
	return data;
}

Map<String, dynamic> videoDetailDataPagesDmToJson(VideoDetailDataPagesDm entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['closed'] = entity.closed;
	data['real_name'] = entity.realName;
	data['count'] = entity.count;
	if (entity.mask != null) {
		data['mask'] = entity.mask.toJson();
	}
	data['subtitles'] = entity.subtitles;
	return data;
}

videoDetailDataPagesDmMaskFromJson(VideoDetailDataPagesDmMask data, Map<String, dynamic> json) {
	return data;
}

Map<String, dynamic> videoDetailDataPagesDmMaskToJson(VideoDetailDataPagesDmMask entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	return data;
}

videoDetailDataOwnerExtFromJson(VideoDetailDataOwnerExt data, Map<String, dynamic> json) {
	if (json['official_verify'] != null) {
		data.officialVerify = new VideoDetailDataOwnerExtOfficialVerify().fromJson(json['official_verify']);
	}
	if (json['vip'] != null) {
		data.vip = new VideoDetailDataOwnerExtVip().fromJson(json['vip']);
	}
	if (json['assists'] != null) {
		data.assists = json['assists'];
	}
	if (json['fans'] != null) {
		data.fans = json['fans']?.toInt();
	}
	return data;
}

Map<String, dynamic> videoDetailDataOwnerExtToJson(VideoDetailDataOwnerExt entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.officialVerify != null) {
		data['official_verify'] = entity.officialVerify.toJson();
	}
	if (entity.vip != null) {
		data['vip'] = entity.vip.toJson();
	}
	data['assists'] = entity.assists;
	data['fans'] = entity.fans;
	return data;
}

videoDetailDataOwnerExtOfficialVerifyFromJson(VideoDetailDataOwnerExtOfficialVerify data, Map<String, dynamic> json) {
	if (json['type'] != null) {
		data.type = json['type']?.toInt();
	}
	if (json['desc'] != null) {
		data.desc = json['desc']?.toString();
	}
	return data;
}

Map<String, dynamic> videoDetailDataOwnerExtOfficialVerifyToJson(VideoDetailDataOwnerExtOfficialVerify entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['type'] = entity.type;
	data['desc'] = entity.desc;
	return data;
}

videoDetailDataOwnerExtVipFromJson(VideoDetailDataOwnerExtVip data, Map<String, dynamic> json) {
	if (json['vipType'] != null) {
		data.vipType = json['vipType']?.toInt();
	}
	if (json['vipDueDate'] != null) {
		data.vipDueDate = json['vipDueDate']?.toInt();
	}
	if (json['dueRemark'] != null) {
		data.dueRemark = json['dueRemark']?.toString();
	}
	if (json['accessStatus'] != null) {
		data.accessStatus = json['accessStatus']?.toInt();
	}
	if (json['vipStatus'] != null) {
		data.vipStatus = json['vipStatus']?.toInt();
	}
	if (json['vipStatusWarn'] != null) {
		data.vipStatusWarn = json['vipStatusWarn']?.toString();
	}
	if (json['themeType'] != null) {
		data.themeType = json['themeType']?.toInt();
	}
	if (json['label'] != null) {
		data.label = new VideoDetailDataOwnerExtVipLabel().fromJson(json['label']);
	}
	return data;
}

Map<String, dynamic> videoDetailDataOwnerExtVipToJson(VideoDetailDataOwnerExtVip entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['vipType'] = entity.vipType;
	data['vipDueDate'] = entity.vipDueDate;
	data['dueRemark'] = entity.dueRemark;
	data['accessStatus'] = entity.accessStatus;
	data['vipStatus'] = entity.vipStatus;
	data['vipStatusWarn'] = entity.vipStatusWarn;
	data['themeType'] = entity.themeType;
	if (entity.label != null) {
		data['label'] = entity.label.toJson();
	}
	return data;
}

videoDetailDataOwnerExtVipLabelFromJson(VideoDetailDataOwnerExtVipLabel data, Map<String, dynamic> json) {
	if (json['path'] != null) {
		data.path = json['path']?.toString();
	}
	return data;
}

Map<String, dynamic> videoDetailDataOwnerExtVipLabelToJson(VideoDetailDataOwnerExtVipLabel entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['path'] = entity.path;
	return data;
}

videoDetailDataReqUserFromJson(VideoDetailDataReqUser data, Map<String, dynamic> json) {
	if (json['attention'] != null) {
		data.attention = json['attention']?.toInt();
	}
	if (json['guest_attention'] != null) {
		data.guestAttention = json['guest_attention']?.toInt();
	}
	if (json['favorite'] != null) {
		data.favorite = json['favorite']?.toInt();
	}
	if (json['like'] != null) {
		data.like = json['like']?.toInt();
	}
	if (json['dislike'] != null) {
		data.dislike = json['dislike']?.toInt();
	}
	if (json['coin'] != null) {
		data.coin = json['coin']?.toInt();
	}
	return data;
}

Map<String, dynamic> videoDetailDataReqUserToJson(VideoDetailDataReqUser entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['attention'] = entity.attention;
	data['guest_attention'] = entity.guestAttention;
	data['favorite'] = entity.favorite;
	data['like'] = entity.like;
	data['dislike'] = entity.dislike;
	data['coin'] = entity.coin;
	return data;
}

videoDetailDataTagFromJson(VideoDetailDataTag data, Map<String, dynamic> json) {
	if (json['tag_id'] != null) {
		data.tagId = json['tag_id']?.toInt();
	}
	if (json['tag_name'] != null) {
		data.tagName = json['tag_name']?.toString();
	}
	if (json['cover'] != null) {
		data.cover = json['cover']?.toString();
	}
	if (json['likes'] != null) {
		data.likes = json['likes']?.toInt();
	}
	if (json['hates'] != null) {
		data.hates = json['hates']?.toInt();
	}
	if (json['liked'] != null) {
		data.liked = json['liked']?.toInt();
	}
	if (json['hated'] != null) {
		data.hated = json['hated']?.toInt();
	}
	if (json['attribute'] != null) {
		data.attribute = json['attribute']?.toInt();
	}
	if (json['is_activity'] != null) {
		data.isActivity = json['is_activity']?.toInt();
	}
	if (json['uri'] != null) {
		data.uri = json['uri']?.toString();
	}
	if (json['tag_type'] != null) {
		data.tagType = json['tag_type']?.toString();
	}
	return data;
}

Map<String, dynamic> videoDetailDataTagToJson(VideoDetailDataTag entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['tag_id'] = entity.tagId;
	data['tag_name'] = entity.tagName;
	data['cover'] = entity.cover;
	data['likes'] = entity.likes;
	data['hates'] = entity.hates;
	data['liked'] = entity.liked;
	data['hated'] = entity.hated;
	data['attribute'] = entity.attribute;
	data['is_activity'] = entity.isActivity;
	data['uri'] = entity.uri;
	data['tag_type'] = entity.tagType;
	return data;
}

videoDetailDataTIconFromJson(VideoDetailDataTIcon data, Map<String, dynamic> json) {
	if (json['act'] != null) {
		data.act = new VideoDetailDataTIconAct().fromJson(json['act']);
	}
	if (json['new'] != null) {
		data.xNew = new VideoDetailDataTIconNew().fromJson(json['new']);
	}
	return data;
}

Map<String, dynamic> videoDetailDataTIconToJson(VideoDetailDataTIcon entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.act != null) {
		data['act'] = entity.act.toJson();
	}
	if (entity.xNew != null) {
		data['new'] = entity.xNew.toJson();
	}
	return data;
}

videoDetailDataTIconActFromJson(VideoDetailDataTIconAct data, Map<String, dynamic> json) {
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	return data;
}

Map<String, dynamic> videoDetailDataTIconActToJson(VideoDetailDataTIconAct entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['icon'] = entity.icon;
	return data;
}

videoDetailDataTIconNewFromJson(VideoDetailDataTIconNew data, Map<String, dynamic> json) {
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	return data;
}

Map<String, dynamic> videoDetailDataTIconNewToJson(VideoDetailDataTIconNew entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['icon'] = entity.icon;
	return data;
}

videoDetailDataElecFromJson(VideoDetailDataElec data, Map<String, dynamic> json) {
	if (json['show'] != null) {
		data.xShow = json['show'];
	}
	if (json['total'] != null) {
		data.total = json['total']?.toInt();
	}
	if (json['list'] != null) {
		data.xList = new List<dynamic>();
		data.xList.addAll(json['list']);
	}
	if (json['elec_set'] != null) {
		data.elecSet = new VideoDetailDataElecElecSet().fromJson(json['elec_set']);
	}
	return data;
}

Map<String, dynamic> videoDetailDataElecToJson(VideoDetailDataElec entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['show'] = entity.xShow;
	data['total'] = entity.total;
	if (entity.xList != null) {
		data['list'] =  [];
	}
	if (entity.elecSet != null) {
		data['elec_set'] = entity.elecSet.toJson();
	}
	return data;
}

videoDetailDataElecElecSetFromJson(VideoDetailDataElecElecSet data, Map<String, dynamic> json) {
	if (json['elec_theme'] != null) {
		data.elecTheme = json['elec_theme']?.toInt();
	}
	if (json['rmb_rate'] != null) {
		data.rmbRate = json['rmb_rate']?.toInt();
	}
	if (json['integrity_rate'] != null) {
		data.integrityRate = json['integrity_rate']?.toInt();
	}
	if (json['round_mode'] != null) {
		data.roundMode = json['round_mode']?.toInt();
	}
	if (json['elec_list'] != null) {
		data.elecList = new List<VideoDetailDataElecElecSetElecList>();
		(json['elec_list'] as List).forEach((v) {
			data.elecList.add(new VideoDetailDataElecElecSetElecList().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> videoDetailDataElecElecSetToJson(VideoDetailDataElecElecSet entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['elec_theme'] = entity.elecTheme;
	data['rmb_rate'] = entity.rmbRate;
	data['integrity_rate'] = entity.integrityRate;
	data['round_mode'] = entity.roundMode;
	if (entity.elecList != null) {
		data['elec_list'] =  entity.elecList.map((v) => v.toJson()).toList();
	}
	return data;
}

videoDetailDataElecElecSetElecListFromJson(VideoDetailDataElecElecSetElecList data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['elec_num'] != null) {
		data.elecNum = json['elec_num']?.toInt();
	}
	if (json['is_customize'] != null) {
		data.isCustomize = json['is_customize']?.toInt();
	}
	if (json['min_elec'] != null) {
		data.minElec = json['min_elec']?.toInt();
	}
	if (json['max_elec'] != null) {
		data.maxElec = json['max_elec']?.toInt();
	}
	return data;
}

Map<String, dynamic> videoDetailDataElecElecSetElecListToJson(VideoDetailDataElecElecSetElecList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['elec_num'] = entity.elecNum;
	data['is_customize'] = entity.isCustomize;
	data['min_elec'] = entity.minElec;
	data['max_elec'] = entity.maxElec;
	return data;
}

videoDetailDataRelateFromJson(VideoDetailDataRelate data, Map<String, dynamic> json) {
	if (json['aid'] != null) {
		data.aid = json['aid']?.toInt();
	}
	if (json['pic'] != null) {
		data.pic = json['pic']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['owner'] != null) {
		data.owner = new VideoDetailDataRelatesOwner().fromJson(json['owner']);
	}
	if (json['stat'] != null) {
		data.stat = new VideoDetailDataRelatesStat().fromJson(json['stat']);
	}
	if (json['duration'] != null) {
		data.duration = json['duration']?.toInt();
	}
	if (json['goto'] != null) {
		data.goto = json['goto']?.toString();
	}
	if (json['param'] != null) {
		data.param = json['param']?.toString();
	}
	if (json['uri'] != null) {
		data.uri = json['uri']?.toString();
	}
	if (json['cid'] != null) {
		data.cid = json['cid']?.toInt();
	}
	if (json['ad_index'] != null) {
		data.adIndex = json['ad_index']?.toInt();
	}
	if (json['src_id'] != null) {
		data.srcId = json['src_id']?.toInt();
	}
	if (json['request_id'] != null) {
		data.requestId = json['request_id']?.toString();
	}
	if (json['is_ad_loc'] != null) {
		data.isAdLoc = json['is_ad_loc'];
	}
	if (json['client_ip'] != null) {
		data.clientIp = json['client_ip']?.toString();
	}
	if (json['card_index'] != null) {
		data.cardIndex = json['card_index']?.toInt();
	}
	if (json['trackid'] != null) {
		data.trackid = json['trackid']?.toString();
	}
	return data;
}

Map<String, dynamic> videoDetailDataRelateToJson(VideoDetailDataRelate entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['aid'] = entity.aid;
	data['pic'] = entity.pic;
	data['title'] = entity.title;
	if (entity.owner != null) {
		data['owner'] = entity.owner.toJson();
	}
	if (entity.stat != null) {
		data['stat'] = entity.stat.toJson();
	}
	data['duration'] = entity.duration;
	data['goto'] = entity.goto;
	data['param'] = entity.param;
	data['uri'] = entity.uri;
	data['cid'] = entity.cid;
	data['ad_index'] = entity.adIndex;
	data['src_id'] = entity.srcId;
	data['request_id'] = entity.requestId;
	data['is_ad_loc'] = entity.isAdLoc;
	data['client_ip'] = entity.clientIp;
	data['card_index'] = entity.cardIndex;
	data['trackid'] = entity.trackid;
	return data;
}

videoDetailDataRelatesOwnerFromJson(VideoDetailDataRelatesOwner data, Map<String, dynamic> json) {
	if (json['mid'] != null) {
		data.mid = json['mid']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['face'] != null) {
		data.face = json['face']?.toString();
	}
	return data;
}

Map<String, dynamic> videoDetailDataRelatesOwnerToJson(VideoDetailDataRelatesOwner entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['mid'] = entity.mid;
	data['name'] = entity.name;
	data['face'] = entity.face;
	return data;
}

videoDetailDataRelatesStatFromJson(VideoDetailDataRelatesStat data, Map<String, dynamic> json) {
	if (json['aid'] != null) {
		data.aid = json['aid']?.toInt();
	}
	if (json['view'] != null) {
		data.view = json['view']?.toInt();
	}
	if (json['danmaku'] != null) {
		data.danmaku = json['danmaku']?.toInt();
	}
	if (json['reply'] != null) {
		data.reply = json['reply']?.toInt();
	}
	if (json['favorite'] != null) {
		data.favorite = json['favorite']?.toInt();
	}
	if (json['coin'] != null) {
		data.coin = json['coin']?.toInt();
	}
	if (json['share'] != null) {
		data.share = json['share']?.toInt();
	}
	if (json['now_rank'] != null) {
		data.nowRank = json['now_rank']?.toInt();
	}
	if (json['his_rank'] != null) {
		data.hisRank = json['his_rank']?.toInt();
	}
	if (json['like'] != null) {
		data.like = json['like']?.toInt();
	}
	if (json['dislike'] != null) {
		data.dislike = json['dislike']?.toInt();
	}
	return data;
}

Map<String, dynamic> videoDetailDataRelatesStatToJson(VideoDetailDataRelatesStat entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['aid'] = entity.aid;
	data['view'] = entity.view;
	data['danmaku'] = entity.danmaku;
	data['reply'] = entity.reply;
	data['favorite'] = entity.favorite;
	data['coin'] = entity.coin;
	data['share'] = entity.share;
	data['now_rank'] = entity.nowRank;
	data['his_rank'] = entity.hisRank;
	data['like'] = entity.like;
	data['dislike'] = entity.dislike;
	return data;
}

videoDetailDataDislikeReasonFromJson(VideoDetailDataDislikeReason data, Map<String, dynamic> json) {
	if (json['reason_id'] != null) {
		data.reasonId = json['reason_id']?.toInt();
	}
	if (json['reason_name'] != null) {
		data.reasonName = json['reason_name']?.toString();
	}
	return data;
}

Map<String, dynamic> videoDetailDataDislikeReasonToJson(VideoDetailDataDislikeReason entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['reason_id'] = entity.reasonId;
	data['reason_name'] = entity.reasonName;
	return data;
}

videoDetailDataDislikeReasonsV2FromJson(VideoDetailDataDislikeReasonsV2 data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['subtitle'] != null) {
		data.subtitle = json['subtitle']?.toString();
	}
	if (json['reasons'] != null) {
		data.reasons = new List<VideoDetailDataDislikeReasonsV2Reason>();
		(json['reasons'] as List).forEach((v) {
			data.reasons.add(new VideoDetailDataDislikeReasonsV2Reason().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> videoDetailDataDislikeReasonsV2ToJson(VideoDetailDataDislikeReasonsV2 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['subtitle'] = entity.subtitle;
	if (entity.reasons != null) {
		data['reasons'] =  entity.reasons.map((v) => v.toJson()).toList();
	}
	return data;
}

videoDetailDataDislikeReasonsV2ReasonFromJson(VideoDetailDataDislikeReasonsV2Reason data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['mid'] != null) {
		data.mid = json['mid']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['tag_id'] != null) {
		data.tagId = json['tag_id']?.toInt();
	}
	if (json['rid'] != null) {
		data.rid = json['rid']?.toInt();
	}
	return data;
}

Map<String, dynamic> videoDetailDataDislikeReasonsV2ReasonToJson(VideoDetailDataDislikeReasonsV2Reason entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['mid'] = entity.mid;
	data['name'] = entity.name;
	data['tag_id'] = entity.tagId;
	data['rid'] = entity.rid;
	return data;
}

videoDetailDataPasterFromJson(VideoDetailDataPaster data, Map<String, dynamic> json) {
	if (json['aid'] != null) {
		data.aid = json['aid']?.toInt();
	}
	if (json['cid'] != null) {
		data.cid = json['cid']?.toInt();
	}
	if (json['duration'] != null) {
		data.duration = json['duration']?.toInt();
	}
	if (json['type'] != null) {
		data.type = json['type']?.toInt();
	}
	if (json['allow_jump'] != null) {
		data.allowJump = json['allow_jump']?.toInt();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	return data;
}

Map<String, dynamic> videoDetailDataPasterToJson(VideoDetailDataPaster entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['aid'] = entity.aid;
	data['cid'] = entity.cid;
	data['duration'] = entity.duration;
	data['type'] = entity.type;
	data['allow_jump'] = entity.allowJump;
	data['url'] = entity.url;
	return data;
}

videoDetailDataPlayerIconFromJson(VideoDetailDataPlayerIcon data, Map<String, dynamic> json) {
	if (json['url1'] != null) {
		data.url1 = json['url1']?.toString();
	}
	if (json['hash1'] != null) {
		data.hash1 = json['hash1']?.toString();
	}
	if (json['url2'] != null) {
		data.url2 = json['url2']?.toString();
	}
	if (json['hash2'] != null) {
		data.hash2 = json['hash2']?.toString();
	}
	if (json['ctime'] != null) {
		data.ctime = json['ctime']?.toInt();
	}
	return data;
}

Map<String, dynamic> videoDetailDataPlayerIconToJson(VideoDetailDataPlayerIcon entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['url1'] = entity.url1;
	data['hash1'] = entity.hash1;
	data['url2'] = entity.url2;
	data['hash2'] = entity.hash2;
	data['ctime'] = entity.ctime;
	return data;
}

videoDetailDataCmFromJson(VideoDetailDataCm data, Map<String, dynamic> json) {
	if (json['request_id'] != null) {
		data.requestId = json['request_id']?.toString();
	}
	if (json['rsc_id'] != null) {
		data.rscId = json['rsc_id']?.toInt();
	}
	if (json['src_id'] != null) {
		data.srcId = json['src_id']?.toInt();
	}
	if (json['is_ad_loc'] != null) {
		data.isAdLoc = json['is_ad_loc'];
	}
	if (json['client_ip'] != null) {
		data.clientIp = json['client_ip']?.toString();
	}
	if (json['index'] != null) {
		data.index = json['index']?.toInt();
	}
	if (json['ad_info'] != null) {
		data.adInfo = new VideoDetailDataCmsAdInfo().fromJson(json['ad_info']);
	}
	return data;
}

Map<String, dynamic> videoDetailDataCmToJson(VideoDetailDataCm entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['request_id'] = entity.requestId;
	data['rsc_id'] = entity.rscId;
	data['src_id'] = entity.srcId;
	data['is_ad_loc'] = entity.isAdLoc;
	data['client_ip'] = entity.clientIp;
	data['index'] = entity.index;
	if (entity.adInfo != null) {
		data['ad_info'] = entity.adInfo.toJson();
	}
	return data;
}

videoDetailDataCmsAdInfoFromJson(VideoDetailDataCmsAdInfo data, Map<String, dynamic> json) {
	return data;
}

Map<String, dynamic> videoDetailDataCmsAdInfoToJson(VideoDetailDataCmsAdInfo entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	return data;
}

videoDetailDataCmConfigFromJson(VideoDetailDataCmConfig data, Map<String, dynamic> json) {
	if (json['ads_control'] != null) {
		data.adsControl = new VideoDetailDataCmConfigAdsControl().fromJson(json['ads_control']);
	}
	return data;
}

Map<String, dynamic> videoDetailDataCmConfigToJson(VideoDetailDataCmConfig entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.adsControl != null) {
		data['ads_control'] = entity.adsControl.toJson();
	}
	return data;
}

videoDetailDataCmConfigAdsControlFromJson(VideoDetailDataCmConfigAdsControl data, Map<String, dynamic> json) {
	if (json['has_danmu'] != null) {
		data.hasDanmu = json['has_danmu']?.toInt();
	}
	return data;
}

Map<String, dynamic> videoDetailDataCmConfigAdsControlToJson(VideoDetailDataCmConfigAdsControl entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['has_danmu'] = entity.hasDanmu;
	return data;
}

videoDetailDataLabelFromJson(VideoDetailDataLabel data, Map<String, dynamic> json) {
	if (json['type'] != null) {
		data.type = json['type']?.toInt();
	}
	if (json['uri'] != null) {
		data.uri = json['uri']?.toString();
	}
	return data;
}

Map<String, dynamic> videoDetailDataLabelToJson(VideoDetailDataLabel entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['type'] = entity.type;
	data['uri'] = entity.uri;
	return data;
}

videoDetailDataConfigFromJson(VideoDetailDataConfig data, Map<String, dynamic> json) {
	if (json['relates_title'] != null) {
		data.relatesTitle = json['relates_title']?.toString();
	}
	if (json['share_style'] != null) {
		data.shareStyle = json['share_style']?.toInt();
	}
	return data;
}

Map<String, dynamic> videoDetailDataConfigToJson(VideoDetailDataConfig entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['relates_title'] = entity.relatesTitle;
	data['share_style'] = entity.shareStyle;
	return data;
}