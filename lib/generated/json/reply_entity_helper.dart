import 'package:xbilibili/entity/reply_entity.dart';

replyEntityFromJson(ReplyEntity data, Map<String, dynamic> json) {
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
		data.data = new ReplyData().fromJson(json['data']);
	}
	return data;
}

Map<String, dynamic> replyEntityToJson(ReplyEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['message'] = entity.message;
	data['ttl'] = entity.ttl;
	if (entity.data != null) {
		data['data'] = entity.data.toJson();
	}
	return data;
}

replyDataFromJson(ReplyData data, Map<String, dynamic> json) {
	if (json['cursor'] != null) {
		data.cursor = new ReplyDataCursor().fromJson(json['cursor']);
	}
	if (json['hots'] != null) {
		data.hots = new List<ReplyDataHot>();
		(json['hots'] as List).forEach((v) {
			data.hots.add(new ReplyDataHot().fromJson(v));
		});
	}
	if (json['notice'] != null) {
		data.notice = json['notice'];
	}
	if (json['replies'] != null) {
		data.replies = new List<ReplyDataReply>();
		(json['replies'] as List).forEach((v) {
			data.replies.add(new ReplyDataReply().fromJson(v));
		});
	}
	if (json['top'] != null) {
		data.top = new ReplyDataTop().fromJson(json['top']);
	}
	if (json['lottery_card'] != null) {
		data.lotteryCard = json['lottery_card'];
	}
	if (json['folder'] != null) {
		data.folder = new ReplyDataFolder().fromJson(json['folder']);
	}
	if (json['assist'] != null) {
		data.assist = json['assist']?.toInt();
	}
	if (json['blacklist'] != null) {
		data.blacklist = json['blacklist']?.toInt();
	}
	if (json['vote'] != null) {
		data.vote = json['vote']?.toInt();
	}
	if (json['lottery'] != null) {
		data.lottery = json['lottery']?.toInt();
	}
	if (json['config'] != null) {
		data.config = new ReplyDataConfig().fromJson(json['config']);
	}
	if (json['upper'] != null) {
		data.upper = new ReplyDataUpper().fromJson(json['upper']);
	}
	if (json['show_bvid'] != null) {
		data.showBvid = json['show_bvid'];
	}
	if (json['control'] != null) {
		data.control = new ReplyDataControl().fromJson(json['control']);
	}
	return data;
}

Map<String, dynamic> replyDataToJson(ReplyData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.cursor != null) {
		data['cursor'] = entity.cursor.toJson();
	}
	if (entity.hots != null) {
		data['hots'] =  entity.hots.map((v) => v.toJson()).toList();
	}
	data['notice'] = entity.notice;
	if (entity.replies != null) {
		data['replies'] =  entity.replies.map((v) => v.toJson()).toList();
	}
	if (entity.top != null) {
		data['top'] = entity.top.toJson();
	}
	data['lottery_card'] = entity.lotteryCard;
	if (entity.folder != null) {
		data['folder'] = entity.folder.toJson();
	}
	data['assist'] = entity.assist;
	data['blacklist'] = entity.blacklist;
	data['vote'] = entity.vote;
	data['lottery'] = entity.lottery;
	if (entity.config != null) {
		data['config'] = entity.config.toJson();
	}
	if (entity.upper != null) {
		data['upper'] = entity.upper.toJson();
	}
	data['show_bvid'] = entity.showBvid;
	if (entity.control != null) {
		data['control'] = entity.control.toJson();
	}
	return data;
}

