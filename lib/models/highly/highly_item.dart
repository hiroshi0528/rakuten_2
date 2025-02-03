import 'package:freezed_annotation/freezed_annotation.dart';

part 'highly_item.freezed.dart';
part 'highly_item.g.dart';

@freezed
class HighlyItem with _$HighlyItem {
  const factory HighlyItem({
    required String japaneseTitle,
    required String mediumImageUrl,
    required int itemPrice,
    required String itemCaption,
  }) = _HighlyItem;

  factory HighlyItem.fromJson(Map<String, dynamic> json) =>
      _$HighlyItemFromJson(json);
}
