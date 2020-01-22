// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_hot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchHotModel _$SearchHotModelFromJson(Map<String, dynamic> json) {
  return SearchHotModel(
    code: json['code'] as num,
    message: json['message'] as String,
    ttl: json['ttl'] as num,
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SearchHotModelToJson(SearchHotModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ttl': instance.ttl,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    trackid: json['trackid'] as String,
    list: (json['list'] as List)
        ?.map((e) =>
            e == null ? null : ListModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    exp_str: json['exp_str'] as String,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'trackid': instance.trackid,
      'list': instance.list,
      'exp_str': instance.exp_str,
    };

ListModel _$ListModelFromJson(Map<String, dynamic> json) {
  return ListModel(
    keyword: json['keyword'] as String,
    status: json['status'] as String,
    name_type: json['name_type'] as String,
    word_type: json['word_type'] as num,
    icon: json['icon'] as String,
    position: json['position'] as num,
    module_id: json['module_id'] as num,
  );
}

Map<String, dynamic> _$ListModelToJson(ListModel instance) => <String, dynamic>{
      'keyword': instance.keyword,
      'status': instance.status,
      'name_type': instance.name_type,
      'word_type': instance.word_type,
      'icon': instance.icon,
      'position': instance.position,
      'module_id': instance.module_id,
    };
