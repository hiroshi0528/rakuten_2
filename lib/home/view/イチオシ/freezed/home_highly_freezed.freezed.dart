// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_highly_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeHighlyItem _$HomeHighlyItemFromJson(Map<String, dynamic> json) {
  return _HomeHighlyItem.fromJson(json);
}

/// @nodoc
mixin _$HomeHighlyItem {
  String get itemName => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get mediumImageUrls =>
      throw _privateConstructorUsedError;
  String get itemPrice => throw _privateConstructorUsedError;
  bool get isPremium => throw _privateConstructorUsedError;

  /// Serializes this HomeHighlyItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeHighlyItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeHighlyItemCopyWith<HomeHighlyItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeHighlyItemCopyWith<$Res> {
  factory $HomeHighlyItemCopyWith(
          HomeHighlyItem value, $Res Function(HomeHighlyItem) then) =
      _$HomeHighlyItemCopyWithImpl<$Res, HomeHighlyItem>;
  @useResult
  $Res call(
      {String itemName,
      List<Map<String, dynamic>> mediumImageUrls,
      String itemPrice,
      bool isPremium});
}

/// @nodoc
class _$HomeHighlyItemCopyWithImpl<$Res, $Val extends HomeHighlyItem>
    implements $HomeHighlyItemCopyWith<$Res> {
  _$HomeHighlyItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeHighlyItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemName = null,
    Object? mediumImageUrls = null,
    Object? itemPrice = null,
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
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeHighlyItemImplCopyWith<$Res>
    implements $HomeHighlyItemCopyWith<$Res> {
  factory _$$HomeHighlyItemImplCopyWith(_$HomeHighlyItemImpl value,
          $Res Function(_$HomeHighlyItemImpl) then) =
      __$$HomeHighlyItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String itemName,
      List<Map<String, dynamic>> mediumImageUrls,
      String itemPrice,
      bool isPremium});
}

/// @nodoc
class __$$HomeHighlyItemImplCopyWithImpl<$Res>
    extends _$HomeHighlyItemCopyWithImpl<$Res, _$HomeHighlyItemImpl>
    implements _$$HomeHighlyItemImplCopyWith<$Res> {
  __$$HomeHighlyItemImplCopyWithImpl(
      _$HomeHighlyItemImpl _value, $Res Function(_$HomeHighlyItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeHighlyItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemName = null,
    Object? mediumImageUrls = null,
    Object? itemPrice = null,
    Object? isPremium = null,
  }) {
    return _then(_$HomeHighlyItemImpl(
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
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeHighlyItemImpl implements _HomeHighlyItem {
  const _$HomeHighlyItemImpl(
      {required this.itemName,
      required final List<Map<String, dynamic>> mediumImageUrls,
      required this.itemPrice,
      this.isPremium = false})
      : _mediumImageUrls = mediumImageUrls;

  factory _$HomeHighlyItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeHighlyItemImplFromJson(json);

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
  @JsonKey()
  final bool isPremium;

  @override
  String toString() {
    return 'HomeHighlyItem(itemName: $itemName, mediumImageUrls: $mediumImageUrls, itemPrice: $itemPrice, isPremium: $isPremium)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeHighlyItemImpl &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            const DeepCollectionEquality()
                .equals(other._mediumImageUrls, _mediumImageUrls) &&
            (identical(other.itemPrice, itemPrice) ||
                other.itemPrice == itemPrice) &&
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
      isPremium);

  /// Create a copy of HomeHighlyItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeHighlyItemImplCopyWith<_$HomeHighlyItemImpl> get copyWith =>
      __$$HomeHighlyItemImplCopyWithImpl<_$HomeHighlyItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeHighlyItemImplToJson(
      this,
    );
  }
}

abstract class _HomeHighlyItem implements HomeHighlyItem {
  const factory _HomeHighlyItem(
      {required final String itemName,
      required final List<Map<String, dynamic>> mediumImageUrls,
      required final String itemPrice,
      final bool isPremium}) = _$HomeHighlyItemImpl;

  factory _HomeHighlyItem.fromJson(Map<String, dynamic> json) =
      _$HomeHighlyItemImpl.fromJson;

  @override
  String get itemName;
  @override
  List<Map<String, dynamic>> get mediumImageUrls;
  @override
  String get itemPrice;
  @override
  bool get isPremium;

  /// Create a copy of HomeHighlyItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeHighlyItemImplCopyWith<_$HomeHighlyItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
