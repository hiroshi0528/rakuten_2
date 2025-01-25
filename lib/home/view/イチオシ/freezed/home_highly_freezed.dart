import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_highly_freezed.freezed.dart';
part 'home_highly_freezed.g.dart';

@freezed
class HomeHighlyItem with _$HomeHighlyItem {
  const factory HomeHighlyItem({
    required String itemName,
    required List<Map<String, dynamic>> mediumImageUrls,
    required String itemPrice,
    @Default(false) bool isPremium,
}) = _HomeHighlyItem;

  factory HomeHighlyItem.fromJson(Map<String, dynamic> json) => _$HomeHighlyItemFromJson(json);
}