replyDataCursorFromJson(ReplyDataCursor data, Map<String, dynamic> json) {
	if (json['all_count'] != null) {
		data.allCount = json['all_count']?.toInt();
	}
	if (json['is_begin'] != null) {
		data.isBegin = json['is_begin'];
	}
	if (json['prev'] != null) {
		data.prev = json['prev']?.toInt();
	}
	if (json['next'] != null) {
		data.next = json['next']?.toInt();
	}
	if (json['is_end'] != null) {
		data.isEnd = json['is_end'];
	}
	if (json['mode'] != null) {
		data.mode = json['mode']?.toInt();
	}
	if (json['show_type'] != null) {
		data.showType = json['show_type']?.toInt();
	}
	if (json['support_mode'] != null) {
		data.supportMode = json['support_mode']?.map((v) => v?.toInt())?.toList()?.cast<int>();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	return data;
}

Map<String, dynamic> replyDataCursorToJson(ReplyDataCursor entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['all_count'] = entity.allCount;
	data['is_begin'] = entity.isBegin;
	data['prev'] = entity.prev;
	data['next'] = entity.next;
	data['is_end'] = entity.isEnd;
	data['mode'] = entity.mode;
	data['show_type'] = entity.showType;
	data['support_mode'] = entity.supportMode;
	data['name'] = entity.name;
	return data;
}

replyDataHotFromJson(ReplyDataHot data, Map<String, dynamic> json) {
	if (json['rpid'] != null) {
		data.rpid = json['rpid']?.toInt();
	}
	if (json['oid'] != null) {
		data.oid = json['oid']?.toInt();
	}
	if (json['type'] != null) {
		data.type = json['type']?.toInt();
	}
	if (json['mid'] != null) {
		data.mid = json['mid']?.toInt();
	}
	if (json['root'] != null) {
		data.root = json['root']?.toInt();
	}
	if (json['parent'] != null) {
		data.parent = json['parent']?.toInt();
	}
	if (json['dialog'] != null) {
		data.dialog = json['dialog']?.toInt();
	}
	if (json['count'] != null) {
		data.count = json['count']?.toInt();
	}
	if (json['rcount'] != null) {
		data.rcount = json['rcount']?.toInt();
	}
	if (json['floor'] != null) {
		data.floor = json['floor']?.toInt();
	}
	if (json['state'] != null) {
		data.state = json['state']?.toInt();
	}
	if (json['fansgrade'] != null) {
		data.fansgrade = json['fansgrade']?.toInt();
	}
	if (json['attr'] != null) {
		data.attr = json['attr']?.toInt();
	}
	if (json['ctime'] != null) {
		data.ctime = json['ctime']?.toInt();
	}
	if (json['rpid_str'] != null) {
		data.rpidStr = json['rpid_str']?.toString();
	}
	if (json['root_str'] != null) {
		data.rootStr = json['root_str']?.toString();
	}
	if (json['parent_str'] != null) {
		data.parentStr = json['parent_str']?.toString();
	}
	if (json['like'] != null) {
		data.like = json['like']?.toInt();
	}
	if (json['action'] != null) {
		data.action = json['action']?.toInt();
	}
	if (json['member'] != null) {
		data.member = new ReplyDataHotsMember().fromJson(json['member']);
	}
	if (json['content'] != null) {
		data.content = new ReplyDataHotsContent().fromJson(json['content']);
	}
	if (json['replies'] != null) {
		data.replies = new List<ReplyDataHotsReply>();
		(json['replies'] as List).forEach((v) {
			data.replies.add(new ReplyDataHotsReply().fromJson(v));
		});
	}
	if (json['assist'] != null) {
		data.assist = json['assist']?.toInt();
	}
	if (json['folder'] != null) {
		data.folder = new ReplyDataHotsFolder().fromJson(json['folder']);
	}
	if (json['up_action'] != null) {
		data.upAction = new ReplyDataHotsUpAction().fromJson(json['up_action']);
	}
	if (json['show_follow'] != null) {
		data.showFollow = json['show_follow'];
	}
	return data;
}

Map<String, dynamic> replyDataHotToJson(ReplyDataHot entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['rpid'] = entity.rpid;
	data['oid'] = entity.oid;
	data['type'] = entity.type;
	data['mid'] = entity.mid;
	data['root'] = entity.root;
	data['parent'] = entity.parent;
	data['dialog'] = entity.dialog;
	data['count'] = entity.count;
	data['rcount'] = entity.rcount;
	data['floor'] = entity.floor;
	data['state'] = entity.state;
	data['fansgrade'] = entity.fansgrade;
	data['attr'] = entity.attr;
	data['ctime'] = entity.ctime;
	data['rpid_str'] = entity.rpidStr;
	data['root_str'] = entity.rootStr;
	data['parent_str'] = entity.parentStr;
	data['like'] = entity.like;
	data['action'] = entity.action;
	if (entity.member != null) {
		data['member'] = entity.member.toJson();
	}
	if (entity.content != null) {
		data['content'] = entity.content.toJson();
	}
	if (entity.replies != null) {
		data['replies'] =  entity.replies.map((v) => v.toJson()).toList();
	}
	data['assist'] = entity.assist;
	if (entity.folder != null) {
		data['folder'] = entity.folder.toJson();
	}
	if (entity.upAction != null) {
		data['up_action'] = entity.upAction.toJson();
	}
	data['show_follow'] = entity.showFollow;
	return data;
}

replyDataHotsMemberFromJson(ReplyDataHotsMember data, Map<String, dynamic> json) {
	if (json['mid'] != null) {
		data.mid = json['mid']?.toString();
	}
	if (json['uname'] != null) {
		data.uname = json['uname']?.toString();
	}
	if (json['sex'] != null) {
		data.sex = json['sex']?.toString();
	}
	if (json['sign'] != null) {
		data.sign = json['sign']?.toString();
	}
	if (json['avatar'] != null) {
		data.avatar = json['avatar']?.toString();
	}
	if (json['rank'] != null) {
		data.rank = json['rank']?.toString();
	}
	if (json['DisplayRank'] != null) {
		data.displayRank = json['DisplayRank']?.toString();
	}
	if (json['level_info'] != null) {
		data.levelInfo = new ReplyDataHotsMemberLevelInfo().fromJson(json['level_info']);
	}
	if (json['pendant'] != null) {
		data.pendant = new ReplyDataHotsMemberPendant().fromJson(json['pendant']);
	}
	if (json['nameplate'] != null) {
		data.nameplate = new ReplyDataHotsMemberNameplate().fromJson(json['nameplate']);
	}
	if (json['official_verify'] != null) {
		data.officialVerify = new ReplyDataHotsMemberOfficialVerify().fromJson(json['official_verify']);
	}
	if (json['vip'] != null) {
		data.vip = new ReplyDataHotsMemberVip().fromJson(json['vip']);
	}
	if (json['fans_detail'] != null) {
		data.fansDetail = json['fans_detail'];
	}
	if (json['following'] != null) {
		data.following = json['following']?.toInt();
	}
	if (json['user_sailing'] != null) {
		data.userSailing = new ReplyDataHotsMemberUserSailing().fromJson(json['user_sailing']);
	}
	return data;
}

Map<String, dynamic> replyDataHotsMemberToJson(ReplyDataHotsMember entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['mid'] = entity.mid;
	data['uname'] = entity.uname;
	data['sex'] = entity.sex;
	data['sign'] = entity.sign;
	data['avatar'] = entity.avatar;
	data['rank'] = entity.rank;
	data['DisplayRank'] = entity.displayRank;
	if (entity.levelInfo != null) {
		data['level_info'] = entity.levelInfo.toJson();
	}
	if (entity.pendant != null) {
		data['pendant'] = entity.pendant.toJson();
	}
	if (entity.nameplate != null) {
		data['nameplate'] = entity.nameplate.toJson();
	}
	if (entity.officialVerify != null) {
		data['official_verify'] = entity.officialVerify.toJson();
	}
	if (entity.vip != null) {
		data['vip'] = entity.vip.toJson();
	}
	data['fans_detail'] = entity.fansDetail;
	data['following'] = entity.following;
	if (entity.userSailing != null) {
		data['user_sailing'] = entity.userSailing.toJson();
	}
	return data;
}

replyDataHotsMemberLevelInfoFromJson(ReplyDataHotsMemberLevelInfo data, Map<String, dynamic> json) {
	if (json['current_level'] != null) {
		data.currentLevel = json['current_level']?.toInt();
	}
	if (json['current_min'] != null) {
		data.currentMin = json['current_min']?.toInt();
	}
	if (json['current_exp'] != null) {
		data.currentExp = json['current_exp']?.toInt();
	}
	if (json['next_exp'] != null) {
		data.nextExp = json['next_exp']?.toInt();
	}
	return data;
}

Map<String, dynamic> replyDataHotsMemberLevelInfoToJson(ReplyDataHotsMemberLevelInfo entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['current_level'] = entity.currentLevel;
	data['current_min'] = entity.currentMin;
	data['current_exp'] = entity.currentExp;
	data['next_exp'] = entity.nextExp;
	return data;
}

replyDataHotsMemberPendantFromJson(ReplyDataHotsMemberPendant data, Map<String, dynamic> json) {
	if (json['pid'] != null) {
		data.pid = json['pid']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['image'] != null) {
		data.image = json['image']?.toString();
	}
	if (json['expire'] != null) {
		data.expire = json['expire']?.toInt();
	}
	return data;
}

Map<String, dynamic> replyDataHotsMemberPendantToJson(ReplyDataHotsMemberPendant entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['pid'] = entity.pid;
	data['name'] = entity.name;
	data['image'] = entity.image;
	data['expire'] = entity.expire;
	return data;
}

replyDataHotsMemberNameplateFromJson(ReplyDataHotsMemberNameplate data, Map<String, dynamic> json) {
	if (json['nid'] != null) {
		data.nid = json['nid']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['image'] != null) {
		data.image = json['image']?.toString();
	}
	if (json['image_small'] != null) {
		data.imageSmall = json['image_small']?.toString();
	}
	if (json['level'] != null) {
		data.level = json['level']?.toString();
	}
	if (json['condition'] != null) {
		data.condition = json['condition']?.toString();
	}
	return data;
}

Map<String, dynamic> replyDataHotsMemberNameplateToJson(ReplyDataHotsMemberNameplate entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['nid'] = entity.nid;
	data['name'] = entity.name;
	data['image'] = entity.image;
	data['image_small'] = entity.imageSmall;
	data['level'] = entity.level;
	data['condition'] = entity.condition;
	return data;
}

replyDataHotsMemberOfficialVerifyFromJson(ReplyDataHotsMemberOfficialVerify data, Map<String, dynamic> json) {
	if (json['type'] != null) {
		data.type = json['type']?.toInt();
	}
	if (json['desc'] != null) {
		data.desc = json['desc']?.toString();
	}
	return data;
}

Map<String, dynamic> replyDataHotsMemberOfficialVerifyToJson(ReplyDataHotsMemberOfficialVerify entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['type'] = entity.type;
	data['desc'] = entity.desc;
	return data;
}

replyDataHotsMemberVipFromJson(ReplyDataHotsMemberVip data, Map<String, dynamic> json) {
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
		data.label = new ReplyDataHotsMemberVipLabel().fromJson(json['label']);
	}
	return data;
}

