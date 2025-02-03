import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_result.freezed.dart';
part 'history_result.g.dart';

@freezed
class HistoryResult with _$HistoryResult {
  const factory HistoryResult({
    required String recipeTitle,
    required String mediumImageUrl,
    required String recipeCost,
    required String recipeDescription,
  }) = _HistoryResult;

  factory HistoryResult.fromJson(Map<String, dynamic> json) =>
      _$HistoryResultFromJson(json);
}
