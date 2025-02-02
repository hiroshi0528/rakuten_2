// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecommendationItem _$RecommendationItemFromJson(Map<String, dynamic> json) {
  return _RecommendationItem.fromJson(json);
}

/// @nodoc
mixin _$RecommendationItem {
  String get itemName => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get mediumImageUrls =>
      throw _privateConstructorUsedError;
  String get itemPrice => throw _privateConstructorUsedError;
  String get itemCaption => throw _privateConstructorUsedError;
  bool get isPremium => throw _privateConstructorUsedError;

  /// Serializes this RecommendationItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecommendationItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecommendationItemCopyWith<RecommendationItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendationItemCopyWith<$Res> {
  factory $RecommendationItemCopyWith(
          RecommendationItem value, $Res Function(RecommendationItem) then) =
      _$RecommendationItemCopyWithImpl<$Res, RecommendationItem>;
  @useResult
  $Res call(
      {String itemName,
      List<Map<String, dynamic>> mediumImageUrls,
      String itemPrice,
      String itemCaption,
      bool isPremium});
}

/// @nodoc
class _$RecommendationItemCopyWithImpl<$Res, $Val extends RecommendationItem>
    implements $RecommendationItemCopyWith<$Res> {
  _$RecommendationItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecommendationItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemName = null,
    Object? mediumImageUrls = null,
    Object? itemPrice = null,
    Object? itemCaption = null,
    Object? isPremium = null,
  }) {
    return _then(_value.copyWith(
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      mediumImageUrls: null == mediumImageUrls
          ? _value.mediumImageUrls
          : mediumImageUrls // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      itemPrice: null == itemPrice
          ? _value.itemPrice
          : itemPrice // ignore: cast_nullable_to_non_nullable
              as String,
      itemCaption: null == itemCaption
          ? _value.itemCaption
          : itemCaption // ignore: cast_nullable_to_non_nullable
              as String,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecommendationItemImplCopyWith<$Res>
    implements $RecommendationItemCopyWith<$Res> {
  factory _$$RecommendationItemImplCopyWith(_$RecommendationItemImpl value,
          $Res Function(_$RecommendationItemImpl) then) =
      __$$RecommendationItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String itemName,
      List<Map<String, dynamic>> mediumImageUrls,
      String itemPrice,
      String itemCaption,
      bool isPremium});
}

/// @nodoc
class __$$RecommendationItemImplCopyWithImpl<$Res>
    extends _$RecommendationItemCopyWithImpl<$Res, _$RecommendationItemImpl>
    implements _$$RecommendationItemImplCopyWith<$Res> {
  __$$RecommendationItemImplCopyWithImpl(_$RecommendationItemImpl _value,
      $Res Function(_$RecommendationItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecommendationItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemName = null,
    Object? mediumImageUrls = null,
    Object? itemPrice = null,
    Object? itemCaption = null,
    Object? isPremium = null,
  }) {
    return _then(_$RecommendationItemImpl(
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      mediumImageUrls: null == mediumImageUrls
          ? _value._mediumImageUrls
          : mediumImageUrls // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      itemPrice: null == itemPrice
          ? _value.itemPrice
          : itemPrice // ignore: cast_nullable_to_non_nullable
              as String,
      itemCaption: null == itemCaption
          ? _value.itemCaption
          : itemCaption // ignore: cast_nullable_to_non_nullable
              as String,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecommendationItemImpl implements _RecommendationItem {
  const _$RecommendationItemImpl(
      {required this.itemName,
      required final List<Map<String, dynamic>> mediumImageUrls,
      required this.itemPrice,
      required this.itemCaption,
      this.isPremium = false})
      : _mediumImageUrls = mediumImageUrls;

  factory _$RecommendationItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecommendationItemImplFromJson(json);

  @override
  final String itemName;
  final List<Map<String, dynamic>> _mediumImageUrls;
  @override
  List<Map<String, dynamic>> get mediumImageUrls {
    if (_mediumImageUrls is EqualUnmodifiableListView) return _mediumImageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediumImageUrls);
  }

  @override
  final String itemPrice;
  @override
  final String itemCaption;
  @override
  @JsonKey()
  final bool isPremium;

  @override
  String toString() {
    return 'RecommendationItem(itemName: $itemName, mediumImageUrls: $mediumImageUrls, itemPrice: $itemPrice, itemCaption: $itemCaption, isPremium: $isPremium)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendationItemImpl &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            const DeepCollectionEquality()
                .equals(other._mediumImageUrls, _mediumImageUrls) &&
            (identical(other.itemPrice, itemPrice) ||
                other.itemPrice == itemPrice) &&
            (identical(other.itemCaption, itemCaption) ||
                other.itemCaption == itemCaption) &&
            (identical(other.isPremium, isPremium) ||
                other.isPremium == isPremium));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemName,
      const DeepCollectionEquality().hash(_mediumImageUrls),
      itemPrice,
      itemCaption,
      isPremium);

  /// Create a copy of RecommendationItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendationItemImplCopyWith<_$RecommendationItemImpl> get copyWith =>
      __$$RecommendationItemImplCopyWithImpl<_$RecommendationItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecommendationItemImplToJson(
      this,
    );
  }
}

abstract class _RecommendationItem implements RecommendationItem {
  const factory _RecommendationItem(
      {required final String itemName,
      required final List<Map<String, dynamic>> mediumImageUrls,
      required final String itemPrice,
      required final String itemCaption,
      final bool isPremium}) = _$RecommendationItemImpl;

  factory _RecommendationItem.fromJson(Map<String, dynamic> json) =
      _$RecommendationItemImpl.fromJson;

  @override
  String get itemName;
  @override
  List<Map<String, dynamic>> get mediumImageUrls;
  @override
  String get itemPrice;
  @override
  String get itemCaption;
  @override
  bool get isPremium;

  /// Create a copy of RecommendationItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecommendationItemImplCopyWith<_$RecommendationItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
