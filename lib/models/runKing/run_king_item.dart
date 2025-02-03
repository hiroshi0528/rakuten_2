import 'package:freezed_annotation/freezed_annotation.dart';

part 'run_king_item.freezed.dart';
part 'run_king_item.g.dart';

@freezed
class RunKingItem with _$RunKingItem {
  const factory RunKingItem({
    required String golfCourseName,
    required String golfCourseImageUrl,
    required int golfCourseId,
    required String golfCourseCaption,
    required String golfCourseAbbr,
    required String address,
    required int evaluation,
    required String golfCourseDetailUrl,
  }) = _RunKingItem;

  factory RunKingItem.fromJson(Map<String, dynamic> json) =>
      _$RunKingItemFromJson(json);
}
