// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'instruction_task_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InstructionTaskResult _$InstructionTaskResultFromJson(
    Map<String, dynamic> json) {
  return _InstructionTaskResult.fromJson(json);
}

/// @nodoc
mixin _$InstructionTaskResult {
  Identifier get id => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstructionTaskResultCopyWith<InstructionTaskResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstructionTaskResultCopyWith<$Res> {
  factory $InstructionTaskResultCopyWith(InstructionTaskResult value,
          $Res Function(InstructionTaskResult) then) =
      _$InstructionTaskResultCopyWithImpl<$Res>;
  $Res call({Identifier id, DateTime startDate, DateTime endDate});
}

/// @nodoc
class _$InstructionTaskResultCopyWithImpl<$Res>
    implements $InstructionTaskResultCopyWith<$Res> {
  _$InstructionTaskResultCopyWithImpl(this._value, this._then);

  final InstructionTaskResult _value;
  // ignore: unused_field
  final $Res Function(InstructionTaskResult) _then;

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
abstract class _$$_InstructionTaskResultCopyWith<$Res>
    implements $InstructionTaskResultCopyWith<$Res> {
  factory _$$_InstructionTaskResultCopyWith(_$_InstructionTaskResult value,
          $Res Function(_$_InstructionTaskResult) then) =
      __$$_InstructionTaskResultCopyWithImpl<$Res>;
  @override
  $Res call({Identifier id, DateTime startDate, DateTime endDate});
}

/// @nodoc
class __$$_InstructionTaskResultCopyWithImpl<$Res>
    extends _$InstructionTaskResultCopyWithImpl<$Res>
    implements _$$_InstructionTaskResultCopyWith<$Res> {
  __$$_InstructionTaskResultCopyWithImpl(_$_InstructionTaskResult _value,
      $Res Function(_$_InstructionTaskResult) _then)
      : super(_value, (v) => _then(v as _$_InstructionTaskResult));

  @override
  _$_InstructionTaskResult get _value =>
      super._value as _$_InstructionTaskResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$_InstructionTaskResult(
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
class _$_InstructionTaskResult extends _InstructionTaskResult {
  const _$_InstructionTaskResult(this.id, this.startDate, this.endDate)
      : super._();

  factory _$_InstructionTaskResult.fromJson(Map<String, dynamic> json) =>
      _$$_InstructionTaskResultFromJson(json);

  @override
  final Identifier id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;

  @override
  String toString() {
    return 'InstructionTaskResult(id: $id, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InstructionTaskResult &&
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
  _$$_InstructionTaskResultCopyWith<_$_InstructionTaskResult> get copyWith =>
      __$$_InstructionTaskResultCopyWithImpl<_$_InstructionTaskResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstructionTaskResultToJson(
      this,
    );
  }
}

abstract class _InstructionTaskResult extends InstructionTaskResult {
  const factory _InstructionTaskResult(
      final Identifier id,
      final DateTime startDate,
      final DateTime endDate) = _$_InstructionTaskResult;
  const _InstructionTaskResult._() : super._();

  factory _InstructionTaskResult.fromJson(Map<String, dynamic> json) =
      _$_InstructionTaskResult.fromJson;

  @override
  Identifier get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  @JsonKey(ignore: true)
  _$$_InstructionTaskResultCopyWith<_$_InstructionTaskResult> get copyWith =>
      throw _privateConstructorUsedError;
}
