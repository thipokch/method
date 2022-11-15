// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'double_question_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DoubleQuestionResult _$DoubleQuestionResultFromJson(Map<String, dynamic> json) {
  return _DoubleQuestionResult.fromJson(json);
}

/// @nodoc
mixin _$DoubleQuestionResult {
  Identifier get id => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  String get valueIdentifier => throw _privateConstructorUsedError;
  double? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoubleQuestionResultCopyWith<DoubleQuestionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoubleQuestionResultCopyWith<$Res> {
  factory $DoubleQuestionResultCopyWith(DoubleQuestionResult value,
          $Res Function(DoubleQuestionResult) then) =
      _$DoubleQuestionResultCopyWithImpl<$Res>;
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      String valueIdentifier,
      double? result});
}

/// @nodoc
class _$DoubleQuestionResultCopyWithImpl<$Res>
    implements $DoubleQuestionResultCopyWith<$Res> {
  _$DoubleQuestionResultCopyWithImpl(this._value, this._then);

  final DoubleQuestionResult _value;
  // ignore: unused_field
  final $Res Function(DoubleQuestionResult) _then;

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
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_DoubleQuestionResultCopyWith<$Res>
    implements $DoubleQuestionResultCopyWith<$Res> {
  factory _$$_DoubleQuestionResultCopyWith(_$_DoubleQuestionResult value,
          $Res Function(_$_DoubleQuestionResult) then) =
      __$$_DoubleQuestionResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      String valueIdentifier,
      double? result});
}

/// @nodoc
class __$$_DoubleQuestionResultCopyWithImpl<$Res>
    extends _$DoubleQuestionResultCopyWithImpl<$Res>
    implements _$$_DoubleQuestionResultCopyWith<$Res> {
  __$$_DoubleQuestionResultCopyWithImpl(_$_DoubleQuestionResult _value,
      $Res Function(_$_DoubleQuestionResult) _then)
      : super(_value, (v) => _then(v as _$_DoubleQuestionResult));

  @override
  _$_DoubleQuestionResult get _value => super._value as _$_DoubleQuestionResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? valueIdentifier = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_DoubleQuestionResult(
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
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_DoubleQuestionResult extends _DoubleQuestionResult {
  const _$_DoubleQuestionResult(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required this.valueIdentifier,
      required this.result})
      : super._();

  factory _$_DoubleQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$$_DoubleQuestionResultFromJson(json);

  @override
  final Identifier id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String valueIdentifier;
  @override
  final double? result;

  @override
  String toString() {
    return 'DoubleQuestionResult(id: $id, startDate: $startDate, endDate: $endDate, valueIdentifier: $valueIdentifier, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DoubleQuestionResult &&
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
  _$$_DoubleQuestionResultCopyWith<_$_DoubleQuestionResult> get copyWith =>
      __$$_DoubleQuestionResultCopyWithImpl<_$_DoubleQuestionResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DoubleQuestionResultToJson(
      this,
    );
  }
}

abstract class _DoubleQuestionResult extends DoubleQuestionResult {
  const factory _DoubleQuestionResult(
      {required final Identifier id,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String valueIdentifier,
      required final double? result}) = _$_DoubleQuestionResult;
  const _DoubleQuestionResult._() : super._();

  factory _DoubleQuestionResult.fromJson(Map<String, dynamic> json) =
      _$_DoubleQuestionResult.fromJson;

  @override
  Identifier get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  String get valueIdentifier;
  @override
  double? get result;
  @override
  @JsonKey(ignore: true)
  _$$_DoubleQuestionResultCopyWith<_$_DoubleQuestionResult> get copyWith =>
      throw _privateConstructorUsedError;
}
