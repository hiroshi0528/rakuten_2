// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      itemName: json['itemName'] as String,
      mediumImageUrls: (json['mediumImageUrls'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      itemPrice: json['itemPrice'] as String,
      itemCaption: json['itemCaption'] as String,
      isPremium: json['isPremium'] as bool? ?? false,
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'itemName': instance.itemName,
      'mediumImageUrls': instance.mediumImageUrls,
      'itemPrice': instance.itemPrice,
      'itemCaption': instance.itemCaption,
      'isPremium': instance.isPremium,
    };
