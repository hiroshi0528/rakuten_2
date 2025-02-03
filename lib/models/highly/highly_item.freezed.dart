// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'highly_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HighlyItem _$HighlyItemFromJson(Map<String, dynamic> json) {
  return _HighlyItem.fromJson(json);
}

/// @nodoc
mixin _$HighlyItem {
  String get japaneseTitle => throw _privateConstructorUsedError;
  String get mediumImageUrl => throw _privateConstructorUsedError;
  int get itemPrice => throw _privateConstructorUsedError;
  String get itemCaption => throw _privateConstructorUsedError;

  /// Serializes this HighlyItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HighlyItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HighlyItemCopyWith<HighlyItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighlyItemCopyWith<$Res> {
  factory $HighlyItemCopyWith(
          HighlyItem value, $Res Function(HighlyItem) then) =
      _$HighlyItemCopyWithImpl<$Res, HighlyItem>;
  @useResult
  $Res call(
      {String japaneseTitle,
      String mediumImageUrl,
      int itemPrice,
      String itemCaption});
}

/// @nodoc
class _$HighlyItemCopyWithImpl<$Res, $Val extends HighlyItem>
    implements $HighlyItemCopyWith<$Res> {
  _$HighlyItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HighlyItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? japaneseTitle = null,
    Object? mediumImageUrl = null,
    Object? itemPrice = null,
    Object? itemCaption = null,
  }) {
    return _then(_value.copyWith(
      japaneseTitle: null == japaneseTitle
          ? _value.japaneseTitle
          : japaneseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      mediumImageUrl: null == mediumImageUrl
          ? _value.mediumImageUrl
          : mediumImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      itemPrice: null == itemPrice
          ? _value.itemPrice
          : itemPrice // ignore: cast_nullable_to_non_nullable
              as int,
      itemCaption: null == itemCaption
          ? _value.itemCaption
          : itemCaption // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HighlyItemImplCopyWith<$Res>
    implements $HighlyItemCopyWith<$Res> {
  factory _$$HighlyItemImplCopyWith(
          _$HighlyItemImpl value, $Res Function(_$HighlyItemImpl) then) =
      __$$HighlyItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String japaneseTitle,
      String mediumImageUrl,
      int itemPrice,
      String itemCaption});
}

/// @nodoc
class __$$HighlyItemImplCopyWithImpl<$Res>
    extends _$HighlyItemCopyWithImpl<$Res, _$HighlyItemImpl>
    implements _$$HighlyItemImplCopyWith<$Res> {
  __$$HighlyItemImplCopyWithImpl(
      _$HighlyItemImpl _value, $Res Function(_$HighlyItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of HighlyItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? japaneseTitle = null,
    Object? mediumImageUrl = null,
    Object? itemPrice = null,
    Object? itemCaption = null,
  }) {
    return _then(_$HighlyItemImpl(
      japaneseTitle: null == japaneseTitle
          ? _value.japaneseTitle
          : japaneseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      mediumImageUrl: null == mediumImageUrl
          ? _value.mediumImageUrl
          : mediumImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      itemPrice: null == itemPrice
          ? _value.itemPrice
          : itemPrice // ignore: cast_nullable_to_non_nullable
              as int,
      itemCaption: null == itemCaption
          ? _value.itemCaption
          : itemCaption // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HighlyItemImpl implements _HighlyItem {
  const _$HighlyItemImpl(
      {required this.japaneseTitle,
      required this.mediumImageUrl,
      required this.itemPrice,
      required this.itemCaption});

  factory _$HighlyItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$HighlyItemImplFromJson(json);

  @override
  final String japaneseTitle;
  @override
  final String mediumImageUrl;
  @override
  final int itemPrice;
  @override
  final String itemCaption;

  @override
  String toString() {
    return 'HighlyItem(japaneseTitle: $japaneseTitle, mediumImageUrl: $mediumImageUrl, itemPrice: $itemPrice, itemCaption: $itemCaption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HighlyItemImpl &&
            (identical(other.japaneseTitle, japaneseTitle) ||
                other.japaneseTitle == japaneseTitle) &&
            (identical(other.mediumImageUrl, mediumImageUrl) ||
                other.mediumImageUrl == mediumImageUrl) &&
            (identical(other.itemPrice, itemPrice) ||
                other.itemPrice == itemPrice) &&
            (identical(other.itemCaption, itemCaption) ||
                other.itemCaption == itemCaption));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, japaneseTitle, mediumImageUrl, itemPrice, itemCaption);

  /// Create a copy of HighlyItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HighlyItemImplCopyWith<_$HighlyItemImpl> get copyWith =>
      __$$HighlyItemImplCopyWithImpl<_$HighlyItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HighlyItemImplToJson(
      this,
    );
  }
}

abstract class _HighlyItem implements HighlyItem {
  const factory _HighlyItem(
      {required final String japaneseTitle,
      required final String mediumImageUrl,
      required final int itemPrice,
      required final String itemCaption}) = _$HighlyItemImpl;

  factory _HighlyItem.fromJson(Map<String, dynamic> json) =
      _$HighlyItemImpl.fromJson;

  @override
  String get japaneseTitle;
  @override
  String get mediumImageUrl;
  @override
  int get itemPrice;
  @override
  String get itemCaption;

  /// Create a copy of HighlyItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HighlyItemImplCopyWith<_$HighlyItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