Map<String, dynamic> replyDataHotsMemberVipToJson(ReplyDataHotsMemberVip entity) {
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

replyDataHotsMemberVipLabelFromJson(ReplyDataHotsMemberVipLabel data, Map<String, dynamic> json) {
	if (json['path'] != null) {
		data.path = json['path']?.toString();
	}
	return data;
}

Map<String, dynamic> replyDataHotsMemberVipLabelToJson(ReplyDataHotsMemberVipLabel entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['path'] = entity.path;
	return data;
}

replyDataHotsMemberUserSailingFromJson(ReplyDataHotsMemberUserSailing data, Map<String, dynamic> json) {
	if (json['pendant'] != null) {
		data.pendant = json['pendant'];
	}
	if (json['cardbg'] != null) {
		data.cardbg = json['cardbg'];
	}
	if (json['cardbg_with_focus'] != null) {
		data.cardbgWithFocus = json['cardbg_with_focus'];
	}
	return data;
}

Map<String, dynamic> replyDataHotsMemberUserSailingToJson(ReplyDataHotsMemberUserSailing entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['pendant'] = entity.pendant;
	data['cardbg'] = entity.cardbg;
	data['cardbg_with_focus'] = entity.cardbgWithFocus;
	return data;
}

replyDataHotsContentFromJson(ReplyDataHotsContent data, Map<String, dynamic> json) {
	if (json['message'] != null) {
		data.message = json['message']?.toString();
	}
	if (json['plat'] != null) {
		data.plat = json['plat']?.toInt();
	}
	if (json['device'] != null) {
		data.device = json['device']?.toString();
	}
	if (json['members'] != null) {
		data.members = new List<dynamic>();
		data.members.addAll(json['members']);
	}
	return data;
}

Map<String, dynamic> replyDataHotsContentToJson(ReplyDataHotsContent entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['message'] = entity.message;
	data['plat'] = entity.plat;
	data['device'] = entity.device;
	if (entity.members != null) {
		data['members'] =  [];
	}
	return data;
}

replyDataHotsReplyFromJson(ReplyDataHotsReply data, Map<String, dynamic> json) {
	if (json['rpid'] != null) {
		data.rpid = json['rpid']?.toInt();
	}
	if (json['oid'] != null) {
		data.oid = json['oid']?.toInt();
	}
	if (json['type'] != null) {
		data.type = json['type']?.toInt();
	}
	if (json['mid'] != null) {
		data.mid = json['mid']?.toInt();
	}
	if (json['root'] != null) {
		data.root = json['root']?.toInt();
	}
	if (json['parent'] != null) {
		data.parent = json['parent']?.toInt();
	}
	if (json['dialog'] != null) {
		data.dialog = json['dialog']?.toInt();
	}
	if (json['count'] != null) {
		data.count = json['count']?.toInt();
	}
	if (json['rcount'] != null) {
		data.rcount = json['rcount']?.toInt();
	}
	if (json['floor'] != null) {
		data.floor = json['floor']?.toInt();
	}
	if (json['state'] != null) {
		data.state = json['state']?.toInt();
	}
	if (json['fansgrade'] != null) {
		data.fansgrade = json['fansgrade']?.toInt();
	}
	if (json['attr'] != null) {
		data.attr = json['attr']?.toInt();
	}
	if (json['ctime'] != null) {
		data.ctime = json['ctime']?.toInt();
	}
	if (json['rpid_str'] != null) {
		data.rpidStr = json['rpid_str']?.toString();
	}
	if (json['root_str'] != null) {
		data.rootStr = json['root_str']?.toString();
	}
	if (json['parent_str'] != null) {
		data.parentStr = json['parent_str']?.toString();
	}
	if (json['like'] != null) {
		data.like = json['like']?.toInt();
	}
	if (json['action'] != null) {
		data.action = json['action']?.toInt();
	}
	if (json['member'] != null) {
		data.member = new ReplyDataHotsRepliesMember().fromJson(json['member']);
	}
	if (json['content'] != null) {
		data.content = new ReplyDataHotsRepliesContent().fromJson(json['content']);
	}
	if (json['replies'] != null) {
		data.replies = new List<dynamic>();
		data.replies.addAll(json['replies']);
	}
	if (json['assist'] != null) {
		data.assist = json['assist']?.toInt();
	}
	if (json['folder'] != null) {
		data.folder = new ReplyDataHotsRepliesFolder().fromJson(json['folder']);
	}
	if (json['up_action'] != null) {
		data.upAction = new ReplyDataHotsRepliesUpAction().fromJson(json['up_action']);
	}
	if (json['show_follow'] != null) {
		data.showFollow = json['show_follow'];
	}
	return data;
}

Map<String, dynamic> replyDataHotsReplyToJson(ReplyDataHotsReply entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['rpid'] = entity.rpid;
	data['oid'] = entity.oid;
	data['type'] = entity.type;
	data['mid'] = entity.mid;
	data['root'] = entity.root;
	data['parent'] = entity.parent;
	data['dialog'] = entity.dialog;
	data['count'] = entity.count;
	data['rcount'] = entity.rcount;
	data['floor'] = entity.floor;
	data['state'] = entity.state;
	data['fansgrade'] = entity.fansgrade;
	data['attr'] = entity.attr;
	data['ctime'] = entity.ctime;
	data['rpid_str'] = entity.rpidStr;
	data['root_str'] = entity.rootStr;
	data['parent_str'] = entity.parentStr;
	data['like'] = entity.like;
	data['action'] = entity.action;
	if (entity.member != null) {
		data['member'] = entity.member.toJson();
	}
	if (entity.content != null) {
		data['content'] = entity.content.toJson();
	}
	if (entity.replies != null) {
		data['replies'] =  [];
	}
	data['assist'] = entity.assist;
	if (entity.folder != null) {
		data['folder'] = entity.folder.toJson();
	}
	if (entity.upAction != null) {
		data['up_action'] = entity.upAction.toJson();
	}
	data['show_follow'] = entity.showFollow;
	return data;
}

replyDataHotsRepliesMemberFromJson(ReplyDataHotsRepliesMember data, Map<String, dynamic> json) {
	if (json['mid'] != null) {
		data.mid = json['mid']?.toString();
	}
	if (json['uname'] != null) {
		data.uname = json['uname']?.toString();
	}
	if (json['sex'] != null) {
		data.sex = json['sex']?.toString();
	}
	if (json['sign'] != null) {
		data.sign = json['sign']?.toString();
	}
	if (json['avatar'] != null) {
		data.avatar = json['avatar']?.toString();
	}
	if (json['rank'] != null) {
		data.rank = json['rank']?.toString();
	}
	if (json['DisplayRank'] != null) {
		data.displayRank = json['DisplayRank']?.toString();
	}
	if (json['level_info'] != null) {
		data.levelInfo = new ReplyDataHotsRepliesMemberLevelInfo().fromJson(json['level_info']);
	}
	if (json['pendant'] != null) {
		data.pendant = new ReplyDataHotsRepliesMemberPendant().fromJson(json['pendant']);
	}
	if (json['nameplate'] != null) {
		data.nameplate = new ReplyDataHotsRepliesMemberNameplate().fromJson(json['nameplate']);
	}
	if (json['official_verify'] != null) {
		data.officialVerify = new ReplyDataHotsRepliesMemberOfficialVerify().fromJson(json['official_verify']);
	}
	if (json['vip'] != null) {
		data.vip = new ReplyDataHotsRepliesMemberVip().fromJson(json['vip']);
	}
	if (json['fans_detail'] != null) {
		data.fansDetail = json['fans_detail'];
	}
	if (json['following'] != null) {
		data.following = json['following']?.toInt();
	}
	if (json['user_sailing'] != null) {
		data.userSailing = new ReplyDataHotsRepliesMemberUserSailing().fromJson(json['user_sailing']);
	}
	return data;
}

Map<String, dynamic> replyDataHotsRepliesMemberToJson(ReplyDataHotsRepliesMember entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['mid'] = entity.mid;
	data['uname'] = entity.uname;
	data['sex'] = entity.sex;
	data['sign'] = entity.sign;
	data['avatar'] = entity.avatar;
	data['rank'] = entity.rank;
	data['DisplayRank'] = entity.displayRank;
	if (entity.levelInfo != null) {
		data['level_info'] = entity.levelInfo.toJson();
	}
	if (entity.pendant != null) {
		data['pendant'] = entity.pendant.toJson();
	}
	if (entity.nameplate != null) {
		data['nameplate'] = entity.nameplate.toJson();
	}
	if (entity.officialVerify != null) {
		data['official_verify'] = entity.officialVerify.toJson();
	}
	if (entity.vip != null) {
		data['vip'] = entity.vip.toJson();
	}
	data['fans_detail'] = entity.fansDetail;
	data['following'] = entity.following;
	if (entity.userSailing != null) {
		data['user_sailing'] = entity.userSailing.toJson();
	}
	return data;
}

replyDataHotsRepliesMemberLevelInfoFromJson(ReplyDataHotsRepliesMemberLevelInfo data, Map<String, dynamic> json) {
	if (json['current_level'] != null) {
		data.currentLevel = json['current_level']?.toInt();
	}
	if (json['current_min'] != null) {
		data.currentMin = json['current_min']?.toInt();
	}
	if (json['current_exp'] != null) {
		data.currentExp = json['current_exp']?.toInt();
	}
	if (json['next_exp'] != null) {
		data.nextExp = json['next_exp']?.toInt();
	}
	return data;
}

Map<String, dynamic> replyDataHotsRepliesMemberLevelInfoToJson(ReplyDataHotsRepliesMemberLevelInfo entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['current_level'] = entity.currentLevel;
	data['current_min'] = entity.currentMin;
	data['current_exp'] = entity.currentExp;
	data['next_exp'] = entity.nextExp;
	return data;
}

replyDataHotsRepliesMemberPendantFromJson(ReplyDataHotsRepliesMemberPendant data, Map<String, dynamic> json) {
	if (json['pid'] != null) {
		data.pid = json['pid']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['image'] != null) {
		data.image = json['image']?.toString();
	}
	if (json['expire'] != null) {
		data.expire = json['expire']?.toInt();
	}
	return data;
}

Map<String, dynamic> replyDataHotsRepliesMemberPendantToJson(ReplyDataHotsRepliesMemberPendant entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['pid'] = entity.pid;
	data['name'] = entity.name;
	data['image'] = entity.image;
	data['expire'] = entity.expire;
	return data;
}

replyDataHotsRepliesMemberNameplateFromJson(ReplyDataHotsRepliesMemberNameplate data, Map<String, dynamic> json) {
	if (json['nid'] != null) {
		data.nid = json['nid']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['image'] != null) {
		data.image = json['image']?.toString();
	}
	if (json['image_small'] != null) {
		data.imageSmall = json['image_small']?.toString();
	}
	if (json['level'] != null) {
		data.level = json['level']?.toString();
	}
	if (json['condition'] != null) {
		data.condition = json['condition']?.toString();
	}
	return data;
}

Map<String, dynamic> replyDataHotsRepliesMemberNameplateToJson(ReplyDataHotsRepliesMemberNameplate entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['nid'] = entity.nid;
	data['name'] = entity.name;
	data['image'] = entity.image;
	data['image_small'] = entity.imageSmall;
	data['level'] = entity.level;
	data['condition'] = entity.condition;
	return data;
}

replyDataHotsRepliesMemberOfficialVerifyFromJson(ReplyDataHotsRepliesMemberOfficialVerify data, Map<String, dynamic> json) {
	if (json['type'] != null) {
		data.type = json['type']?.toInt();
	}
	if (json['desc'] != null) {
		data.desc = json['desc']?.toString();
	}
	return data;
}

Map<String, dynamic> replyDataHotsRepliesMemberOfficialVerifyToJson(ReplyDataHotsRepliesMemberOfficialVerify entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['type'] = entity.type;
	data['desc'] = entity.desc;
	return data;
}

replyDataHotsRepliesMemberVipFromJson(ReplyDataHotsRepliesMemberVip data, Map<String, dynamic> json) {
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
		data.label = new ReplyDataHotsRepliesMemberVipLabel().fromJson(json['label']);
	}
	return data;
}

