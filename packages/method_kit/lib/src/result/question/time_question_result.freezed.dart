// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'time_question_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeQuestionResult _$TimeQuestionResultFromJson(Map<String, dynamic> json) {
  return _TimeQuestionResult.fromJson(json);
}

/// @nodoc
mixin _$TimeQuestionResult {
  Identifier get id => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  String get valueIdentifier => throw _privateConstructorUsedError;
  TimeOfDay? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeQuestionResultCopyWith<TimeQuestionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeQuestionResultCopyWith<$Res> {
  factory $TimeQuestionResultCopyWith(
          TimeQuestionResult value, $Res Function(TimeQuestionResult) then) =
      _$TimeQuestionResultCopyWithImpl<$Res>;
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      String valueIdentifier,
      TimeOfDay? result});
}

/// @nodoc
class _$TimeQuestionResultCopyWithImpl<$Res>
    implements $TimeQuestionResultCopyWith<$Res> {
  _$TimeQuestionResultCopyWithImpl(this._value, this._then);

  final TimeQuestionResult _value;
  // ignore: unused_field
  final $Res Function(TimeQuestionResult) _then;

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
              as TimeOfDay?,
    ));
  }
}

/// @nodoc
abstract class _$$_TimeQuestionResultCopyWith<$Res>
    implements $TimeQuestionResultCopyWith<$Res> {
  factory _$$_TimeQuestionResultCopyWith(_$_TimeQuestionResult value,
          $Res Function(_$_TimeQuestionResult) then) =
      __$$_TimeQuestionResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      String valueIdentifier,
      TimeOfDay? result});
}

/// @nodoc
class __$$_TimeQuestionResultCopyWithImpl<$Res>
    extends _$TimeQuestionResultCopyWithImpl<$Res>
    implements _$$_TimeQuestionResultCopyWith<$Res> {
  __$$_TimeQuestionResultCopyWithImpl(
      _$_TimeQuestionResult _value, $Res Function(_$_TimeQuestionResult) _then)
      : super(_value, (v) => _then(v as _$_TimeQuestionResult));

  @override
  _$_TimeQuestionResult get _value => super._value as _$_TimeQuestionResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? valueIdentifier = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_TimeQuestionResult(
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
              as TimeOfDay?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
@TimeOfDayConverter()
class _$_TimeQuestionResult extends _TimeQuestionResult {
  const _$_TimeQuestionResult(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required this.valueIdentifier,
      required this.result})
      : super._();

  factory _$_TimeQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$$_TimeQuestionResultFromJson(json);

  @override
  final Identifier id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String valueIdentifier;
  @override
  final TimeOfDay? result;

  @override
  String toString() {
    return 'TimeQuestionResult(id: $id, startDate: $startDate, endDate: $endDate, valueIdentifier: $valueIdentifier, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeQuestionResult &&
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
  _$$_TimeQuestionResultCopyWith<_$_TimeQuestionResult> get copyWith =>
      __$$_TimeQuestionResultCopyWithImpl<_$_TimeQuestionResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeQuestionResultToJson(
      this,
    );
  }
}

abstract class _TimeQuestionResult extends TimeQuestionResult {
  const factory _TimeQuestionResult(
      {required final Identifier id,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String valueIdentifier,
      required final TimeOfDay? result}) = _$_TimeQuestionResult;
  const _TimeQuestionResult._() : super._();

  factory _TimeQuestionResult.fromJson(Map<String, dynamic> json) =
      _$_TimeQuestionResult.fromJson;

  @override
  Identifier get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  String get valueIdentifier;
  @override
  TimeOfDay? get result;
  @override
  @JsonKey(ignore: true)
  _$$_TimeQuestionResultCopyWith<_$_TimeQuestionResult> get copyWith =>
      throw _privateConstructorUsedError;
}
