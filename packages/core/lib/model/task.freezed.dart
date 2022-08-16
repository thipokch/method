// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Task {
  Uniform get uniform => throw _privateConstructorUsedError;
  Describe get describe => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res>;
  $Res call({Uniform uniform, Describe describe});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res> implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  final Task _value;
  // ignore: unused_field
  final $Res Function(Task) _then;

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
abstract class _$$_TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$_TaskCopyWith(_$_Task value, $Res Function(_$_Task) then) =
      __$$_TaskCopyWithImpl<$Res>;
  @override
  $Res call({Uniform uniform, Describe describe});
}

/// @nodoc
class __$$_TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$$_TaskCopyWith<$Res> {
  __$$_TaskCopyWithImpl(_$_Task _value, $Res Function(_$_Task) _then)
      : super(_value, (v) => _then(v as _$_Task));

  @override
  _$_Task get _value => super._value as _$_Task;

  @override
  $Res call({
    Object? uniform = freezed,
    Object? describe = freezed,
  }) {
    return _then(_$_Task(
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

class _$_Task implements _Task {
  const _$_Task({required this.uniform, required this.describe});

  @override
  final Uniform uniform;
  @override
  final Describe describe;

  @override
  String toString() {
    return 'Task(uniform: $uniform, describe: $describe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Task &&
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
  _$$_TaskCopyWith<_$_Task> get copyWith =>
      __$$_TaskCopyWithImpl<_$_Task>(this, _$identity);
}

abstract class _Task implements Task {
  const factory _Task(
      {required final Uniform uniform,
      required final Describe describe}) = _$_Task;

  @override
  Uniform get uniform;
  @override
  Describe get describe;
  @override
  @JsonKey(ignore: true)
  _$$_TaskCopyWith<_$_Task> get copyWith => throw _privateConstructorUsedError;
}