Map<String, dynamic> replyDataHotsRepliesMemberVipToJson(ReplyDataHotsRepliesMemberVip entity) {
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

replyDataHotsRepliesMemberVipLabelFromJson(ReplyDataHotsRepliesMemberVipLabel data, Map<String, dynamic> json) {
	if (json['path'] != null) {
		data.path = json['path']?.toString();
	}
	return data;
}

Map<String, dynamic> replyDataHotsRepliesMemberVipLabelToJson(ReplyDataHotsRepliesMemberVipLabel entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['path'] = entity.path;
	return data;
}

replyDataHotsRepliesMemberUserSailingFromJson(ReplyDataHotsRepliesMemberUserSailing data, Map<String, dynamic> json) {
	if (json['pendant'] != null) {
		data.pendant = new ReplyDataHotsRepliesMemberUserSailingPendant().fromJson(json['pendant']);
	}
	if (json['cardbg'] != null) {
		data.cardbg = json['cardbg'];
	}
	if (json['cardbg_with_focus'] != null) {
		data.cardbgWithFocus = json['cardbg_with_focus'];
	}
	return data;
}

Map<String, dynamic> replyDataHotsRepliesMemberUserSailingToJson(ReplyDataHotsRepliesMemberUserSailing entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.pendant != null) {
		data['pendant'] = entity.pendant.toJson();
	}
	data['cardbg'] = entity.cardbg;
	data['cardbg_with_focus'] = entity.cardbgWithFocus;
	return data;
}

