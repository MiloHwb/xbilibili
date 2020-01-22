// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mall_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MallListModel _$MallListModelFromJson(Map<String, dynamic> json) {
  return MallListModel(
    code: json['code'] as num,
    message: json['message'],
    data: json['data'] == null ? null : MallListData.fromJson(json['data'] as Map<String, dynamic>),
    errtag: json['errtag'] as num,
  );
}

Map<String, dynamic> _$MallListModelToJson(MallListModel instance) => <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
      'errtag': instance.errtag,
    };

MallListData _$MallListDataFromJson(Map<String, dynamic> json) {
  return MallListData(
    codeType: json['codeType'] as num,
    codeMsg: json['codeMsg'] as String,
    vo: json['vo'] == null ? null : Vo.fromJson(json['vo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MallListDataToJson(MallListData instance) => <String, dynamic>{
      'codeType': instance.codeType,
      'codeMsg': instance.codeMsg,
      'vo': instance.vo,
    };

Vo _$VoFromJson(Map<String, dynamic> json) {
  return Vo(
    feeds: json['feeds'] == null ? null : Feeds.fromJson(json['feeds'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VoToJson(Vo instance) => <String, dynamic>{
      'feeds': instance.feeds,
    };

Feeds _$FeedsFromJson(Map<String, dynamic> json) {
  return Feeds(
    pageNum: json['pageNum'] as num,
    pageSize: json['pageSize'],
    total: json['total'] as num,
    count: json['count'] as num,
    feedType: json['feedType'] as num,
    list: (json['list'] as List)
        ?.map((e) => e == null ? null : ListModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$FeedsToJson(Feeds instance) => <String, dynamic>{
      'pageNum': instance.pageNum,
      'pageSize': instance.pageSize,
      'total': instance.total,
      'count': instance.count,
      'feedType': instance.feedType,
      'list': instance.list,
    };

ListModel _$ListModelFromJson(Map<String, dynamic> json) {
  return ListModel(
      id: json['id'] as String,
      type: json['type'] as String,
      tagName: json['tagName'] as String,
      title: json['title'] as String,
      summary: json['summary'],
      templateId: json['templateId'] as num,
      imageUrls: (json['imageUrls'] as List)?.map((e) => e as String)?.toList(),
      jumpUrls: (json['jumpUrls'] as List)?.map((e) => e as String)?.toList(),
      jumpUrlForNa: json['jumpUrlForNa'] as String,
      price: (json['price'] as List)?.map((e) => e as num)?.toList(),
      fullPrice: json['fullPrice'],
      priceDesc: (json['priceDesc'] as List)?.map((e) => e as String)?.toList(),
      pricePrefix: json['pricePrefix'],
      priceSymbol: json['priceSymbol'] as String,
      itemsId: json['itemsId'] as num,
      itemType: json['itemType'] as num,
      preSaleTagName: json['preSaleTagName'],
      marketingTagNames: json['marketingTagNames'],
      itemTagNames: json['itemTagNames'],
      ugcList: json['ugcList'],
      tags: json['tags'] == null ? null : Tags.fromJson(json['tags'] as Map<String, dynamic>),
      ugcSize: json['ugcSize'] as num,
      like: json['like'] as num,
      brief: json['brief'] as String,
      recommendTagNames: json['recommendTagNames'],
      want: json['want']);
}

Map<String, dynamic> _$ListModelToJson(ListModel instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'tagName': instance.tagName,
      'title': instance.title,
      'summary': instance.summary,
      'templateId': instance.templateId,
      'imageUrls': instance.imageUrls,
      'jumpUrls': instance.jumpUrls,
      'jumpUrlForNa': instance.jumpUrlForNa,
      'price': instance.price,
      'fullPrice': instance.fullPrice,
      'priceDesc': instance.priceDesc,
      'pricePrefix': instance.pricePrefix,
      'priceSymbol': instance.priceSymbol,
      'itemsId': instance.itemsId,
      'itemType': instance.itemType,
      'preSaleTagName': instance.preSaleTagName,
      'marketingTagNames': instance.marketingTagNames,
      'itemTagNames': instance.itemTagNames,
      'ugcList': instance.ugcList,
      'tags': instance.tags,
      'ugcSize': instance.ugcSize,
      'like': instance.like,
      'brief': instance.brief,
      'recommendTagNames': instance.recommendTagNames,
      'want': instance.want,
    };

Tags _$TagsFromJson(Map<String, dynamic> json) {
  return Tags(
    typeAndLimitTagName: json['typeAndLimitTagName'] as String,
    marketingTagNames: json['marketingTagNames'],
    itemTagNames: json['itemTagNames'],
    recommendTagNames: (json['recommendTagNames'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$TagsToJson(Tags instance) => <String, dynamic>{
      'typeAndLimitTagName': instance.typeAndLimitTagName,
      'marketingTagNames': instance.marketingTagNames,
      'itemTagNames': instance.itemTagNames,
      'recommendTagNames': instance.recommendTagNames,
    };
