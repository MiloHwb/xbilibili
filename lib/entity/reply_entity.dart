import 'package:xbilibili/generated/json/base/json_convert_content.dart';
import 'package:xbilibili/generated/json/base/json_filed.dart';

class ReplyEntity with JsonConvert<ReplyEntity> {
	int code;
	String message;
	int ttl;
	ReplyData data;
}

class ReplyData with JsonConvert<ReplyData> {
	ReplyDataCursor cursor;
	List<ReplyDataHot> hots;
	dynamic notice;
	List<ReplyDataReply> replies;
	ReplyDataTop top;
	@JSONField(name: "lottery_card")
	dynamic lotteryCard;
	ReplyDataFolder folder;
	int assist;
	int blacklist;
	int vote;
	int lottery;
	ReplyDataConfig config;
	ReplyDataUpper upper;
	@JSONField(name: "show_bvid")
	bool showBvid;
	ReplyDataControl control;
}

class ReplyDataCursor with JsonConvert<ReplyDataCursor> {
	@JSONField(name: "all_count")
	int allCount;
	@JSONField(name: "is_begin")
	bool isBegin;
	int prev;
	int next;
	@JSONField(name: "is_end")
	bool isEnd;
	int mode;
	@JSONField(name: "show_type")
	int showType;
	@JSONField(name: "support_mode")
	List<int> supportMode;
	String name;
}

class ReplyDataHot with JsonConvert<ReplyDataHot> {
	int rpid;
	int oid;
	int type;
	int mid;
	int root;
	int parent;
	int dialog;
	int count;
	int rcount;
	int floor;
	int state;
	int fansgrade;
	int attr;
	int ctime;
	@JSONField(name: "rpid_str")
	String rpidStr;
	@JSONField(name: "root_str")
	String rootStr;
	@JSONField(name: "parent_str")
	String parentStr;
	int like;
	int action;
	ReplyDataHotsMember member;
	ReplyDataHotsContent content;
	List<ReplyDataHotsReply> replies;
	int assist;
	ReplyDataHotsFolder folder;
	@JSONField(name: "up_action")
	ReplyDataHotsUpAction upAction;
	@JSONField(name: "show_follow")
	bool showFollow;
}

class ReplyDataHotsMember with JsonConvert<ReplyDataHotsMember> {
	String mid;
	String uname;
	String sex;
	String sign;
	String avatar;
	String rank;
	@JSONField(name: "DisplayRank")
	String displayRank;
	@JSONField(name: "level_info")
	ReplyDataHotsMemberLevelInfo levelInfo;
	ReplyDataHotsMemberPendant pendant;
	ReplyDataHotsMemberNameplate nameplate;
	@JSONField(name: "official_verify")
	ReplyDataHotsMemberOfficialVerify officialVerify;
	ReplyDataHotsMemberVip vip;
	@JSONField(name: "fans_detail")
	dynamic fansDetail;
	int following;
	@JSONField(name: "user_sailing")
	ReplyDataHotsMemberUserSailing userSailing;
}

class ReplyDataHotsMemberLevelInfo with JsonConvert<ReplyDataHotsMemberLevelInfo> {
	@JSONField(name: "current_level")
	int currentLevel;
	@JSONField(name: "current_min")
	int currentMin;
	@JSONField(name: "current_exp")
	int currentExp;
	@JSONField(name: "next_exp")
	int nextExp;
}

class ReplyDataHotsMemberPendant with JsonConvert<ReplyDataHotsMemberPendant> {
	int pid;
	String name;
	String image;
	int expire;
}

class ReplyDataHotsMemberNameplate with JsonConvert<ReplyDataHotsMemberNameplate> {
	int nid;
	String name;
	String image;
	@JSONField(name: "image_small")
	String imageSmall;
	String level;
	String condition;
}

class ReplyDataHotsMemberOfficialVerify with JsonConvert<ReplyDataHotsMemberOfficialVerify> {
	int type;
	String desc;
}

class ReplyDataHotsMemberVip with JsonConvert<ReplyDataHotsMemberVip> {
	int vipType;
	int vipDueDate;
	String dueRemark;
	int accessStatus;
	int vipStatus;
	String vipStatusWarn;
	int themeType;
	ReplyDataHotsMemberVipLabel label;
}

class ReplyDataHotsMemberVipLabel with JsonConvert<ReplyDataHotsMemberVipLabel> {
	String path;
}

class ReplyDataHotsMemberUserSailing with JsonConvert<ReplyDataHotsMemberUserSailing> {
	dynamic pendant;
	dynamic cardbg;
	@JSONField(name: "cardbg_with_focus")
	dynamic cardbgWithFocus;
}

class ReplyDataHotsContent with JsonConvert<ReplyDataHotsContent> {
	String message;
	int plat;
	String device;
	List<dynamic> members;
}

