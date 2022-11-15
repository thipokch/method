// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'date_question_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DateQuestionResult _$DateQuestionResultFromJson(Map<String, dynamic> json) {
  return _DateQuestionResult.fromJson(json);
}

/// @nodoc
mixin _$DateQuestionResult {
  Identifier get id => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  String get valueIdentifier => throw _privateConstructorUsedError;
  DateTime? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateQuestionResultCopyWith<DateQuestionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateQuestionResultCopyWith<$Res> {
  factory $DateQuestionResultCopyWith(
          DateQuestionResult value, $Res Function(DateQuestionResult) then) =
      _$DateQuestionResultCopyWithImpl<$Res>;
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      String valueIdentifier,
      DateTime? result});
}

/// @nodoc
class _$DateQuestionResultCopyWithImpl<$Res>
    implements $DateQuestionResultCopyWith<$Res> {
  _$DateQuestionResultCopyWithImpl(this._value, this._then);

  final DateQuestionResult _value;
  // ignore: unused_field
  final $Res Function(DateQuestionResult) _then;

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
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_DateQuestionResultCopyWith<$Res>
    implements $DateQuestionResultCopyWith<$Res> {
  factory _$$_DateQuestionResultCopyWith(_$_DateQuestionResult value,
          $Res Function(_$_DateQuestionResult) then) =
      __$$_DateQuestionResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      String valueIdentifier,
      DateTime? result});
}

/// @nodoc
class __$$_DateQuestionResultCopyWithImpl<$Res>
    extends _$DateQuestionResultCopyWithImpl<$Res>
    implements _$$_DateQuestionResultCopyWith<$Res> {
  __$$_DateQuestionResultCopyWithImpl(
      _$_DateQuestionResult _value, $Res Function(_$_DateQuestionResult) _then)
      : super(_value, (v) => _then(v as _$_DateQuestionResult));

  @override
  _$_DateQuestionResult get _value => super._value as _$_DateQuestionResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? valueIdentifier = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_DateQuestionResult(
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
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_DateQuestionResult extends _DateQuestionResult {
  const _$_DateQuestionResult(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required this.valueIdentifier,
      required this.result})
      : super._();

  factory _$_DateQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$$_DateQuestionResultFromJson(json);

  @override
  final Identifier id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String valueIdentifier;
  @override
  final DateTime? result;

  @override
  String toString() {
    return 'DateQuestionResult(id: $id, startDate: $startDate, endDate: $endDate, valueIdentifier: $valueIdentifier, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateQuestionResult &&
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
  _$$_DateQuestionResultCopyWith<_$_DateQuestionResult> get copyWith =>
      __$$_DateQuestionResultCopyWithImpl<_$_DateQuestionResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DateQuestionResultToJson(
      this,
    );
  }
}

abstract class _DateQuestionResult extends DateQuestionResult {
  const factory _DateQuestionResult(
      {required final Identifier id,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String valueIdentifier,
      required final DateTime? result}) = _$_DateQuestionResult;
  const _DateQuestionResult._() : super._();

  factory _DateQuestionResult.fromJson(Map<String, dynamic> json) =
      _$_DateQuestionResult.fromJson;

  @override
  Identifier get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  String get valueIdentifier;
  @override
  DateTime? get result;
  @override
  @JsonKey(ignore: true)
  _$$_DateQuestionResultCopyWith<_$_DateQuestionResult> get copyWith =>
      throw _privateConstructorUsedError;
}
