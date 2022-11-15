// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'multiple_choice_question_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MultipleChoiceQuestionResult _$MultipleChoiceQuestionResultFromJson(
    Map<String, dynamic> json) {
  return _MultipleChoiceQuestionResult.fromJson(json);
}

/// @nodoc
mixin _$MultipleChoiceQuestionResult {
  Identifier get id => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  String get valueIdentifier => throw _privateConstructorUsedError;
  List<TextChoice>? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultipleChoiceQuestionResultCopyWith<MultipleChoiceQuestionResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultipleChoiceQuestionResultCopyWith<$Res> {
  factory $MultipleChoiceQuestionResultCopyWith(
          MultipleChoiceQuestionResult value,
          $Res Function(MultipleChoiceQuestionResult) then) =
      _$MultipleChoiceQuestionResultCopyWithImpl<$Res>;
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      String valueIdentifier,
      List<TextChoice>? result});
}

/// @nodoc
class _$MultipleChoiceQuestionResultCopyWithImpl<$Res>
    implements $MultipleChoiceQuestionResultCopyWith<$Res> {
  _$MultipleChoiceQuestionResultCopyWithImpl(this._value, this._then);

  final MultipleChoiceQuestionResult _value;
  // ignore: unused_field
  final $Res Function(MultipleChoiceQuestionResult) _then;

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
              as List<TextChoice>?,
    ));
  }
}

/// @nodoc
abstract class _$$_MultipleChoiceQuestionResultCopyWith<$Res>
    implements $MultipleChoiceQuestionResultCopyWith<$Res> {
  factory _$$_MultipleChoiceQuestionResultCopyWith(
          _$_MultipleChoiceQuestionResult value,
          $Res Function(_$_MultipleChoiceQuestionResult) then) =
      __$$_MultipleChoiceQuestionResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      String valueIdentifier,
      List<TextChoice>? result});
}

/// @nodoc
class __$$_MultipleChoiceQuestionResultCopyWithImpl<$Res>
    extends _$MultipleChoiceQuestionResultCopyWithImpl<$Res>
    implements _$$_MultipleChoiceQuestionResultCopyWith<$Res> {
  __$$_MultipleChoiceQuestionResultCopyWithImpl(
      _$_MultipleChoiceQuestionResult _value,
      $Res Function(_$_MultipleChoiceQuestionResult) _then)
      : super(_value, (v) => _then(v as _$_MultipleChoiceQuestionResult));

  @override
  _$_MultipleChoiceQuestionResult get _value =>
      super._value as _$_MultipleChoiceQuestionResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? valueIdentifier = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_MultipleChoiceQuestionResult(
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
              as List<TextChoice>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_MultipleChoiceQuestionResult extends _MultipleChoiceQuestionResult {
  const _$_MultipleChoiceQuestionResult(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required this.valueIdentifier,
      required final List<TextChoice>? result})
      : _result = result,
        super._();

  factory _$_MultipleChoiceQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$$_MultipleChoiceQuestionResultFromJson(json);

  @override
  final Identifier id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String valueIdentifier;
  final List<TextChoice>? _result;
  @override
  List<TextChoice>? get result {
    final value = _result;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MultipleChoiceQuestionResult(id: $id, startDate: $startDate, endDate: $endDate, valueIdentifier: $valueIdentifier, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MultipleChoiceQuestionResult &&
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
  _$$_MultipleChoiceQuestionResultCopyWith<_$_MultipleChoiceQuestionResult>
      get copyWith => __$$_MultipleChoiceQuestionResultCopyWithImpl<
          _$_MultipleChoiceQuestionResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MultipleChoiceQuestionResultToJson(
      this,
    );
  }
}

abstract class _MultipleChoiceQuestionResult
    extends MultipleChoiceQuestionResult {
  const factory _MultipleChoiceQuestionResult(
          {required final Identifier id,
          required final DateTime startDate,
          required final DateTime endDate,
          required final String valueIdentifier,
          required final List<TextChoice>? result}) =
      _$_MultipleChoiceQuestionResult;
  const _MultipleChoiceQuestionResult._() : super._();

  factory _MultipleChoiceQuestionResult.fromJson(Map<String, dynamic> json) =
      _$_MultipleChoiceQuestionResult.fromJson;

  @override
  Identifier get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  String get valueIdentifier;
  @override
  List<TextChoice>? get result;
  @override
  @JsonKey(ignore: true)
  _$$_MultipleChoiceQuestionResultCopyWith<_$_MultipleChoiceQuestionResult>
      get copyWith => throw _privateConstructorUsedError;
}
