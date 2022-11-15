// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_question_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageQuestionResult _$ImageQuestionResultFromJson(Map<String, dynamic> json) {
  return _ImageQuestionResult.fromJson(json);
}

/// @nodoc
mixin _$ImageQuestionResult {
  Identifier get id => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  String get valueIdentifier => throw _privateConstructorUsedError;
  String? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageQuestionResultCopyWith<ImageQuestionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageQuestionResultCopyWith<$Res> {
  factory $ImageQuestionResultCopyWith(
          ImageQuestionResult value, $Res Function(ImageQuestionResult) then) =
      _$ImageQuestionResultCopyWithImpl<$Res>;
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      String valueIdentifier,
      String? result});
}

/// @nodoc
class _$ImageQuestionResultCopyWithImpl<$Res>
    implements $ImageQuestionResultCopyWith<$Res> {
  _$ImageQuestionResultCopyWithImpl(this._value, this._then);

  final ImageQuestionResult _value;
  // ignore: unused_field
  final $Res Function(ImageQuestionResult) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? valueIdentifier = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      valueIdentifier: valueIdentifier == freezed
          ? _value.valueIdentifier
          : valueIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ImageQuestionResultCopyWith<$Res>
    implements $ImageQuestionResultCopyWith<$Res> {
  factory _$$_ImageQuestionResultCopyWith(_$_ImageQuestionResult value,
          $Res Function(_$_ImageQuestionResult) then) =
      __$$_ImageQuestionResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      String valueIdentifier,
      String? result});
}

/// @nodoc
class __$$_ImageQuestionResultCopyWithImpl<$Res>
    extends _$ImageQuestionResultCopyWithImpl<$Res>
    implements _$$_ImageQuestionResultCopyWith<$Res> {
  __$$_ImageQuestionResultCopyWithImpl(_$_ImageQuestionResult _value,
      $Res Function(_$_ImageQuestionResult) _then)
      : super(_value, (v) => _then(v as _$_ImageQuestionResult));

  @override
  _$_ImageQuestionResult get _value => super._value as _$_ImageQuestionResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? valueIdentifier = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_ImageQuestionResult(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      valueIdentifier: valueIdentifier == freezed
          ? _value.valueIdentifier
          : valueIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageQuestionResult extends _ImageQuestionResult {
  const _$_ImageQuestionResult(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required this.valueIdentifier,
      required this.result})
      : super._();

  factory _$_ImageQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$$_ImageQuestionResultFromJson(json);

  @override
  final Identifier id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String valueIdentifier;
  @override
  final String? result;

  @override
  String toString() {
    return 'ImageQuestionResult(id: $id, startDate: $startDate, endDate: $endDate, valueIdentifier: $valueIdentifier, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageQuestionResult &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality()
                .equals(other.valueIdentifier, valueIdentifier) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(valueIdentifier),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$_ImageQuestionResultCopyWith<_$_ImageQuestionResult> get copyWith =>
      __$$_ImageQuestionResultCopyWithImpl<_$_ImageQuestionResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageQuestionResultToJson(
      this,
    );
  }
}

abstract class _ImageQuestionResult extends ImageQuestionResult {
  const factory _ImageQuestionResult(
      {required final Identifier id,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String valueIdentifier,
      required final String? result}) = _$_ImageQuestionResult;
  const _ImageQuestionResult._() : super._();

  factory _ImageQuestionResult.fromJson(Map<String, dynamic> json) =
      _$_ImageQuestionResult.fromJson;

  @override
  Identifier get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  String get valueIdentifier;
  @override
  String? get result;
  @override
  @JsonKey(ignore: true)
  _$$_ImageQuestionResultCopyWith<_$_ImageQuestionResult> get copyWith =>
      throw _privateConstructorUsedError;
}
