import 'package:json_annotation/json_annotation.dart';

part 'mall_list_model.g.dart';

@JsonSerializable()
class MallListModel {
  num code;
  dynamic message;
  MallListData data;
  num errtag;

  MallListModel({this.code, this.message, this.data, this.errtag});

  factory MallListModel.fromJson(Map<String, dynamic> json) => _$MallListModelFromJson(json);

  Map<String, dynamic> toJson() => _$MallListModelToJson(this);
}

@JsonSerializable()
class MallListData {
  num codeType;
  String codeMsg;
  Vo vo;

  MallListData({this.codeType, this.codeMsg, this.vo});

  factory MallListData.fromJson(Map<String, dynamic> json) => _$MallListDataFromJson(json);

  Map<String, dynamic> toJson() => _$MallListDataToJson(this);
}

@JsonSerializable()
class Vo {
  Feeds feeds;

  Vo({this.feeds});

  factory Vo.fromJson(Map<String, dynamic> json) => _$VoFromJson(json);

  Map<String, dynamic> toJson() => _$VoToJson(this);
}

@JsonSerializable()
class Feeds {
  num pageNum;
  dynamic pageSize;
  num total;
  num count;
  num feedType;
  List<ListModel> list;

  Feeds({this.pageNum, this.pageSize, this.total, this.count, this.feedType, this.list});

  factory Feeds.fromJson(Map<String, dynamic> json) => _$FeedsFromJson(json);

  Map<String, dynamic> toJson() => _$FeedsToJson(this);
}

@JsonSerializable()
class ListModel {
  String id;
  String type;
  String tagName;
  String title;
  dynamic summary;
  num templateId;
  List<String> imageUrls;
  List<String> jumpUrls;
  String jumpUrlForNa;
  List<num> price;
  dynamic fullPrice;
  List<String> priceDesc;
  dynamic pricePrefix;
  String priceSymbol;
  num itemsId;
  num itemType;
  dynamic preSaleTagName;
  dynamic marketingTagNames;
  dynamic itemTagNames;
  dynamic ugcList;
  Tags tags;
  num ugcSize;
  num like;
  String brief;
  String want;
  dynamic recommendTagNames;

  ListModel(
      {this.id,
      this.type,
      this.tagName,
      this.title,
      this.summary,
      this.templateId,
      this.imageUrls,
      this.jumpUrls,
      this.jumpUrlForNa,
      this.price,
      this.fullPrice,
      this.priceDesc,
      this.pricePrefix,
      this.priceSymbol,
      this.itemsId,
      this.itemType,
      this.preSaleTagName,
      this.marketingTagNames,
      this.itemTagNames,
      this.ugcList,
      this.tags,
      this.ugcSize,
      this.like,
      this.brief,
      this.recommendTagNames,
      this.want});

  factory ListModel.fromJson(Map<String, dynamic> json) => _$ListModelFromJson(json);

  Map<String, dynamic> toJson() => _$ListModelToJson(this);
}

@JsonSerializable()
class Tags {
  String typeAndLimitTagName;
  dynamic marketingTagNames;
  dynamic itemTagNames;
  List<String> recommendTagNames;

  Tags(
      {this.typeAndLimitTagName,
      this.marketingTagNames,
      this.itemTagNames,
      this.recommendTagNames});

  factory Tags.fromJson(Map<String, dynamic> json) => _$TagsFromJson(json);

  Map<String, dynamic> toJson() => _$TagsToJson(this);
}
