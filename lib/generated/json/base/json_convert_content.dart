// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:xbilibili/entity/live_entity.dart';
import 'package:xbilibili/generated/json/live_entity_helper.dart';

class JsonConvert<T> {
	T fromJson(Map<String, dynamic> json) {
		return _getFromJson<T>(runtimeType, this, json);
	}  Map<String, dynamic> toJson() {
		return _getToJson<T>(runtimeType, this);
  }  static _getFromJson<T>(Type type, data, json) {
    switch (type) {			case LiveEntity:
			return liveEntityFromJson(data as LiveEntity, json) as T;			case LiveData:
			return liveDataFromJson(data as LiveData, json) as T;			case LiveDataBanner:
			return liveDataBannerFromJson(data as LiveDataBanner, json) as T;			case LiveDataPartition:
			return liveDataPartitionFromJson(data as LiveDataPartition, json) as T;			case LiveDataPartitionsPartition:
			return liveDataPartitionsPartitionFromJson(data as LiveDataPartitionsPartition, json) as T;			case LiveDataPartitionsPartitionSubIcon:
			return liveDataPartitionsPartitionSubIconFromJson(data as LiveDataPartitionsPartitionSubIcon, json) as T;			case LiveDataPartitionsLife:
			return liveDataPartitionsLifeFromJson(data as LiveDataPartitionsLife, json) as T;			case LiveDataPartitionsLivesCoverSize:
			return liveDataPartitionsLivesCoverSizeFromJson(data as LiveDataPartitionsLivesCoverSize, json) as T;			case LiveDataStarShow:
			return liveDataStarShowFromJson(data as LiveDataStarShow, json) as T;			case LiveDataStarShowPartition:
			return liveDataStarShowPartitionFromJson(data as LiveDataStarShowPartition, json) as T;			case LiveDataStarShowPartitionSubIcon:
			return liveDataStarShowPartitionSubIconFromJson(data as LiveDataStarShowPartitionSubIcon, json) as T;			case LiveDataStarShowLife:
			return liveDataStarShowLifeFromJson(data as LiveDataStarShowLife, json) as T;			case LiveDataStarShowLivesCoverSize:
			return liveDataStarShowLivesCoverSizeFromJson(data as LiveDataStarShowLivesCoverSize, json) as T;			case LiveDataRecommendData:
			return liveDataRecommendDataFromJson(data as LiveDataRecommendData, json) as T;			case LiveDataRecommendDataPartition:
			return liveDataRecommendDataPartitionFromJson(data as LiveDataRecommendDataPartition, json) as T;			case LiveDataRecommendDataPartitionSubIcon:
			return liveDataRecommendDataPartitionSubIconFromJson(data as LiveDataRecommendDataPartitionSubIcon, json) as T;			case LiveDataRecommendDataBannerData:
			return liveDataRecommendDataBannerDataFromJson(data as LiveDataRecommendDataBannerData, json) as T;			case LiveDataRecommendDataBannerDataCover:
			return liveDataRecommendDataBannerDataCoverFromJson(data as LiveDataRecommendDataBannerDataCover, json) as T;			case LiveDataRecommendDataBannerDataNewCover:
			return liveDataRecommendDataBannerDataNewCoverFromJson(data as LiveDataRecommendDataBannerDataNewCover, json) as T;			case LiveDataRecommandDataLives:
			return liveDataRecommandDataLivesFromJson(data as LiveDataRecommandDataLives, json) as T;			case LiveDataRecommendDataLivesOwner:
			return liveDataRecommendDataLivesOwnerFromJson(data as LiveDataRecommendDataLivesOwner, json) as T;			case LiveDataRecommendDataLivesCover:
			return liveDataRecommendDataLivesCoverFromJson(data as LiveDataRecommendDataLivesCover, json) as T;    }
    return data as T;
  }  static _getToJson<T>(Type type, data) {
		switch (type) {			case LiveEntity:
			return liveEntityToJson(data as LiveEntity);			case LiveData:
			return liveDataToJson(data as LiveData);			case LiveDataBanner:
			return liveDataBannerToJson(data as LiveDataBanner);			case LiveDataPartition:
			return liveDataPartitionToJson(data as LiveDataPartition);			case LiveDataPartitionsPartition:
			return liveDataPartitionsPartitionToJson(data as LiveDataPartitionsPartition);			case LiveDataPartitionsPartitionSubIcon:
			return liveDataPartitionsPartitionSubIconToJson(data as LiveDataPartitionsPartitionSubIcon);			case LiveDataPartitionsLife:
			return liveDataPartitionsLifeToJson(data as LiveDataPartitionsLife);			case LiveDataPartitionsLivesCoverSize:
			return liveDataPartitionsLivesCoverSizeToJson(data as LiveDataPartitionsLivesCoverSize);			case LiveDataStarShow:
			return liveDataStarShowToJson(data as LiveDataStarShow);			case LiveDataStarShowPartition:
			return liveDataStarShowPartitionToJson(data as LiveDataStarShowPartition);			case LiveDataStarShowPartitionSubIcon:
			return liveDataStarShowPartitionSubIconToJson(data as LiveDataStarShowPartitionSubIcon);			case LiveDataStarShowLife:
			return liveDataStarShowLifeToJson(data as LiveDataStarShowLife);			case LiveDataStarShowLivesCoverSize:
			return liveDataStarShowLivesCoverSizeToJson(data as LiveDataStarShowLivesCoverSize);			case LiveDataRecommendData:
			return liveDataRecommendDataToJson(data as LiveDataRecommendData);			case LiveDataRecommendDataPartition:
			return liveDataRecommendDataPartitionToJson(data as LiveDataRecommendDataPartition);			case LiveDataRecommendDataPartitionSubIcon:
			return liveDataRecommendDataPartitionSubIconToJson(data as LiveDataRecommendDataPartitionSubIcon);			case LiveDataRecommendDataBannerData:
			return liveDataRecommendDataBannerDataToJson(data as LiveDataRecommendDataBannerData);			case LiveDataRecommendDataBannerDataCover:
			return liveDataRecommendDataBannerDataCoverToJson(data as LiveDataRecommendDataBannerDataCover);			case LiveDataRecommendDataBannerDataNewCover:
			return liveDataRecommendDataBannerDataNewCoverToJson(data as LiveDataRecommendDataBannerDataNewCover);			case LiveDataRecommandDataLives:
			return liveDataRecommandDataLivesToJson(data as LiveDataRecommandDataLives);			case LiveDataRecommendDataLivesOwner:
			return liveDataRecommendDataLivesOwnerToJson(data as LiveDataRecommendDataLivesOwner);			case LiveDataRecommendDataLivesCover:
			return liveDataRecommendDataLivesCoverToJson(data as LiveDataRecommendDataLivesCover);    }
    return data as T;
  }  static T fromJsonAsT<T>(json) {
    switch (T.toString()) {			case 'LiveEntity':
			return LiveEntity().fromJson(json) as T;			case 'LiveData':
			return LiveData().fromJson(json) as T;			case 'LiveDataBanner':
			return LiveDataBanner().fromJson(json) as T;			case 'LiveDataPartition':
			return LiveDataPartition().fromJson(json) as T;			case 'LiveDataPartitionsPartition':
			return LiveDataPartitionsPartition().fromJson(json) as T;			case 'LiveDataPartitionsPartitionSubIcon':
			return LiveDataPartitionsPartitionSubIcon().fromJson(json) as T;			case 'LiveDataPartitionsLife':
			return LiveDataPartitionsLife().fromJson(json) as T;			case 'LiveDataPartitionsLivesCoverSize':
			return LiveDataPartitionsLivesCoverSize().fromJson(json) as T;			case 'LiveDataStarShow':
			return LiveDataStarShow().fromJson(json) as T;			case 'LiveDataStarShowPartition':
			return LiveDataStarShowPartition().fromJson(json) as T;			case 'LiveDataStarShowPartitionSubIcon':
			return LiveDataStarShowPartitionSubIcon().fromJson(json) as T;			case 'LiveDataStarShowLife':
			return LiveDataStarShowLife().fromJson(json) as T;			case 'LiveDataStarShowLivesCoverSize':
			return LiveDataStarShowLivesCoverSize().fromJson(json) as T;			case 'LiveDataRecommendData':
			return LiveDataRecommendData().fromJson(json) as T;			case 'LiveDataRecommendDataPartition':
			return LiveDataRecommendDataPartition().fromJson(json) as T;			case 'LiveDataRecommendDataPartitionSubIcon':
			return LiveDataRecommendDataPartitionSubIcon().fromJson(json) as T;			case 'LiveDataRecommendDataBannerData':
			return LiveDataRecommendDataBannerData().fromJson(json) as T;			case 'LiveDataRecommendDataBannerDataCover':
			return LiveDataRecommendDataBannerDataCover().fromJson(json) as T;			case 'LiveDataRecommendDataBannerDataNewCover':
			return LiveDataRecommendDataBannerDataNewCover().fromJson(json) as T;			case 'LiveDataRecommandDataLives':
			return LiveDataRecommandDataLives().fromJson(json) as T;			case 'LiveDataRecommendDataLivesOwner':
			return LiveDataRecommendDataLivesOwner().fromJson(json) as T;			case 'LiveDataRecommendDataLivesCover':
			return LiveDataRecommendDataLivesCover().fromJson(json) as T;    }
    return null;
  }}