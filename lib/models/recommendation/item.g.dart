// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecommendationItemImpl _$$RecommendationItemImplFromJson(
        Map<String, dynamic> json) =>
    _$RecommendationItemImpl(
      itemName: json['itemName'] as String,
      mediumImageUrls: (json['mediumImageUrls'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      itemPrice: json['itemPrice'] as String,
      itemCaption: json['itemCaption'] as String,
      isPremium: json['isPremium'] as bool? ?? false,
    );

Map<String, dynamic> _$$RecommendationItemImplToJson(
        _$RecommendationItemImpl instance) =>
    <String, dynamic>{
      'itemName': instance.itemName,
      'mediumImageUrls': instance.mediumImageUrls,
      'itemPrice': instance.itemPrice,
      'itemCaption': instance.itemCaption,
      'isPremium': instance.isPremium,
    };