replyDataHotsRepliesMemberUserSailingPendantFromJson(ReplyDataHotsRepliesMemberUserSailingPendant data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['image'] != null) {
		data.image = json['image']?.toString();
	}
	if (json['jump_url'] != null) {
		data.jumpUrl = json['jump_url']?.toString();
	}
	if (json['type'] != null) {
		data.type = json['type']?.toString();
	}
	return data;
}

Map<String, dynamic> replyDataHotsRepliesMemberUserSailingPendantToJson(ReplyDataHotsRepliesMemberUserSailingPendant entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['image'] = entity.image;
	data['jump_url'] = entity.jumpUrl;
	data['type'] = entity.type;
	return data;
}

replyDataHotsRepliesContentFromJson(ReplyDataHotsRepliesContent data, Map<String, dynamic> json) {
	if (json['message'] != null) {
		data.message = json['message']?.toString();
	}
	if (json['plat'] != null) {
		data.plat = json['plat']?.toInt();
	}
	if (json['device'] != null) {
		data.device = json['device']?.toString();
	}
	if (json['members'] != null) {
		data.members = new List<dynamic>();
		data.members.addAll(json['members']);
	}
	return data;
}

Map<String, dynamic> replyDataHotsRepliesContentToJson(ReplyDataHotsRepliesContent entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['message'] = entity.message;
	data['plat'] = entity.plat;
	data['device'] = entity.device;
	if (entity.members != null) {
		data['members'] =  [];
	}
	return data;
}

replyDataHotsRepliesFolderFromJson(ReplyDataHotsRepliesFolder data, Map<String, dynamic> json) {
	if (json['has_folded'] != null) {
		data.hasFolded = json['has_folded'];
	}
	if (json['is_folded'] != null) {
		data.isFolded = json['is_folded'];
	}
	if (json['rule'] != null) {
		data.rule = json['rule']?.toString();
	}
	return data;
}

Map<String, dynamic> replyDataHotsRepliesFolderToJson(ReplyDataHotsRepliesFolder entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['has_folded'] = entity.hasFolded;
	data['is_folded'] = entity.isFolded;
	data['rule'] = entity.rule;
	return data;
}

replyDataHotsRepliesUpActionFromJson(ReplyDataHotsRepliesUpAction data, Map<String, dynamic> json) {
	if (json['like'] != null) {
		data.like = json['like'];
	}
	if (json['reply'] != null) {
		data.reply = json['reply'];
	}
	return data;
}

Map<String, dynamic> replyDataHotsRepliesUpActionToJson(ReplyDataHotsRepliesUpAction entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['like'] = entity.like;
	data['reply'] = entity.reply;
	return data;
}

replyDataHotsFolderFromJson(ReplyDataHotsFolder data, Map<String, dynamic> json) {
	if (json['has_folded'] != null) {
		data.hasFolded = json['has_folded'];
	}
	if (json['is_folded'] != null) {
		data.isFolded = json['is_folded'];
	}
	if (json['rule'] != null) {
		data.rule = json['rule']?.toString();
	}
	return data;
}

