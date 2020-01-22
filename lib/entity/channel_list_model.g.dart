// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelListModel _$ChannelListModelFromJson(Map<String, dynamic> json) {
  return ChannelListModel(
    code: json['code'] as num,
    message: json['message'] as String,
    ttl: json['ttl'] as num,
    data: json['data'] == null
        ? null
        : ChannelLisData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ChannelListModelToJson(ChannelListModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ttl': instance.ttl,
      'data': instance.data,
    };

ChannelLisData _$ChannelLisDataFromJson(Map<String, dynamic> json) {
  return ChannelLisData(
    region: (json['region'] as List)
        ?.map((e) =>
            e == null ? null : Region.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    square: (json['square'] as List)
        ?.map((e) =>
            e == null ? null : Square.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ChannelLisDataToJson(ChannelLisData instance) =>
    <String, dynamic>{
      'region': instance.region,
      'square': instance.square,
    };

Square _$SquareFromJson(Map<String, dynamic> json) {
  return Square(
    card_type: json['card_type'] as String,
    card_goto: json['card_goto'] as String,
    goto: json['goto'] as String,
    param: json['param'] as String,
    cover: json['cover'] as String,
    title: json['title'] as String,
    uri: json['uri'] as String,
    desc_button: json['desc_button'] == null
        ? null
        : Desc_button.fromJson(json['desc_button'] as Map<String, dynamic>),
    args: json['args'],
    desc_1: json['desc_1'] as String,
    desc_2: json['desc_2'] as String,
    item: (json['item'] as List)
        ?.map(
            (e) => e == null ? null : Item.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SquareToJson(Square instance) => <String, dynamic>{
      'card_type': instance.card_type,
      'card_goto': instance.card_goto,
      'goto': instance.goto,
      'param': instance.param,
      'cover': instance.cover,
      'title': instance.title,
      'uri': instance.uri,
      'desc_button': instance.desc_button,
      'args': instance.args,
      'desc_1': instance.desc_1,
      'desc_2': instance.desc_2,
      'item': instance.item,
    };

Item _$ItemFromJson(Map<String, dynamic> json) {
  return Item(
    title: json['title'] as String,
    cover: json['cover'] as String,
    uri: json['uri'] as String,
    param: json['param'] as String,
    goto: json['goto'] as String,
    cover_left_text_1: json['cover_left_text_1'] as String,
    cover_left_icon_1: json['cover_left_icon_1'] as num,
    cover_left_text_2: json['cover_left_text_2'] as String,
    cover_left_icon_2: json['cover_left_icon_2'] as num,
    cover_left_text_3: json['cover_left_text_3'] as String,
    from_type: json['from_type'] as String,
  );
}

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'title': instance.title,
      'cover': instance.cover,
      'uri': instance.uri,
      'param': instance.param,
      'goto': instance.goto,
      'cover_left_text_1': instance.cover_left_text_1,
      'cover_left_icon_1': instance.cover_left_icon_1,
      'cover_left_text_2': instance.cover_left_text_2,
      'cover_left_icon_2': instance.cover_left_icon_2,
      'cover_left_text_3': instance.cover_left_text_3,
      'from_type': instance.from_type,
    };

Desc_button _$Desc_buttonFromJson(Map<String, dynamic> json) {
  return Desc_button(
    text: json['text'] as String,
    event: json['event'] as String,
    type: json['type'] as num,
    event_v2: json['event_v2'] as String,
  );
}

Map<String, dynamic> _$Desc_buttonToJson(Desc_button instance) =>
    <String, dynamic>{
      'text': instance.text,
      'event': instance.event,
      'type': instance.type,
      'event_v2': instance.event_v2,
    };

Region _$RegionFromJson(Map<String, dynamic> json) {
  return Region(
    tid: json['tid'] as num,
    reid: json['reid'] as num,
    name: json['name'] as String,
    logo: json['logo'] as String,
    goto: json['goto'] as String,
    param: json['param'] as String,
    type: json['type'] as num,
    uri: json['uri'] as String,
  );
}

Map<String, dynamic> _$RegionToJson(Region instance) => <String, dynamic>{
      'tid': instance.tid,
      'reid': instance.reid,
      'name': instance.name,
      'logo': instance.logo,
      'goto': instance.goto,
      'param': instance.param,
      'type': instance.type,
      'uri': instance.uri,
    };
