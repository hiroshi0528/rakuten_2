// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'run_king_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RunKingItemImpl _$$RunKingItemImplFromJson(Map<String, dynamic> json) =>
    _$RunKingItemImpl(
      golfCourseName: json['golfCourseName'] as String,
      golfCourseImageUrl: json['golfCourseImageUrl'] as String,
      golfCourseId: (json['golfCourseId'] as num).toInt(),
      golfCourseCaption: json['golfCourseCaption'] as String,
      golfCourseAbbr: json['golfCourseAbbr'] as String,
      address: json['address'] as String,
      evaluation: (json['evaluation'] as num).toInt(),
      golfCourseDetailUrl: json['golfCourseDetailUrl'] as String,
    );

Map<String, dynamic> _$$RunKingItemImplToJson(_$RunKingItemImpl instance) =>
    <String, dynamic>{
      'golfCourseName': instance.golfCourseName,
      'golfCourseImageUrl': instance.golfCourseImageUrl,
      'golfCourseId': instance.golfCourseId,
      'golfCourseCaption': instance.golfCourseCaption,
      'golfCourseAbbr': instance.golfCourseAbbr,
      'address': instance.address,
      'evaluation': instance.evaluation,
      'golfCourseDetailUrl': instance.golfCourseDetailUrl,
    };