Map<String, dynamic> replyDataHotsFolderToJson(ReplyDataHotsFolder entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['has_folded'] = entity.hasFolded;
	data['is_folded'] = entity.isFolded;
	data['rule'] = entity.rule;
	return data;
}

replyDataHotsUpActionFromJson(ReplyDataHotsUpAction data, Map<String, dynamic> json) {
	if (json['like'] != null) {
		data.like = json['like'];
	}
	if (json['reply'] != null) {
		data.reply = json['reply'];
	}
	return data;
}

Map<String, dynamic> replyDataHotsUpActionToJson(ReplyDataHotsUpAction entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['like'] = entity.like;
	data['reply'] = entity.reply;
	return data;
}

replyDataReplyFromJson(ReplyDataReply data, Map<String, dynamic> json) {
	if (json['rpid'] != null) {
		data.rpid = json['rpid']?.toInt();
	}
	if (json['oid'] != null) {
		data.oid = json['oid']?.toInt();
	}
	if (json['type'] != null) {
		data.type = json['type']?.toInt();
	}
	if (json['mid'] != null) {
		data.mid = json['mid']?.toInt();
	}
	if (json['root'] != null) {
		data.root = json['root']?.toInt();
	}
	if (json['parent'] != null) {
		data.parent = json['parent']?.toInt();
	}
	if (json['dialog'] != null) {
		data.dialog = json['dialog']?.toInt();
	}
	if (json['count'] != null) {
		data.count = json['count']?.toInt();
	}
	if (json['rcount'] != null) {
		data.rcount = json['rcount']?.toInt();
	}
	if (json['floor'] != null) {
		data.floor = json['floor']?.toInt();
	}
	if (json['state'] != null) {
		data.state = json['state']?.toInt();
	}
	if (json['fansgrade'] != null) {
		data.fansgrade = json['fansgrade']?.toInt();
	}
	if (json['attr'] != null) {
		data.attr = json['attr']?.toInt();
	}
	if (json['ctime'] != null) {
		data.ctime = json['ctime']?.toInt();
	}
	if (json['rpid_str'] != null) {
		data.rpidStr = json['rpid_str']?.toString();
	}
	if (json['root_str'] != null) {
		data.rootStr = json['root_str']?.toString();
	}
	if (json['parent_str'] != null) {
		data.parentStr = json['parent_str']?.toString();
	}
	if (json['like'] != null) {
		data.like = json['like']?.toInt();
	}
	if (json['action'] != null) {
		data.action = json['action']?.toInt();
	}
	if (json['member'] != null) {
		data.member = new ReplyDataRepliesMember().fromJson(json['member']);
	}
	if (json['content'] != null) {
		data.content = new ReplyDataRepliesContent().fromJson(json['content']);
	}
	if (json['replies'] != null) {
		data.replies = json['replies'];
	}
	if (json['assist'] != null) {
		data.assist = json['assist']?.toInt();
	}
	if (json['folder'] != null) {
		data.folder = new ReplyDataRepliesFolder().fromJson(json['folder']);
	}
	if (json['up_action'] != null) {
		data.upAction = new ReplyDataRepliesUpAction().fromJson(json['up_action']);
	}
	if (json['show_follow'] != null) {
		data.showFollow = json['show_follow'];
	}
	return data;
}

Map<String, dynamic> replyDataReplyToJson(ReplyDataReply entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['rpid'] = entity.rpid;
	data['oid'] = entity.oid;
	data['type'] = entity.type;
	data['mid'] = entity.mid;
	data['root'] = entity.root;
	data['parent'] = entity.parent;
	data['dialog'] = entity.dialog;
	data['count'] = entity.count;
	data['rcount'] = entity.rcount;
	data['floor'] = entity.floor;
	data['state'] = entity.state;
	data['fansgrade'] = entity.fansgrade;
	data['attr'] = entity.attr;
	data['ctime'] = entity.ctime;
	data['rpid_str'] = entity.rpidStr;
	data['root_str'] = entity.rootStr;
	data['parent_str'] = entity.parentStr;
	data['like'] = entity.like;
	data['action'] = entity.action;
	if (entity.member != null) {
		data['member'] = entity.member.toJson();
	}
	if (entity.content != null) {
		data['content'] = entity.content.toJson();
	}
	data['replies'] = entity.replies;
	data['assist'] = entity.assist;
	if (entity.folder != null) {
		data['folder'] = entity.folder.toJson();
	}
	if (entity.upAction != null) {
		data['up_action'] = entity.upAction.toJson();
	}
	data['show_follow'] = entity.showFollow;
	return data;
}

replyDataRepliesMemberFromJson(ReplyDataRepliesMember data, Map<String, dynamic> json) {
	if (json['mid'] != null) {
		data.mid = json['mid']?.toString();
	}
	if (json['uname'] != null) {
		data.uname = json['uname']?.toString();
	}
	if (json['sex'] != null) {
		data.sex = json['sex']?.toString();
	}
	if (json['sign'] != null) {
		data.sign = json['sign']?.toString();
	}
	if (json['avatar'] != null) {
		data.avatar = json['avatar']?.toString();
	}
	if (json['rank'] != null) {
		data.rank = json['rank']?.toString();
	}
	if (json['DisplayRank'] != null) {
		data.displayRank = json['DisplayRank']?.toString();
	}
	if (json['level_info'] != null) {
		data.levelInfo = new ReplyDataRepliesMemberLevelInfo().fromJson(json['level_info']);
	}
	if (json['pendant'] != null) {
		data.pendant = new ReplyDataRepliesMemberPendant().fromJson(json['pendant']);
	}
	if (json['nameplate'] != null) {
		data.nameplate = new ReplyDataRepliesMemberNameplate().fromJson(json['nameplate']);
	}
	if (json['official_verify'] != null) {
		data.officialVerify = new ReplyDataRepliesMemberOfficialVerify().fromJson(json['official_verify']);
	}
	if (json['vip'] != null) {
		data.vip = new ReplyDataRepliesMemberVip().fromJson(json['vip']);
	}
	if (json['fans_detail'] != null) {
		data.fansDetail = json['fans_detail'];
	}
	if (json['following'] != null) {
		data.following = json['following']?.toInt();
	}
	if (json['user_sailing'] != null) {
		data.userSailing = new ReplyDataRepliesMemberUserSailing().fromJson(json['user_sailing']);
	}
	return data;
}

