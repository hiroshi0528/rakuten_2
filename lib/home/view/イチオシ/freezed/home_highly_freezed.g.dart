// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_highly_freezed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeHighlyItemImpl _$$HomeHighlyItemImplFromJson(Map<String, dynamic> json) =>
    _$HomeHighlyItemImpl(
      itemName: json['itemName'] as String,
      mediumImageUrls: (json['mediumImageUrls'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      itemPrice: json['itemPrice'] as String,
      isPremium: json['isPremium'] as bool? ?? false,
    );

Map<String, dynamic> _$$HomeHighlyItemImplToJson(
        _$HomeHighlyItemImpl instance) =>
    <String, dynamic>{
      'itemName': instance.itemName,
      'mediumImageUrls': instance.mediumImageUrls,
      'itemPrice': instance.itemPrice,
      'isPremium': instance.isPremium,
    };
