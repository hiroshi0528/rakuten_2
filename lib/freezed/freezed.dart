import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed.freezed.dart';
part 'freezed.g.dart';

@freezed
class Item with _$Item {
  const factory Item({
    required String itemName,
    required List<Map<String, dynamic>> mediumImageUrls,
    required String itemPrice,
    required String itemCaption,
    @Default(false) bool isPremium,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}