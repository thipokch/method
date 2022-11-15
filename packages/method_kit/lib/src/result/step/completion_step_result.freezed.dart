// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'completion_step_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompletionStepResult _$CompletionStepResultFromJson(Map<String, dynamic> json) {
  return _CompletionStepResult.fromJson(json);
}

/// @nodoc
mixin _$CompletionStepResult {
  Identifier get id => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompletionStepResultCopyWith<CompletionStepResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletionStepResultCopyWith<$Res> {
  factory $CompletionStepResultCopyWith(CompletionStepResult value,
          $Res Function(CompletionStepResult) then) =
      _$CompletionStepResultCopyWithImpl<$Res>;
  $Res call({Identifier id, DateTime startDate, DateTime endDate});
}

/// @nodoc
class _$CompletionStepResultCopyWithImpl<$Res>
    implements $CompletionStepResultCopyWith<$Res> {
  _$CompletionStepResultCopyWithImpl(this._value, this._then);

  final CompletionStepResult _value;
  // ignore: unused_field
  final $Res Function(CompletionStepResult) _then;

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
abstract class _$$_CompletionStepResultCopyWith<$Res>
    implements $CompletionStepResultCopyWith<$Res> {
  factory _$$_CompletionStepResultCopyWith(_$_CompletionStepResult value,
          $Res Function(_$_CompletionStepResult) then) =
      __$$_CompletionStepResultCopyWithImpl<$Res>;
  @override
  $Res call({Identifier id, DateTime startDate, DateTime endDate});
}

/// @nodoc
class __$$_CompletionStepResultCopyWithImpl<$Res>
    extends _$CompletionStepResultCopyWithImpl<$Res>
    implements _$$_CompletionStepResultCopyWith<$Res> {
  __$$_CompletionStepResultCopyWithImpl(_$_CompletionStepResult _value,
      $Res Function(_$_CompletionStepResult) _then)
      : super(_value, (v) => _then(v as _$_CompletionStepResult));

  @override
  _$_CompletionStepResult get _value => super._value as _$_CompletionStepResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$_CompletionStepResult(
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
class _$_CompletionStepResult extends _CompletionStepResult {
  const _$_CompletionStepResult(this.id, this.startDate, this.endDate)
      : super._();

  factory _$_CompletionStepResult.fromJson(Map<String, dynamic> json) =>
      _$$_CompletionStepResultFromJson(json);

  @override
  final Identifier id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;

  @override
  String toString() {
    return 'CompletionStepResult(id: $id, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompletionStepResult &&
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
  _$$_CompletionStepResultCopyWith<_$_CompletionStepResult> get copyWith =>
      __$$_CompletionStepResultCopyWithImpl<_$_CompletionStepResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompletionStepResultToJson(
      this,
    );
  }
}

abstract class _CompletionStepResult extends CompletionStepResult {
  const factory _CompletionStepResult(
      final Identifier id,
      final DateTime startDate,
      final DateTime endDate) = _$_CompletionStepResult;
  const _CompletionStepResult._() : super._();

  factory _CompletionStepResult.fromJson(Map<String, dynamic> json) =
      _$_CompletionStepResult.fromJson;

  @override
  Identifier get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  @JsonKey(ignore: true)
  _$$_CompletionStepResultCopyWith<_$_CompletionStepResult> get copyWith =>
      throw _privateConstructorUsedError;
}
