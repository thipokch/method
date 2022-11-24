// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'completion_task_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompletionTaskResult _$CompletionTaskResultFromJson(Map<String, dynamic> json) {
  return _CompletionTaskResult.fromJson(json);
}

/// @nodoc
mixin _$CompletionTaskResult {
  Identifier get id => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompletionTaskResultCopyWith<CompletionTaskResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletionTaskResultCopyWith<$Res> {
  factory $CompletionTaskResultCopyWith(CompletionTaskResult value,
          $Res Function(CompletionTaskResult) then) =
      _$CompletionTaskResultCopyWithImpl<$Res>;
  $Res call({Identifier id, DateTime startDate, DateTime endDate});
}

/// @nodoc
class _$CompletionTaskResultCopyWithImpl<$Res>
    implements $CompletionTaskResultCopyWith<$Res> {
  _$CompletionTaskResultCopyWithImpl(this._value, this._then);

  final CompletionTaskResult _value;
  // ignore: unused_field
  final $Res Function(CompletionTaskResult) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$$_CompletionTaskResultCopyWith<$Res>
    implements $CompletionTaskResultCopyWith<$Res> {
  factory _$$_CompletionTaskResultCopyWith(_$_CompletionTaskResult value,
          $Res Function(_$_CompletionTaskResult) then) =
      __$$_CompletionTaskResultCopyWithImpl<$Res>;
  @override
  $Res call({Identifier id, DateTime startDate, DateTime endDate});
}

/// @nodoc
class __$$_CompletionTaskResultCopyWithImpl<$Res>
    extends _$CompletionTaskResultCopyWithImpl<$Res>
    implements _$$_CompletionTaskResultCopyWith<$Res> {
  __$$_CompletionTaskResultCopyWithImpl(_$_CompletionTaskResult _value,
      $Res Function(_$_CompletionTaskResult) _then)
      : super(_value, (v) => _then(v as _$_CompletionTaskResult));

  @override
  _$_CompletionTaskResult get _value => super._value as _$_CompletionTaskResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$_CompletionTaskResult(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
      startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CompletionTaskResult extends _CompletionTaskResult {
  const _$_CompletionTaskResult(this.id, this.startDate, this.endDate)
      : super._();

  factory _$_CompletionTaskResult.fromJson(Map<String, dynamic> json) =>
      _$$_CompletionTaskResultFromJson(json);

  @override
  final Identifier id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;

  @override
  String toString() {
    return 'CompletionTaskResult(id: $id, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompletionTaskResult &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate));

  @JsonKey(ignore: true)
  @override
  _$$_CompletionTaskResultCopyWith<_$_CompletionTaskResult> get copyWith =>
      __$$_CompletionTaskResultCopyWithImpl<_$_CompletionTaskResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompletionTaskResultToJson(
      this,
    );
  }
}

abstract class _CompletionTaskResult extends CompletionTaskResult {
  const factory _CompletionTaskResult(
      final Identifier id,
      final DateTime startDate,
      final DateTime endDate) = _$_CompletionTaskResult;
  const _CompletionTaskResult._() : super._();

  factory _CompletionTaskResult.fromJson(Map<String, dynamic> json) =
      _$_CompletionTaskResult.fromJson;

  @override
  Identifier get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  @JsonKey(ignore: true)
  _$$_CompletionTaskResultCopyWith<_$_CompletionTaskResult> get copyWith =>
      throw _privateConstructorUsedError;
}