class ReplyDataHotsReply with JsonConvert<ReplyDataHotsReply> {
	int rpid;
	int oid;
	int type;
	int mid;
	int root;
	int parent;
	int dialog;
	int count;
	int rcount;
	int floor;
	int state;
	int fansgrade;
	int attr;
	int ctime;
	@JSONField(name: "rpid_str")
	String rpidStr;
	@JSONField(name: "root_str")
	String rootStr;
	@JSONField(name: "parent_str")
	String parentStr;
	int like;
	int action;
	ReplyDataHotsRepliesMember member;
	ReplyDataHotsRepliesContent content;
	List<dynamic> replies;
	int assist;
	ReplyDataHotsRepliesFolder folder;
	@JSONField(name: "up_action")
	ReplyDataHotsRepliesUpAction upAction;
	@JSONField(name: "show_follow")
	bool showFollow;
}

class ReplyDataHotsRepliesMember with JsonConvert<ReplyDataHotsRepliesMember> {
	String mid;
	String uname;
	String sex;
	String sign;
	String avatar;
	String rank;
	@JSONField(name: "DisplayRank")
	String displayRank;
	@JSONField(name: "level_info")
	ReplyDataHotsRepliesMemberLevelInfo levelInfo;
	ReplyDataHotsRepliesMemberPendant pendant;
	ReplyDataHotsRepliesMemberNameplate nameplate;
	@JSONField(name: "official_verify")
	ReplyDataHotsRepliesMemberOfficialVerify officialVerify;
	ReplyDataHotsRepliesMemberVip vip;
	@JSONField(name: "fans_detail")
	dynamic fansDetail;
	int following;
	@JSONField(name: "user_sailing")
	ReplyDataHotsRepliesMemberUserSailing userSailing;
}

class ReplyDataHotsRepliesMemberLevelInfo with JsonConvert<ReplyDataHotsRepliesMemberLevelInfo> {
	@JSONField(name: "current_level")
	int currentLevel;
	@JSONField(name: "current_min")
	int currentMin;
	@JSONField(name: "current_exp")
	int currentExp;
	@JSONField(name: "next_exp")
	int nextExp;
}

class ReplyDataHotsRepliesMemberPendant with JsonConvert<ReplyDataHotsRepliesMemberPendant> {
	int pid;
	String name;
	String image;
	int expire;
}

class ReplyDataHotsRepliesMemberNameplate with JsonConvert<ReplyDataHotsRepliesMemberNameplate> {
	int nid;
	String name;
	String image;
	@JSONField(name: "image_small")
	String imageSmall;
	String level;
	String condition;
}

class ReplyDataHotsRepliesMemberOfficialVerify with JsonConvert<ReplyDataHotsRepliesMemberOfficialVerify> {
	int type;
	String desc;
}

class ReplyDataHotsRepliesMemberVip with JsonConvert<ReplyDataHotsRepliesMemberVip> {
	int vipType;
	int vipDueDate;
	String dueRemark;
	int accessStatus;
	int vipStatus;
	String vipStatusWarn;
	int themeType;
	ReplyDataHotsRepliesMemberVipLabel label;
}

class ReplyDataHotsRepliesMemberVipLabel with JsonConvert<ReplyDataHotsRepliesMemberVipLabel> {
	String path;
}

class ReplyDataHotsRepliesMemberUserSailing with JsonConvert<ReplyDataHotsRepliesMemberUserSailing> {
	ReplyDataHotsRepliesMemberUserSailingPendant pendant;
	dynamic cardbg;
	@JSONField(name: "cardbg_with_focus")
	dynamic cardbgWithFocus;
}

class ReplyDataHotsRepliesMemberUserSailingPendant with JsonConvert<ReplyDataHotsRepliesMemberUserSailingPendant> {
	int id;
	String name;
	String image;
	@JSONField(name: "jump_url")
	String jumpUrl;
	String type;
}

class ReplyDataHotsRepliesContent with JsonConvert<ReplyDataHotsRepliesContent> {
	String message;
	int plat;
	String device;
	List<dynamic> members;
}

class ReplyDataHotsRepliesFolder with JsonConvert<ReplyDataHotsRepliesFolder> {
	@JSONField(name: "has_folded")
	bool hasFolded;
	@JSONField(name: "is_folded")
	bool isFolded;
	String rule;
}

class ReplyDataHotsRepliesUpAction with JsonConvert<ReplyDataHotsRepliesUpAction> {
	bool like;
	bool reply;
}

class ReplyDataHotsFolder with JsonConvert<ReplyDataHotsFolder> {
	@JSONField(name: "has_folded")
	bool hasFolded;
	@JSONField(name: "is_folded")
	bool isFolded;
	String rule;
}

class ReplyDataHotsUpAction with JsonConvert<ReplyDataHotsUpAction> {
	bool like;
	bool reply;
}

class ReplyDataReply with JsonConvert<ReplyDataReply> {
	int rpid;
	int oid;
	int type;
	int mid;
	int root;
	int parent;
	int dialog;
	int count;
	int rcount;
	int floor;
	int state;
	int fansgrade;
	int attr;
	int ctime;
	@JSONField(name: "rpid_str")
	String rpidStr;
	@JSONField(name: "root_str")
	String rootStr;
	@JSONField(name: "parent_str")
	String parentStr;
	int like;
	int action;
	ReplyDataRepliesMember member;
	ReplyDataRepliesContent content;
	dynamic replies;
	int assist;
	ReplyDataRepliesFolder folder;
	@JSONField(name: "up_action")
	ReplyDataRepliesUpAction upAction;
	@JSONField(name: "show_follow")
	bool showFollow;
}

