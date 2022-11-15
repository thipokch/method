// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'instruction_step_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InstructionStepResult _$InstructionStepResultFromJson(
    Map<String, dynamic> json) {
  return _InstructionStepResult.fromJson(json);
}

/// @nodoc
mixin _$InstructionStepResult {
  Identifier get id => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstructionStepResultCopyWith<InstructionStepResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstructionStepResultCopyWith<$Res> {
  factory $InstructionStepResultCopyWith(InstructionStepResult value,
          $Res Function(InstructionStepResult) then) =
      _$InstructionStepResultCopyWithImpl<$Res>;
  $Res call({Identifier id, DateTime startDate, DateTime endDate});
}

/// @nodoc
class _$InstructionStepResultCopyWithImpl<$Res>
    implements $InstructionStepResultCopyWith<$Res> {
  _$InstructionStepResultCopyWithImpl(this._value, this._then);

  final InstructionStepResult _value;
  // ignore: unused_field
  final $Res Function(InstructionStepResult) _then;

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
abstract class _$$_InstructionStepResultCopyWith<$Res>
    implements $InstructionStepResultCopyWith<$Res> {
  factory _$$_InstructionStepResultCopyWith(_$_InstructionStepResult value,
          $Res Function(_$_InstructionStepResult) then) =
      __$$_InstructionStepResultCopyWithImpl<$Res>;
  @override
  $Res call({Identifier id, DateTime startDate, DateTime endDate});
}

/// @nodoc
class __$$_InstructionStepResultCopyWithImpl<$Res>
    extends _$InstructionStepResultCopyWithImpl<$Res>
    implements _$$_InstructionStepResultCopyWith<$Res> {
  __$$_InstructionStepResultCopyWithImpl(_$_InstructionStepResult _value,
      $Res Function(_$_InstructionStepResult) _then)
      : super(_value, (v) => _then(v as _$_InstructionStepResult));

  @override
  _$_InstructionStepResult get _value =>
      super._value as _$_InstructionStepResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$_InstructionStepResult(
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
class _$_InstructionStepResult extends _InstructionStepResult {
  const _$_InstructionStepResult(this.id, this.startDate, this.endDate)
      : super._();

  factory _$_InstructionStepResult.fromJson(Map<String, dynamic> json) =>
      _$$_InstructionStepResultFromJson(json);

  @override
  final Identifier id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;

  @override
  String toString() {
    return 'InstructionStepResult(id: $id, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InstructionStepResult &&
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
  _$$_InstructionStepResultCopyWith<_$_InstructionStepResult> get copyWith =>
      __$$_InstructionStepResultCopyWithImpl<_$_InstructionStepResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstructionStepResultToJson(
      this,
    );
  }
}

abstract class _InstructionStepResult extends InstructionStepResult {
  const factory _InstructionStepResult(
      final Identifier id,
      final DateTime startDate,
      final DateTime endDate) = _$_InstructionStepResult;
  const _InstructionStepResult._() : super._();

  factory _InstructionStepResult.fromJson(Map<String, dynamic> json) =
      _$_InstructionStepResult.fromJson;

  @override
  Identifier get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  @JsonKey(ignore: true)
  _$$_InstructionStepResultCopyWith<_$_InstructionStepResult> get copyWith =>
      throw _privateConstructorUsedError;
}