Map<String, dynamic> replyDataRepliesMemberToJson(ReplyDataRepliesMember entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['mid'] = entity.mid;
	data['uname'] = entity.uname;
	data['sex'] = entity.sex;
	data['sign'] = entity.sign;
	data['avatar'] = entity.avatar;
	data['rank'] = entity.rank;
	data['DisplayRank'] = entity.displayRank;
	if (entity.levelInfo != null) {
		data['level_info'] = entity.levelInfo.toJson();
	}
	if (entity.pendant != null) {
		data['pendant'] = entity.pendant.toJson();
	}
	if (entity.nameplate != null) {
		data['nameplate'] = entity.nameplate.toJson();
	}
	if (entity.officialVerify != null) {
		data['official_verify'] = entity.officialVerify.toJson();
	}
	if (entity.vip != null) {
		data['vip'] = entity.vip.toJson();
	}
	data['fans_detail'] = entity.fansDetail;
	data['following'] = entity.following;
	if (entity.userSailing != null) {
		data['user_sailing'] = entity.userSailing.toJson();
	}
	return data;
}

replyDataRepliesMemberLevelInfoFromJson(ReplyDataRepliesMemberLevelInfo data, Map<String, dynamic> json) {
	if (json['current_level'] != null) {
		data.currentLevel = json['current_level']?.toInt();
	}
	if (json['current_min'] != null) {
		data.currentMin = json['current_min']?.toInt();
	}
	if (json['current_exp'] != null) {
		data.currentExp = json['current_exp']?.toInt();
	}
	if (json['next_exp'] != null) {
		data.nextExp = json['next_exp']?.toInt();
	}
	return data;
}

Map<String, dynamic> replyDataRepliesMemberLevelInfoToJson(ReplyDataRepliesMemberLevelInfo entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['current_level'] = entity.currentLevel;
	data['current_min'] = entity.currentMin;
	data['current_exp'] = entity.currentExp;
	data['next_exp'] = entity.nextExp;
	return data;
}

replyDataRepliesMemberPendantFromJson(ReplyDataRepliesMemberPendant data, Map<String, dynamic> json) {
	if (json['pid'] != null) {
		data.pid = json['pid']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['image'] != null) {
		data.image = json['image']?.toString();
	}
	if (json['expire'] != null) {
		data.expire = json['expire']?.toInt();
	}
	return data;
}

Map<String, dynamic> replyDataRepliesMemberPendantToJson(ReplyDataRepliesMemberPendant entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['pid'] = entity.pid;
	data['name'] = entity.name;
	data['image'] = entity.image;
	data['expire'] = entity.expire;
	return data;
}

replyDataRepliesMemberNameplateFromJson(ReplyDataRepliesMemberNameplate data, Map<String, dynamic> json) {
	if (json['nid'] != null) {
		data.nid = json['nid']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['image'] != null) {
		data.image = json['image']?.toString();
	}
	if (json['image_small'] != null) {
		data.imageSmall = json['image_small']?.toString();
	}
	if (json['level'] != null) {
		data.level = json['level']?.toString();
	}
	if (json['condition'] != null) {
		data.condition = json['condition']?.toString();
	}
	return data;
}

Map<String, dynamic> replyDataRepliesMemberNameplateToJson(ReplyDataRepliesMemberNameplate entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['nid'] = entity.nid;
	data['name'] = entity.name;
	data['image'] = entity.image;
	data['image_small'] = entity.imageSmall;
	data['level'] = entity.level;
	data['condition'] = entity.condition;
	return data;
}

replyDataRepliesMemberOfficialVerifyFromJson(ReplyDataRepliesMemberOfficialVerify data, Map<String, dynamic> json) {
	if (json['type'] != null) {
		data.type = json['type']?.toInt();
	}
	if (json['desc'] != null) {
		data.desc = json['desc']?.toString();
	}
	return data;
}

Map<String, dynamic> replyDataRepliesMemberOfficialVerifyToJson(ReplyDataRepliesMemberOfficialVerify entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['type'] = entity.type;
	data['desc'] = entity.desc;
	return data;
}

replyDataRepliesMemberVipFromJson(ReplyDataRepliesMemberVip data, Map<String, dynamic> json) {
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
		data.label = new ReplyDataRepliesMemberVipLabel().fromJson(json['label']);
	}
	return data;
}

Map<String, dynamic> replyDataRepliesMemberVipToJson(ReplyDataRepliesMemberVip entity) {
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

replyDataRepliesMemberVipLabelFromJson(ReplyDataRepliesMemberVipLabel data, Map<String, dynamic> json) {
	if (json['path'] != null) {
		data.path = json['path']?.toString();
	}
	return data;
}

Map<String, dynamic> replyDataRepliesMemberVipLabelToJson(ReplyDataRepliesMemberVipLabel entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['path'] = entity.path;
	return data;
}

replyDataRepliesMemberUserSailingFromJson(ReplyDataRepliesMemberUserSailing data, Map<String, dynamic> json) {
	if (json['pendant'] != null) {
		data.pendant = new ReplyDataRepliesMemberUserSailingPendant().fromJson(json['pendant']);
	}
	if (json['cardbg'] != null) {
		data.cardbg = json['cardbg'];
	}
	if (json['cardbg_with_focus'] != null) {
		data.cardbgWithFocus = json['cardbg_with_focus'];
	}
	return data;
}

Map<String, dynamic> replyDataRepliesMemberUserSailingToJson(ReplyDataRepliesMemberUserSailing entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.pendant != null) {
		data['pendant'] = entity.pendant.toJson();
	}
	data['cardbg'] = entity.cardbg;
	data['cardbg_with_focus'] = entity.cardbgWithFocus;
	return data;
}

replyDataRepliesMemberUserSailingPendantFromJson(ReplyDataRepliesMemberUserSailingPendant data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['image'] != null) {
		data.image = json['image']?.toString();
	}
	if (json['jump_url'] != null) {
		data.jumpUrl = json['jump_url']?.toString();
	}
	if (json['type'] != null) {
		data.type = json['type']?.toString();
	}
	return data;
}

Map<String, dynamic> replyDataRepliesMemberUserSailingPendantToJson(ReplyDataRepliesMemberUserSailingPendant entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['image'] = entity.image;
	data['jump_url'] = entity.jumpUrl;
	data['type'] = entity.type;
	return data;
}