class ReplyDataRepliesMember with JsonConvert<ReplyDataRepliesMember> {
	String mid;
	String uname;
	String sex;
	String sign;
	String avatar;
	String rank;
	@JSONField(name: "DisplayRank")
	String displayRank;
	@JSONField(name: "level_info")
	ReplyDataRepliesMemberLevelInfo levelInfo;
	ReplyDataRepliesMemberPendant pendant;
	ReplyDataRepliesMemberNameplate nameplate;
	@JSONField(name: "official_verify")
	ReplyDataRepliesMemberOfficialVerify officialVerify;
	ReplyDataRepliesMemberVip vip;
	@JSONField(name: "fans_detail")
	dynamic fansDetail;
	int following;
	@JSONField(name: "user_sailing")
	ReplyDataRepliesMemberUserSailing userSailing;
}

class ReplyDataRepliesMemberLevelInfo with JsonConvert<ReplyDataRepliesMemberLevelInfo> {
	@JSONField(name: "current_level")
	int currentLevel;
	@JSONField(name: "current_min")
	int currentMin;
	@JSONField(name: "current_exp")
	int currentExp;
	@JSONField(name: "next_exp")
	int nextExp;
}

class ReplyDataRepliesMemberPendant with JsonConvert<ReplyDataRepliesMemberPendant> {
	int pid;
	String name;
	String image;
	int expire;
}

class ReplyDataRepliesMemberNameplate with JsonConvert<ReplyDataRepliesMemberNameplate> {
	int nid;
	String name;
	String image;
	@JSONField(name: "image_small")
	String imageSmall;
	String level;
	String condition;
}

class ReplyDataRepliesMemberOfficialVerify with JsonConvert<ReplyDataRepliesMemberOfficialVerify> {
	int type;
	String desc;
}

class ReplyDataRepliesMemberVip with JsonConvert<ReplyDataRepliesMemberVip> {
	int vipType;
	int vipDueDate;
	String dueRemark;
	int accessStatus;
	int vipStatus;
	String vipStatusWarn;
	int themeType;
	ReplyDataRepliesMemberVipLabel label;
}

class ReplyDataRepliesMemberVipLabel with JsonConvert<ReplyDataRepliesMemberVipLabel> {
	String path;
}

class ReplyDataRepliesMemberUserSailing with JsonConvert<ReplyDataRepliesMemberUserSailing> {
	ReplyDataRepliesMemberUserSailingPendant pendant;
	dynamic cardbg;
	@JSONField(name: "cardbg_with_focus")
	dynamic cardbgWithFocus;
}

class ReplyDataRepliesMemberUserSailingPendant with JsonConvert<ReplyDataRepliesMemberUserSailingPendant> {
	int id;
	String name;
	String image;
	@JSONField(name: "jump_url")
	String jumpUrl;
	String type;
}

class ReplyDataRepliesContent with JsonConvert<ReplyDataRepliesContent> {
	String message;
	int plat;
	String device;
	List<dynamic> members;
}

class ReplyDataRepliesFolder with JsonConvert<ReplyDataRepliesFolder> {
	@JSONField(name: "has_folded")
	bool hasFolded;
	@JSONField(name: "is_folded")
	bool isFolded;
	String rule;
}

class ReplyDataRepliesUpAction with JsonConvert<ReplyDataRepliesUpAction> {
	bool like;
	bool reply;
}

class ReplyDataTop with JsonConvert<ReplyDataTop> {
	dynamic admin;
	dynamic upper;
	dynamic vote;
}

class ReplyDataFolder with JsonConvert<ReplyDataFolder> {
	@JSONField(name: "has_folded")
	bool hasFolded;
	@JSONField(name: "is_folded")
	bool isFolded;
	String rule;
}

class ReplyDataConfig with JsonConvert<ReplyDataConfig> {
	int showadmin;
	int showentry;
	int showfloor;
	int showtopic;
	@JSONField(name: "show_up_flag")
	bool showUpFlag;
	@JSONField(name: "read_only")
	bool readOnly;
	@JSONField(name: "show_del_log")
	bool showDelLog;
}

class ReplyDataUpper with JsonConvert<ReplyDataUpper> {
	int mid;
}

class ReplyDataControl with JsonConvert<ReplyDataControl> {
	@JSONField(name: "input_disable")
	bool inputDisable;
	@JSONField(name: "root_input_text")
	String rootInputText;
	@JSONField(name: "child_input_text")
	String childInputText;
	@JSONField(name: "bg_text")
	String bgText;
	@JSONField(name: "web_selection")
	bool webSelection;
	@JSONField(name: "answer_guide_text")
	String answerGuideText;
	@JSONField(name: "answer_guide_icon_url")
	String answerGuideIconUrl;
	@JSONField(name: "answer_guide_ios_url")
	String answerGuideIosUrl;
	@JSONField(name: "answer_guide_android_url")
	String answerGuideAndroidUrl;
}
