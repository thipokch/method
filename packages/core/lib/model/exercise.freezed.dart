// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Exercise {
  Uniform get uniform => throw _privateConstructorUsedError;
  Describe get describe => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExerciseCopyWith<Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res>;
  $Res call({Uniform uniform, Describe describe});
}

/// @nodoc
class _$ExerciseCopyWithImpl<$Res> implements $ExerciseCopyWith<$Res> {
  _$ExerciseCopyWithImpl(this._value, this._then);

  final Exercise _value;
  // ignore: unused_field
  final $Res Function(Exercise) _then;

  @override
  $Res call({
    Object? uniform = freezed,
    Object? describe = freezed,
  }) {
    return _then(_value.copyWith(
      uniform: uniform == freezed
          ? _value.uniform
          : uniform // ignore: cast_nullable_to_non_nullable
              as Uniform,
      describe: describe == freezed
          ? _value.describe
          : describe // ignore: cast_nullable_to_non_nullable
              as Describe,
    ));
  }
}

/// @nodoc
abstract class _$$_ExerciseCopyWith<$Res> implements $ExerciseCopyWith<$Res> {
  factory _$$_ExerciseCopyWith(
          _$_Exercise value, $Res Function(_$_Exercise) then) =
      __$$_ExerciseCopyWithImpl<$Res>;
  @override
  $Res call({Uniform uniform, Describe describe});
}

/// @nodoc
class __$$_ExerciseCopyWithImpl<$Res> extends _$ExerciseCopyWithImpl<$Res>
    implements _$$_ExerciseCopyWith<$Res> {
  __$$_ExerciseCopyWithImpl(
      _$_Exercise _value, $Res Function(_$_Exercise) _then)
      : super(_value, (v) => _then(v as _$_Exercise));

  @override
  _$_Exercise get _value => super._value as _$_Exercise;

  @override
  $Res call({
    Object? uniform = freezed,
    Object? describe = freezed,
  }) {
    return _then(_$_Exercise(
      uniform: uniform == freezed
          ? _value.uniform
          : uniform // ignore: cast_nullable_to_non_nullable
              as Uniform,
      describe: describe == freezed
          ? _value.describe
          : describe // ignore: cast_nullable_to_non_nullable
              as Describe,
    ));
  }
}

/// @nodoc

class _$_Exercise implements _Exercise {
  const _$_Exercise({required this.uniform, required this.describe});

  @override
  final Uniform uniform;
  @override
  final Describe describe;

  @override
  String toString() {
    return 'Exercise(uniform: $uniform, describe: $describe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Exercise &&
            const DeepCollectionEquality().equals(other.uniform, uniform) &&
            const DeepCollectionEquality().equals(other.describe, describe));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uniform),
      const DeepCollectionEquality().hash(describe));

  @JsonKey(ignore: true)
  @override
  _$$_ExerciseCopyWith<_$_Exercise> get copyWith =>
      __$$_ExerciseCopyWithImpl<_$_Exercise>(this, _$identity);
}

abstract class _Exercise implements Exercise {
  const factory _Exercise(
      {required final Uniform uniform,
      required final Describe describe}) = _$_Exercise;

  @override
  Uniform get uniform;
  @override
  Describe get describe;
  @override
  @JsonKey(ignore: true)
  _$$_ExerciseCopyWith<_$_Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}
