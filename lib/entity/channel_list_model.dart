import 'package:json_annotation/json_annotation.dart';

part 'channel_list_model.g.dart';

@JsonSerializable()
class ChannelListModel {
  num code;
  String message;
  num ttl;
  ChannelLisData data;

  ChannelListModel({this.code, this.message, this.ttl, this.data});

  factory ChannelListModel.fromJson(Map<String, dynamic> json) => _$ChannelListModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelListModelToJson(this);
}

@JsonSerializable()
class ChannelLisData {
  List<Region> region;
  List<Square> square;

  ChannelLisData({this.region, this.square});

  factory ChannelLisData.fromJson(Map<String, dynamic> json) => _$ChannelLisDataFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelLisDataToJson(this);
}

@JsonSerializable()
class Square {
  String card_type;
  String card_goto;
  String goto;
  String param;
  String cover;
  String title;
  String uri;
  Desc_button desc_button;
  dynamic args;
  String desc_1;
  String desc_2;
  List<Item> item;

  Square({this.card_type, this.card_goto, this.goto, this.param, this.cover, this.title, this.uri, this.desc_button, this.args, this.desc_1, this.desc_2, this.item});

  factory Square.fromJson(Map<String, dynamic> json) => _$SquareFromJson(json);

  Map<String, dynamic> toJson() => _$SquareToJson(this);
}

@JsonSerializable()
class Item {
  String title;
  String cover;
  String uri;
  String param;
  String goto;
  String cover_left_text_1;
  num cover_left_icon_1;
  String cover_left_text_2;
  num cover_left_icon_2;
  String cover_left_text_3;
  String from_type;

  Item({this.title, this.cover, this.uri, this.param, this.goto, this.cover_left_text_1, this.cover_left_icon_1, this.cover_left_text_2, this.cover_left_icon_2, this.cover_left_text_3, this.from_type});

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}

@JsonSerializable()
class Desc_button {
  String text;
  String event;
  num type;
  String event_v2;

  Desc_button({this.text, this.event, this.type, this.event_v2});

  factory Desc_button.fromJson(Map<String, dynamic> json) => _$Desc_buttonFromJson(json);

  Map<String, dynamic> toJson() => _$Desc_buttonToJson(this);
}

@JsonSerializable()
class Region {
  num tid;
  num reid;
  String name;
  String logo;
  String goto;
  String param;
  num type;
  String uri;

  Region({this.tid, this.reid, this.name, this.logo, this.goto, this.param, this.type, this.uri});

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);

  Map<String, dynamic> toJson() => _$RegionToJson(this);
}

