// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exercise_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExerciseResult _$ExerciseResultFromJson(Map<String, dynamic> json) {
  return _ExerciseResult.fromJson(json);
}

/// @nodoc
mixin _$ExerciseResult {
  Identifier? get id => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  FinishReason get finishReason => throw _privateConstructorUsedError;
  List<TaskResult> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseResultCopyWith<ExerciseResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseResultCopyWith<$Res> {
  factory $ExerciseResultCopyWith(
          ExerciseResult value, $Res Function(ExerciseResult) then) =
      _$ExerciseResultCopyWithImpl<$Res>;
  $Res call(
      {Identifier? id,
      DateTime startDate,
      DateTime endDate,
      FinishReason finishReason,
      List<TaskResult> results});

  $IdentifierCopyWith<$Res>? get id;
}

/// @nodoc
class _$ExerciseResultCopyWithImpl<$Res>
    implements $ExerciseResultCopyWith<$Res> {
  _$ExerciseResultCopyWithImpl(this._value, this._then);

  final ExerciseResult _value;
  // ignore: unused_field
  final $Res Function(ExerciseResult) _then;

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
              as List<TaskResult>,
    ));
  }

  @override
  $IdentifierCopyWith<$Res>? get id {
    if (_value.id == null) {
      return null;
    }

    return $IdentifierCopyWith<$Res>(_value.id!, (value) {
      return _then(_value.copyWith(id: value));
    });
  }
}

/// @nodoc
abstract class _$$_ExerciseResultCopyWith<$Res>
    implements $ExerciseResultCopyWith<$Res> {
  factory _$$_ExerciseResultCopyWith(
          _$_ExerciseResult value, $Res Function(_$_ExerciseResult) then) =
      __$$_ExerciseResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identifier? id,
      DateTime startDate,
      DateTime endDate,
      FinishReason finishReason,
      List<TaskResult> results});

  @override
  $IdentifierCopyWith<$Res>? get id;
}

/// @nodoc
class __$$_ExerciseResultCopyWithImpl<$Res>
    extends _$ExerciseResultCopyWithImpl<$Res>
    implements _$$_ExerciseResultCopyWith<$Res> {
  __$$_ExerciseResultCopyWithImpl(
      _$_ExerciseResult _value, $Res Function(_$_ExerciseResult) _then)
      : super(_value, (v) => _then(v as _$_ExerciseResult));

  @override
  _$_ExerciseResult get _value => super._value as _$_ExerciseResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? finishReason = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_ExerciseResult(
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
              as List<TaskResult>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ExerciseResult extends _ExerciseResult {
  const _$_ExerciseResult(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required this.finishReason,
      required final List<TaskResult> results})
      : _results = results,
        super._();

  factory _$_ExerciseResult.fromJson(Map<String, dynamic> json) =>
      _$$_ExerciseResultFromJson(json);

  @override
  final Identifier? id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final FinishReason finishReason;
  final List<TaskResult> _results;
  @override
  List<TaskResult> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'ExerciseResult(id: $id, startDate: $startDate, endDate: $endDate, finishReason: $finishReason, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExerciseResult &&
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
  _$$_ExerciseResultCopyWith<_$_ExerciseResult> get copyWith =>
      __$$_ExerciseResultCopyWithImpl<_$_ExerciseResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExerciseResultToJson(
      this,
    );
  }
}

abstract class _ExerciseResult extends ExerciseResult {
  const factory _ExerciseResult(
      {required final Identifier? id,
      required final DateTime startDate,
      required final DateTime endDate,
      required final FinishReason finishReason,
      required final List<TaskResult> results}) = _$_ExerciseResult;
  const _ExerciseResult._() : super._();

  factory _ExerciseResult.fromJson(Map<String, dynamic> json) =
      _$_ExerciseResult.fromJson;

  @override
  Identifier? get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  FinishReason get finishReason;
  @override
  List<TaskResult> get results;
  @override
  @JsonKey(ignore: true)
  _$$_ExerciseResultCopyWith<_$_ExerciseResult> get copyWith =>
      throw _privateConstructorUsedError;
}
