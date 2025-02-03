import 'package:freezed_annotation/freezed_annotation.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class RecommendationItem with _$RecommendationItem {
  const factory RecommendationItem({
    required String itemName,
    required List<Map<String, dynamic>> mediumImageUrls,
    required String itemPrice,
    required String itemCaption,
    @Default(false) bool isPremium,
  }) = _RecommendationItem;

  factory RecommendationItem.fromJson(Map<String, dynamic> json) =>
      _$RecommendationItemFromJson(json);
}
