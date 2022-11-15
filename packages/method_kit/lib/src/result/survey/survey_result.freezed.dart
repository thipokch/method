// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'survey_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SurveyResult _$SurveyResultFromJson(Map<String, dynamic> json) {
  return _SurveyResult.fromJson(json);
}

/// @nodoc
mixin _$SurveyResult {
  Identifier? get id => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  FinishReason get finishReason => throw _privateConstructorUsedError;
  List<StepResult> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyResultCopyWith<SurveyResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyResultCopyWith<$Res> {
  factory $SurveyResultCopyWith(
          SurveyResult value, $Res Function(SurveyResult) then) =
      _$SurveyResultCopyWithImpl<$Res>;
  $Res call(
      {Identifier? id,
      DateTime startDate,
      DateTime endDate,
      FinishReason finishReason,
      List<StepResult> results});
}

/// @nodoc
class _$SurveyResultCopyWithImpl<$Res> implements $SurveyResultCopyWith<$Res> {
  _$SurveyResultCopyWithImpl(this._value, this._then);

  final SurveyResult _value;
  // ignore: unused_field
  final $Res Function(SurveyResult) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? finishReason = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      finishReason: finishReason == freezed
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as FinishReason,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<StepResult>,
    ));
  }
}

/// @nodoc
abstract class _$$_SurveyResultCopyWith<$Res>
    implements $SurveyResultCopyWith<$Res> {
  factory _$$_SurveyResultCopyWith(
          _$_SurveyResult value, $Res Function(_$_SurveyResult) then) =
      __$$_SurveyResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identifier? id,
      DateTime startDate,
      DateTime endDate,
      FinishReason finishReason,
      List<StepResult> results});
}

/// @nodoc
class __$$_SurveyResultCopyWithImpl<$Res>
    extends _$SurveyResultCopyWithImpl<$Res>
    implements _$$_SurveyResultCopyWith<$Res> {
  __$$_SurveyResultCopyWithImpl(
      _$_SurveyResult _value, $Res Function(_$_SurveyResult) _then)
      : super(_value, (v) => _then(v as _$_SurveyResult));

  @override
  _$_SurveyResult get _value => super._value as _$_SurveyResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? finishReason = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_SurveyResult(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      finishReason: finishReason == freezed
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as FinishReason,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<StepResult>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SurveyResult extends _SurveyResult {
  const _$_SurveyResult(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required this.finishReason,
      required final List<StepResult> results})
      : _results = results,
        super._();

  factory _$_SurveyResult.fromJson(Map<String, dynamic> json) =>
      _$$_SurveyResultFromJson(json);

  @override
  final Identifier? id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final FinishReason finishReason;
  final List<StepResult> _results;
  @override
  List<StepResult> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'SurveyResult(id: $id, startDate: $startDate, endDate: $endDate, finishReason: $finishReason, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SurveyResult &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality()
                .equals(other.finishReason, finishReason) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(finishReason),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_SurveyResultCopyWith<_$_SurveyResult> get copyWith =>
      __$$_SurveyResultCopyWithImpl<_$_SurveyResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurveyResultToJson(
      this,
    );
  }
}

abstract class _SurveyResult extends SurveyResult {
  const factory _SurveyResult(
      {required final Identifier? id,
      required final DateTime startDate,
      required final DateTime endDate,
      required final FinishReason finishReason,
      required final List<StepResult> results}) = _$_SurveyResult;
  const _SurveyResult._() : super._();

  factory _SurveyResult.fromJson(Map<String, dynamic> json) =
      _$_SurveyResult.fromJson;

  @override
  Identifier? get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  FinishReason get finishReason;
  @override
  List<StepResult> get results;
  @override
  @JsonKey(ignore: true)
  _$$_SurveyResultCopyWith<_$_SurveyResult> get copyWith =>
      throw _privateConstructorUsedError;
}
