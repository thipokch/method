// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tool_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ToolState {
  SelectionMode get mode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ToolStateCopyWith<ToolState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToolStateCopyWith<$Res> {
  factory $ToolStateCopyWith(ToolState value, $Res Function(ToolState) then) =
      _$ToolStateCopyWithImpl<$Res, ToolState>;
  @useResult
  $Res call({SelectionMode mode});
}

/// @nodoc
class _$ToolStateCopyWithImpl<$Res, $Val extends ToolState>
    implements $ToolStateCopyWith<$Res> {
  _$ToolStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_value.copyWith(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as SelectionMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ToolStateCopyWith<$Res> implements $ToolStateCopyWith<$Res> {
  factory _$$_ToolStateCopyWith(
          _$_ToolState value, $Res Function(_$_ToolState) then) =
      __$$_ToolStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SelectionMode mode});
}

/// @nodoc
class __$$_ToolStateCopyWithImpl<$Res>
    extends _$ToolStateCopyWithImpl<$Res, _$_ToolState>
    implements _$$_ToolStateCopyWith<$Res> {
  __$$_ToolStateCopyWithImpl(
      _$_ToolState _value, $Res Function(_$_ToolState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_$_ToolState(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as SelectionMode,
    ));
  }
}

/// @nodoc

class _$_ToolState implements _ToolState {
  _$_ToolState({this.mode = SelectionMode.normal});

  @override
  @JsonKey()
  final SelectionMode mode;

  @override
  String toString() {
    return 'ToolState(mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToolState &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToolStateCopyWith<_$_ToolState> get copyWith =>
      __$$_ToolStateCopyWithImpl<_$_ToolState>(this, _$identity);
}

abstract class _ToolState implements ToolState {
  factory _ToolState({final SelectionMode mode}) = _$_ToolState;

  @override
  SelectionMode get mode;
  @override
  @JsonKey(ignore: true)
  _$$_ToolStateCopyWith<_$_ToolState> get copyWith =>
      throw _privateConstructorUsedError;
}
