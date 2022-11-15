// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'boolean_question_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BooleanQuestionResult _$BooleanQuestionResultFromJson(
    Map<String, dynamic> json) {
  return _BooleanQuestionResult.fromJson(json);
}

/// @nodoc
mixin _$BooleanQuestionResult {
  Identifier get id => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  String get valueIdentifier => throw _privateConstructorUsedError;
  BooleanResult? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BooleanQuestionResultCopyWith<BooleanQuestionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooleanQuestionResultCopyWith<$Res> {
  factory $BooleanQuestionResultCopyWith(BooleanQuestionResult value,
          $Res Function(BooleanQuestionResult) then) =
      _$BooleanQuestionResultCopyWithImpl<$Res>;
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      String valueIdentifier,
      BooleanResult? result});
}

/// @nodoc
class _$BooleanQuestionResultCopyWithImpl<$Res>
    implements $BooleanQuestionResultCopyWith<$Res> {
  _$BooleanQuestionResultCopyWithImpl(this._value, this._then);

  final BooleanQuestionResult _value;
  // ignore: unused_field
  final $Res Function(BooleanQuestionResult) _then;

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
              as BooleanResult?,
    ));
  }
}

/// @nodoc
abstract class _$$_BooleanQuestionResultCopyWith<$Res>
    implements $BooleanQuestionResultCopyWith<$Res> {
  factory _$$_BooleanQuestionResultCopyWith(_$_BooleanQuestionResult value,
          $Res Function(_$_BooleanQuestionResult) then) =
      __$$_BooleanQuestionResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      String valueIdentifier,
      BooleanResult? result});
}

/// @nodoc
class __$$_BooleanQuestionResultCopyWithImpl<$Res>
    extends _$BooleanQuestionResultCopyWithImpl<$Res>
    implements _$$_BooleanQuestionResultCopyWith<$Res> {
  __$$_BooleanQuestionResultCopyWithImpl(_$_BooleanQuestionResult _value,
      $Res Function(_$_BooleanQuestionResult) _then)
      : super(_value, (v) => _then(v as _$_BooleanQuestionResult));

  @override
  _$_BooleanQuestionResult get _value =>
      super._value as _$_BooleanQuestionResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? valueIdentifier = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_BooleanQuestionResult(
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
              as BooleanResult?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_BooleanQuestionResult extends _BooleanQuestionResult {
  const _$_BooleanQuestionResult(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required this.valueIdentifier,
      required this.result})
      : super._();

  factory _$_BooleanQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$$_BooleanQuestionResultFromJson(json);

  @override
  final Identifier id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String valueIdentifier;
  @override
  final BooleanResult? result;

  @override
  String toString() {
    return 'BooleanQuestionResult(id: $id, startDate: $startDate, endDate: $endDate, valueIdentifier: $valueIdentifier, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BooleanQuestionResult &&
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
  _$$_BooleanQuestionResultCopyWith<_$_BooleanQuestionResult> get copyWith =>
      __$$_BooleanQuestionResultCopyWithImpl<_$_BooleanQuestionResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BooleanQuestionResultToJson(
      this,
    );
  }
}

abstract class _BooleanQuestionResult extends BooleanQuestionResult {
  const factory _BooleanQuestionResult(
      {required final Identifier id,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String valueIdentifier,
      required final BooleanResult? result}) = _$_BooleanQuestionResult;
  const _BooleanQuestionResult._() : super._();

  factory _BooleanQuestionResult.fromJson(Map<String, dynamic> json) =
      _$_BooleanQuestionResult.fromJson;

  @override
  Identifier get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  String get valueIdentifier;
  @override
  BooleanResult? get result;
  @override
  @JsonKey(ignore: true)
  _$$_BooleanQuestionResultCopyWith<_$_BooleanQuestionResult> get copyWith =>
      throw _privateConstructorUsedError;
}
