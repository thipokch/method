// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'integer_question_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IntegerQuestionResult _$IntegerQuestionResultFromJson(
    Map<String, dynamic> json) {
  return _IntegerQuestionResult.fromJson(json);
}

/// @nodoc
mixin _$IntegerQuestionResult {
  Identifier get id => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  String get valueIdentifier => throw _privateConstructorUsedError;
  int? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntegerQuestionResultCopyWith<IntegerQuestionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntegerQuestionResultCopyWith<$Res> {
  factory $IntegerQuestionResultCopyWith(IntegerQuestionResult value,
          $Res Function(IntegerQuestionResult) then) =
      _$IntegerQuestionResultCopyWithImpl<$Res>;
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      String valueIdentifier,
      int? result});
}

/// @nodoc
class _$IntegerQuestionResultCopyWithImpl<$Res>
    implements $IntegerQuestionResultCopyWith<$Res> {
  _$IntegerQuestionResultCopyWithImpl(this._value, this._then);

  final IntegerQuestionResult _value;
  // ignore: unused_field
  final $Res Function(IntegerQuestionResult) _then;

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
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_IntegerQuestionResultCopyWith<$Res>
    implements $IntegerQuestionResultCopyWith<$Res> {
  factory _$$_IntegerQuestionResultCopyWith(_$_IntegerQuestionResult value,
          $Res Function(_$_IntegerQuestionResult) then) =
      __$$_IntegerQuestionResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      String valueIdentifier,
      int? result});
}

/// @nodoc
class __$$_IntegerQuestionResultCopyWithImpl<$Res>
    extends _$IntegerQuestionResultCopyWithImpl<$Res>
    implements _$$_IntegerQuestionResultCopyWith<$Res> {
  __$$_IntegerQuestionResultCopyWithImpl(_$_IntegerQuestionResult _value,
      $Res Function(_$_IntegerQuestionResult) _then)
      : super(_value, (v) => _then(v as _$_IntegerQuestionResult));

  @override
  _$_IntegerQuestionResult get _value =>
      super._value as _$_IntegerQuestionResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? valueIdentifier = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_IntegerQuestionResult(
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
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_IntegerQuestionResult extends _IntegerQuestionResult {
  const _$_IntegerQuestionResult(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required this.valueIdentifier,
      required this.result})
      : super._();

  factory _$_IntegerQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$$_IntegerQuestionResultFromJson(json);

  @override
  final Identifier id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String valueIdentifier;
  @override
  final int? result;

  @override
  String toString() {
    return 'IntegerQuestionResult(id: $id, startDate: $startDate, endDate: $endDate, valueIdentifier: $valueIdentifier, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IntegerQuestionResult &&
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
  _$$_IntegerQuestionResultCopyWith<_$_IntegerQuestionResult> get copyWith =>
      __$$_IntegerQuestionResultCopyWithImpl<_$_IntegerQuestionResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IntegerQuestionResultToJson(
      this,
    );
  }
}

abstract class _IntegerQuestionResult extends IntegerQuestionResult {
  const factory _IntegerQuestionResult(
      {required final Identifier id,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String valueIdentifier,
      required final int? result}) = _$_IntegerQuestionResult;
  const _IntegerQuestionResult._() : super._();

  factory _IntegerQuestionResult.fromJson(Map<String, dynamic> json) =
      _$_IntegerQuestionResult.fromJson;

  @override
  Identifier get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  String get valueIdentifier;
  @override
  int? get result;
  @override
  @JsonKey(ignore: true)
  _$$_IntegerQuestionResultCopyWith<_$_IntegerQuestionResult> get copyWith =>
      throw _privateConstructorUsedError;
}
