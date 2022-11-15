// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'multiple_double_question_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MultipleDoubleQuestionResult _$MultipleDoubleQuestionResultFromJson(
    Map<String, dynamic> json) {
  return _MultipleDoubleQuestionResult.fromJson(json);
}

/// @nodoc
mixin _$MultipleDoubleQuestionResult {
  Identifier get id => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  String get valueIdentifier => throw _privateConstructorUsedError;
  List<MultiDouble>? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultipleDoubleQuestionResultCopyWith<MultipleDoubleQuestionResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultipleDoubleQuestionResultCopyWith<$Res> {
  factory $MultipleDoubleQuestionResultCopyWith(
          MultipleDoubleQuestionResult value,
          $Res Function(MultipleDoubleQuestionResult) then) =
      _$MultipleDoubleQuestionResultCopyWithImpl<$Res>;
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      String valueIdentifier,
      List<MultiDouble>? result});
}

/// @nodoc
class _$MultipleDoubleQuestionResultCopyWithImpl<$Res>
    implements $MultipleDoubleQuestionResultCopyWith<$Res> {
  _$MultipleDoubleQuestionResultCopyWithImpl(this._value, this._then);

  final MultipleDoubleQuestionResult _value;
  // ignore: unused_field
  final $Res Function(MultipleDoubleQuestionResult) _then;

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
              as List<MultiDouble>?,
    ));
  }
}

/// @nodoc
abstract class _$$_MultipleDoubleQuestionResultCopyWith<$Res>
    implements $MultipleDoubleQuestionResultCopyWith<$Res> {
  factory _$$_MultipleDoubleQuestionResultCopyWith(
          _$_MultipleDoubleQuestionResult value,
          $Res Function(_$_MultipleDoubleQuestionResult) then) =
      __$$_MultipleDoubleQuestionResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      String valueIdentifier,
      List<MultiDouble>? result});
}

/// @nodoc
class __$$_MultipleDoubleQuestionResultCopyWithImpl<$Res>
    extends _$MultipleDoubleQuestionResultCopyWithImpl<$Res>
    implements _$$_MultipleDoubleQuestionResultCopyWith<$Res> {
  __$$_MultipleDoubleQuestionResultCopyWithImpl(
      _$_MultipleDoubleQuestionResult _value,
      $Res Function(_$_MultipleDoubleQuestionResult) _then)
      : super(_value, (v) => _then(v as _$_MultipleDoubleQuestionResult));

  @override
  _$_MultipleDoubleQuestionResult get _value =>
      super._value as _$_MultipleDoubleQuestionResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? valueIdentifier = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_MultipleDoubleQuestionResult(
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
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<MultiDouble>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_MultipleDoubleQuestionResult extends _MultipleDoubleQuestionResult {
  const _$_MultipleDoubleQuestionResult(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required this.valueIdentifier,
      required final List<MultiDouble>? result})
      : _result = result,
        super._();

  factory _$_MultipleDoubleQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$$_MultipleDoubleQuestionResultFromJson(json);

  @override
  final Identifier id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String valueIdentifier;
  final List<MultiDouble>? _result;
  @override
  List<MultiDouble>? get result {
    final value = _result;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MultipleDoubleQuestionResult(id: $id, startDate: $startDate, endDate: $endDate, valueIdentifier: $valueIdentifier, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MultipleDoubleQuestionResult &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality()
                .equals(other.valueIdentifier, valueIdentifier) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(valueIdentifier),
      const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  _$$_MultipleDoubleQuestionResultCopyWith<_$_MultipleDoubleQuestionResult>
      get copyWith => __$$_MultipleDoubleQuestionResultCopyWithImpl<
          _$_MultipleDoubleQuestionResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MultipleDoubleQuestionResultToJson(
      this,
    );
  }
}

abstract class _MultipleDoubleQuestionResult
    extends MultipleDoubleQuestionResult {
  const factory _MultipleDoubleQuestionResult(
          {required final Identifier id,
          required final DateTime startDate,
          required final DateTime endDate,
          required final String valueIdentifier,
          required final List<MultiDouble>? result}) =
      _$_MultipleDoubleQuestionResult;
  const _MultipleDoubleQuestionResult._() : super._();

  factory _MultipleDoubleQuestionResult.fromJson(Map<String, dynamic> json) =
      _$_MultipleDoubleQuestionResult.fromJson;

  @override
  Identifier get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  String get valueIdentifier;
  @override
  List<MultiDouble>? get result;
  @override
  @JsonKey(ignore: true)
  _$$_MultipleDoubleQuestionResultCopyWith<_$_MultipleDoubleQuestionResult>
      get copyWith => throw _privateConstructorUsedError;
}