replyDataRepliesContentFromJson(ReplyDataRepliesContent data, Map<String, dynamic> json) {
	if (json['message'] != null) {
		data.message = json['message']?.toString();
	}
	if (json['plat'] != null) {
		data.plat = json['plat']?.toInt();
	}
	if (json['device'] != null) {
		data.device = json['device']?.toString();
	}
	if (json['members'] != null) {
		data.members = new List<dynamic>();
		data.members.addAll(json['members']);
	}
	return data;
}

Map<String, dynamic> replyDataRepliesContentToJson(ReplyDataRepliesContent entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['message'] = entity.message;
	data['plat'] = entity.plat;
	data['device'] = entity.device;
	if (entity.members != null) {
		data['members'] =  [];
	}
	return data;
}

replyDataRepliesFolderFromJson(ReplyDataRepliesFolder data, Map<String, dynamic> json) {
	if (json['has_folded'] != null) {
		data.hasFolded = json['has_folded'];
	}
	if (json['is_folded'] != null) {
		data.isFolded = json['is_folded'];
	}
	if (json['rule'] != null) {
		data.rule = json['rule']?.toString();
	}
	return data;
}

Map<String, dynamic> replyDataRepliesFolderToJson(ReplyDataRepliesFolder entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['has_folded'] = entity.hasFolded;
	data['is_folded'] = entity.isFolded;
	data['rule'] = entity.rule;
	return data;
}

replyDataRepliesUpActionFromJson(ReplyDataRepliesUpAction data, Map<String, dynamic> json) {
	if (json['like'] != null) {
		data.like = json['like'];
	}
	if (json['reply'] != null) {
		data.reply = json['reply'];
	}
	return data;
}

Map<String, dynamic> replyDataRepliesUpActionToJson(ReplyDataRepliesUpAction entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['like'] = entity.like;
	data['reply'] = entity.reply;
	return data;
}

replyDataTopFromJson(ReplyDataTop data, Map<String, dynamic> json) {
	if (json['admin'] != null) {
		data.admin = json['admin'];
	}
	if (json['upper'] != null) {
		data.upper = json['upper'];
	}
	if (json['vote'] != null) {
		data.vote = json['vote'];
	}
	return data;
}

Map<String, dynamic> replyDataTopToJson(ReplyDataTop entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['admin'] = entity.admin;
	data['upper'] = entity.upper;
	data['vote'] = entity.vote;
	return data;
}

replyDataFolderFromJson(ReplyDataFolder data, Map<String, dynamic> json) {
	if (json['has_folded'] != null) {
		data.hasFolded = json['has_folded'];
	}
	if (json['is_folded'] != null) {
		data.isFolded = json['is_folded'];
	}
	if (json['rule'] != null) {
		data.rule = json['rule']?.toString();
	}
	return data;
}

Map<String, dynamic> replyDataFolderToJson(ReplyDataFolder entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['has_folded'] = entity.hasFolded;
	data['is_folded'] = entity.isFolded;
	data['rule'] = entity.rule;
	return data;
}

replyDataConfigFromJson(ReplyDataConfig data, Map<String, dynamic> json) {
	if (json['showadmin'] != null) {
		data.showadmin = json['showadmin']?.toInt();
	}
	if (json['showentry'] != null) {
		data.showentry = json['showentry']?.toInt();
	}
	if (json['showfloor'] != null) {
		data.showfloor = json['showfloor']?.toInt();
	}
	if (json['showtopic'] != null) {
		data.showtopic = json['showtopic']?.toInt();
	}
	if (json['show_up_flag'] != null) {
		data.showUpFlag = json['show_up_flag'];
	}
	if (json['read_only'] != null) {
		data.readOnly = json['read_only'];
	}
	if (json['show_del_log'] != null) {
		data.showDelLog = json['show_del_log'];
	}
	return data;
}

Map<String, dynamic> replyDataConfigToJson(ReplyDataConfig entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['showadmin'] = entity.showadmin;
	data['showentry'] = entity.showentry;
	data['showfloor'] = entity.showfloor;
	data['showtopic'] = entity.showtopic;
	data['show_up_flag'] = entity.showUpFlag;
	data['read_only'] = entity.readOnly;
	data['show_del_log'] = entity.showDelLog;
	return data;
}

replyDataUpperFromJson(ReplyDataUpper data, Map<String, dynamic> json) {
	if (json['mid'] != null) {
		data.mid = json['mid']?.toInt();
	}
	return data;
}

Map<String, dynamic> replyDataUpperToJson(ReplyDataUpper entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['mid'] = entity.mid;
	return data;
}

replyDataControlFromJson(ReplyDataControl data, Map<String, dynamic> json) {
	if (json['input_disable'] != null) {
		data.inputDisable = json['input_disable'];
	}
	if (json['root_input_text'] != null) {
		data.rootInputText = json['root_input_text']?.toString();
	}
	if (json['child_input_text'] != null) {
		data.childInputText = json['child_input_text']?.toString();
	}
	if (json['bg_text'] != null) {
		data.bgText = json['bg_text']?.toString();
	}
	if (json['web_selection'] != null) {
		data.webSelection = json['web_selection'];
	}
	if (json['answer_guide_text'] != null) {
		data.answerGuideText = json['answer_guide_text']?.toString();
	}
	if (json['answer_guide_icon_url'] != null) {
		data.answerGuideIconUrl = json['answer_guide_icon_url']?.toString();
	}
	if (json['answer_guide_ios_url'] != null) {
		data.answerGuideIosUrl = json['answer_guide_ios_url']?.toString();
	}
	if (json['answer_guide_android_url'] != null) {
		data.answerGuideAndroidUrl = json['answer_guide_android_url']?.toString();
	}
	return data;
}

Map<String, dynamic> replyDataControlToJson(ReplyDataControl entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['input_disable'] = entity.inputDisable;
	data['root_input_text'] = entity.rootInputText;
	data['child_input_text'] = entity.childInputText;
	data['bg_text'] = entity.bgText;
	data['web_selection'] = entity.webSelection;
	data['answer_guide_text'] = entity.answerGuideText;
	data['answer_guide_icon_url'] = entity.answerGuideIconUrl;
	data['answer_guide_ios_url'] = entity.answerGuideIosUrl;
	data['answer_guide_android_url'] = entity.answerGuideAndroidUrl;
	return data;
}