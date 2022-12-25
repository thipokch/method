// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'zoom_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ZoomState {
  double get zoomLevel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ZoomStateCopyWith<ZoomState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZoomStateCopyWith<$Res> {
  factory $ZoomStateCopyWith(ZoomState value, $Res Function(ZoomState) then) =
      _$ZoomStateCopyWithImpl<$Res, ZoomState>;
  @useResult
  $Res call({double zoomLevel});
}

/// @nodoc
class _$ZoomStateCopyWithImpl<$Res, $Val extends ZoomState>
    implements $ZoomStateCopyWith<$Res> {
  _$ZoomStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zoomLevel = null,
  }) {
    return _then(_value.copyWith(
      zoomLevel: null == zoomLevel
          ? _value.zoomLevel
          : zoomLevel // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ZoomStateCopyWith<$Res> implements $ZoomStateCopyWith<$Res> {
  factory _$$_ZoomStateCopyWith(
          _$_ZoomState value, $Res Function(_$_ZoomState) then) =
      __$$_ZoomStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double zoomLevel});
}

/// @nodoc
class __$$_ZoomStateCopyWithImpl<$Res>
    extends _$ZoomStateCopyWithImpl<$Res, _$_ZoomState>
    implements _$$_ZoomStateCopyWith<$Res> {
  __$$_ZoomStateCopyWithImpl(
      _$_ZoomState _value, $Res Function(_$_ZoomState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zoomLevel = null,
  }) {
    return _then(_$_ZoomState(
      zoomLevel: null == zoomLevel
          ? _value.zoomLevel
          : zoomLevel // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ZoomState implements _ZoomState {
  _$_ZoomState({this.zoomLevel = 1});

  @override
  @JsonKey()
  final double zoomLevel;

  @override
  String toString() {
    return 'ZoomState(zoomLevel: $zoomLevel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZoomState &&
            (identical(other.zoomLevel, zoomLevel) ||
                other.zoomLevel == zoomLevel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, zoomLevel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ZoomStateCopyWith<_$_ZoomState> get copyWith =>
      __$$_ZoomStateCopyWithImpl<_$_ZoomState>(this, _$identity);
}

abstract class _ZoomState implements ZoomState {
  factory _ZoomState({final double zoomLevel}) = _$_ZoomState;

  @override
  double get zoomLevel;
  @override
  @JsonKey(ignore: true)
  _$$_ZoomStateCopyWith<_$_ZoomState> get copyWith =>
      throw _privateConstructorUsedError;
}
