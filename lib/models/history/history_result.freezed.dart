// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HistoryResult _$HistoryResultFromJson(Map<String, dynamic> json) {
  return _HistoryResult.fromJson(json);
}

/// @nodoc
mixin _$HistoryResult {
  String get recipeTitle => throw _privateConstructorUsedError;
  String get mediumImageUrl => throw _privateConstructorUsedError;
  String get recipeCost => throw _privateConstructorUsedError;
  String get recipeDescription => throw _privateConstructorUsedError;

  /// Serializes this HistoryResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HistoryResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistoryResultCopyWith<HistoryResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryResultCopyWith<$Res> {
  factory $HistoryResultCopyWith(
          HistoryResult value, $Res Function(HistoryResult) then) =
      _$HistoryResultCopyWithImpl<$Res, HistoryResult>;
  @useResult
  $Res call(
      {String recipeTitle,
      String mediumImageUrl,
      String recipeCost,
      String recipeDescription});
}

/// @nodoc
class _$HistoryResultCopyWithImpl<$Res, $Val extends HistoryResult>
    implements $HistoryResultCopyWith<$Res> {
  _$HistoryResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeTitle = null,
    Object? mediumImageUrl = null,
    Object? recipeCost = null,
    Object? recipeDescription = null,
  }) {
    return _then(_value.copyWith(
      recipeTitle: null == recipeTitle
          ? _value.recipeTitle
          : recipeTitle // ignore: cast_nullable_to_non_nullable
              as String,
      mediumImageUrl: null == mediumImageUrl
          ? _value.mediumImageUrl
          : mediumImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      recipeCost: null == recipeCost
          ? _value.recipeCost
          : recipeCost // ignore: cast_nullable_to_non_nullable
              as String,
      recipeDescription: null == recipeDescription
          ? _value.recipeDescription
          : recipeDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryResultImplCopyWith<$Res>
    implements $HistoryResultCopyWith<$Res> {
  factory _$$HistoryResultImplCopyWith(
          _$HistoryResultImpl value, $Res Function(_$HistoryResultImpl) then) =
      __$$HistoryResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String recipeTitle,
      String mediumImageUrl,
      String recipeCost,
      String recipeDescription});
}

/// @nodoc
class __$$HistoryResultImplCopyWithImpl<$Res>
    extends _$HistoryResultCopyWithImpl<$Res, _$HistoryResultImpl>
    implements _$$HistoryResultImplCopyWith<$Res> {
  __$$HistoryResultImplCopyWithImpl(
      _$HistoryResultImpl _value, $Res Function(_$HistoryResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeTitle = null,
    Object? mediumImageUrl = null,
    Object? recipeCost = null,
    Object? recipeDescription = null,
  }) {
    return _then(_$HistoryResultImpl(
      recipeTitle: null == recipeTitle
          ? _value.recipeTitle
          : recipeTitle // ignore: cast_nullable_to_non_nullable
              as String,
      mediumImageUrl: null == mediumImageUrl
          ? _value.mediumImageUrl
          : mediumImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      recipeCost: null == recipeCost
          ? _value.recipeCost
          : recipeCost // ignore: cast_nullable_to_non_nullable
              as String,
      recipeDescription: null == recipeDescription
          ? _value.recipeDescription
          : recipeDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryResultImpl implements _HistoryResult {
  const _$HistoryResultImpl(
      {required this.recipeTitle,
      required this.mediumImageUrl,
      required this.recipeCost,
      required this.recipeDescription});

  factory _$HistoryResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryResultImplFromJson(json);

  @override
  final String recipeTitle;
  @override
  final String mediumImageUrl;
  @override
  final String recipeCost;
  @override
  final String recipeDescription;

  @override
  String toString() {
    return 'HistoryResult(recipeTitle: $recipeTitle, mediumImageUrl: $mediumImageUrl, recipeCost: $recipeCost, recipeDescription: $recipeDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryResultImpl &&
            (identical(other.recipeTitle, recipeTitle) ||
                other.recipeTitle == recipeTitle) &&
            (identical(other.mediumImageUrl, mediumImageUrl) ||
                other.mediumImageUrl == mediumImageUrl) &&
            (identical(other.recipeCost, recipeCost) ||
                other.recipeCost == recipeCost) &&
            (identical(other.recipeDescription, recipeDescription) ||
                other.recipeDescription == recipeDescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, recipeTitle, mediumImageUrl, recipeCost, recipeDescription);

  /// Create a copy of HistoryResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryResultImplCopyWith<_$HistoryResultImpl> get copyWith =>
      __$$HistoryResultImplCopyWithImpl<_$HistoryResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryResultImplToJson(
      this,
    );
  }
}

abstract class _HistoryResult implements HistoryResult {
  const factory _HistoryResult(
      {required final String recipeTitle,
      required final String mediumImageUrl,
      required final String recipeCost,
      required final String recipeDescription}) = _$HistoryResultImpl;

  factory _HistoryResult.fromJson(Map<String, dynamic> json) =
      _$HistoryResultImpl.fromJson;

  @override
  String get recipeTitle;
  @override
  String get mediumImageUrl;
  @override
  String get recipeCost;
  @override
  String get recipeDescription;

  /// Create a copy of HistoryResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryResultImplCopyWith<_$HistoryResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
