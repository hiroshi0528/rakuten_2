// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highly_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HighlyItemImpl _$$HighlyItemImplFromJson(Map<String, dynamic> json) =>
    _$HighlyItemImpl(
      japaneseTitle: json['japaneseTitle'] as String,
      mediumImageUrl: json['mediumImageUrl'] as String,
      itemPrice: (json['itemPrice'] as num).toInt(),
      itemCaption: json['itemCaption'] as String,
    );

Map<String, dynamic> _$$HighlyItemImplToJson(_$HighlyItemImpl instance) =>
    <String, dynamic>{
      'japaneseTitle': instance.japaneseTitle,
      'mediumImageUrl': instance.mediumImageUrl,
      'itemPrice': instance.itemPrice,
      'itemCaption': instance.itemCaption,
    };
