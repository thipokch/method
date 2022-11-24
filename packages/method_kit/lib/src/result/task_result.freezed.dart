// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskResult _$TaskResultFromJson(Map<String, dynamic> json) {
  return _TaskResult.fromJson(json);
}

/// @nodoc
mixin _$TaskResult {
  Identifier? get id => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  @_Converter()
  List<QuestionResult> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskResultCopyWith<TaskResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskResultCopyWith<$Res> {
  factory $TaskResultCopyWith(
          TaskResult value, $Res Function(TaskResult) then) =
      _$TaskResultCopyWithImpl<$Res>;
  $Res call(
      {Identifier? id,
      DateTime startDate,
      DateTime endDate,
      @_Converter() List<QuestionResult> results});
}

/// @nodoc
class _$TaskResultCopyWithImpl<$Res> implements $TaskResultCopyWith<$Res> {
  _$TaskResultCopyWithImpl(this._value, this._then);

  final TaskResult _value;
  // ignore: unused_field
  final $Res Function(TaskResult) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
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
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<QuestionResult>,
    ));
  }
}

/// @nodoc
abstract class _$$_TaskResultCopyWith<$Res>
    implements $TaskResultCopyWith<$Res> {
  factory _$$_TaskResultCopyWith(
          _$_TaskResult value, $Res Function(_$_TaskResult) then) =
      __$$_TaskResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identifier? id,
      DateTime startDate,
      DateTime endDate,
      @_Converter() List<QuestionResult> results});
}

/// @nodoc
class __$$_TaskResultCopyWithImpl<$Res> extends _$TaskResultCopyWithImpl<$Res>
    implements _$$_TaskResultCopyWith<$Res> {
  __$$_TaskResultCopyWithImpl(
      _$_TaskResult _value, $Res Function(_$_TaskResult) _then)
      : super(_value, (v) => _then(v as _$_TaskResult));

  @override
  _$_TaskResult get _value => super._value as _$_TaskResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_TaskResult(
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
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<QuestionResult>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_TaskResult extends _TaskResult {
  const _$_TaskResult(
      {required this.id,
      required this.startDate,
      required this.endDate,
      @_Converter() required final List<QuestionResult> results})
      : _results = results,
        super._();

  factory _$_TaskResult.fromJson(Map<String, dynamic> json) =>
      _$$_TaskResultFromJson(json);

  @override
  final Identifier? id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  final List<QuestionResult> _results;
  @override
  @_Converter()
  List<QuestionResult> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'TaskResult(id: $id, startDate: $startDate, endDate: $endDate, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskResult &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_TaskResultCopyWith<_$_TaskResult> get copyWith =>
      __$$_TaskResultCopyWithImpl<_$_TaskResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskResultToJson(
      this,
    );
  }
}

abstract class _TaskResult extends TaskResult {
  const factory _TaskResult(
          {required final Identifier? id,
          required final DateTime startDate,
          required final DateTime endDate,
          @_Converter() required final List<QuestionResult> results}) =
      _$_TaskResult;
  const _TaskResult._() : super._();

  factory _TaskResult.fromJson(Map<String, dynamic> json) =
      _$_TaskResult.fromJson;

  @override
  Identifier? get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  @_Converter()
  List<QuestionResult> get results;
  @override
  @JsonKey(ignore: true)
  _$$_TaskResultCopyWith<_$_TaskResult> get copyWith =>
      throw _privateConstructorUsedError;
}
