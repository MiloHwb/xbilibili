import 'package:json_annotation/json_annotation.dart';

part 'search_hot_model.g.dart';

@JsonSerializable()
class SearchHotModel {
  num code;
  String message;
  num ttl;
  Data data;

  SearchHotModel({this.code, this.message, this.ttl, this.data});

  factory SearchHotModel.fromJson(Map<String, dynamic> json) => _$SearchHotModelFromJson(json);

  Map<String, dynamic> toJson() => _$SearchHotModelToJson(this);
}

@JsonSerializable()
class Data {
  String trackid;
  List<ListModel> list;
  String exp_str;

  Data({this.trackid, this.list, this.exp_str});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class ListModel {
  String keyword;
  String status;
  String name_type;
  num word_type;
  String icon;
  num position;
  num module_id;

  ListModel(
      {this.keyword,
      this.status,
      this.name_type,
      this.word_type,
      this.icon,
      this.position,
      this.module_id});

  factory ListModel.fromJson(Map<String, dynamic> json) => _$ListModelFromJson(json);

  Map<String, dynamic> toJson() => _$ListModelToJson(this);
}
