// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            Widget masterFlow, Widget? modalFlow, Widget? slaveFlow)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Widget masterFlow, Widget? modalFlow, Widget? slaveFlow)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Widget masterFlow, Widget? modalFlow, Widget? slaveFlow)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial extends _Initial {
  _$_Initial() : super._();

  @override
  String toString() {
    return 'AppState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            Widget masterFlow, Widget? modalFlow, Widget? slaveFlow)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Widget masterFlow, Widget? modalFlow, Widget? slaveFlow)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Widget masterFlow, Widget? modalFlow, Widget? slaveFlow)?
        loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends AppState {
  factory _Initial() = _$_Initial;
  _Initial._() : super._();
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  $Res call({Widget masterFlow, Widget? modalFlow, Widget? slaveFlow});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, (v) => _then(v as _$_Loaded));

  @override
  _$_Loaded get _value => super._value as _$_Loaded;

  @override
  $Res call({
    Object? masterFlow = freezed,
    Object? modalFlow = freezed,
    Object? slaveFlow = freezed,
  }) {
    return _then(_$_Loaded(
      masterFlow: masterFlow == freezed
          ? _value.masterFlow
          : masterFlow // ignore: cast_nullable_to_non_nullable
              as Widget,
      modalFlow: modalFlow == freezed
          ? _value.modalFlow
          : modalFlow // ignore: cast_nullable_to_non_nullable
              as Widget?,
      slaveFlow: slaveFlow == freezed
          ? _value.slaveFlow
          : slaveFlow // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// @nodoc

class _$_Loaded extends _Loaded {
  _$_Loaded({required this.masterFlow, this.modalFlow, this.slaveFlow})
      : super._();

  @override
  final Widget masterFlow;
  @override
  final Widget? modalFlow;
  @override
  final Widget? slaveFlow;

  @override
  String toString() {
    return 'AppState.loaded(masterFlow: $masterFlow, modalFlow: $modalFlow, slaveFlow: $slaveFlow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality()
                .equals(other.masterFlow, masterFlow) &&
            const DeepCollectionEquality().equals(other.modalFlow, modalFlow) &&
            const DeepCollectionEquality().equals(other.slaveFlow, slaveFlow));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(masterFlow),
      const DeepCollectionEquality().hash(modalFlow),
      const DeepCollectionEquality().hash(slaveFlow));

  @JsonKey(ignore: true)
  @override
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            Widget masterFlow, Widget? modalFlow, Widget? slaveFlow)
        loaded,
  }) {
    return loaded(masterFlow, modalFlow, slaveFlow);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Widget masterFlow, Widget? modalFlow, Widget? slaveFlow)?
        loaded,
  }) {
    return loaded?.call(masterFlow, modalFlow, slaveFlow);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Widget masterFlow, Widget? modalFlow, Widget? slaveFlow)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(masterFlow, modalFlow, slaveFlow);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded extends AppState {
  factory _Loaded(
      {required final Widget masterFlow,
      final Widget? modalFlow,
      final Widget? slaveFlow}) = _$_Loaded;
  _Loaded._() : super._();

  Widget get masterFlow;
  Widget? get modalFlow;
  Widget? get slaveFlow;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppEvent {
  Widget get flow => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Widget flow) load,
    required TResult Function(Widget flow) loadModal,
    required TResult Function(Widget flow) loadSlave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Widget flow)? load,
    TResult Function(Widget flow)? loadModal,
    TResult Function(Widget flow)? loadSlave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Widget flow)? load,
    TResult Function(Widget flow)? loadModal,
    TResult Function(Widget flow)? loadSlave,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_LoadModal value) loadModal,
    required TResult Function(_LoadSlave value) loadSlave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadModal value)? loadModal,
    TResult Function(_LoadSlave value)? loadSlave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadModal value)? loadModal,
    TResult Function(_LoadSlave value)? loadSlave,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppEventCopyWith<AppEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res>;
  $Res call({Widget flow});
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res> implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  final AppEvent _value;
  // ignore: unused_field
  final $Res Function(AppEvent) _then;

  @override
  $Res call({
    Object? flow = freezed,
  }) {
    return _then(_value.copyWith(
      flow: flow == freezed
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc
abstract class _$$_LoadCopyWith<$Res> implements $AppEventCopyWith<$Res> {
  factory _$$_LoadCopyWith(_$_Load value, $Res Function(_$_Load) then) =
      __$$_LoadCopyWithImpl<$Res>;
  @override
  $Res call({Widget flow});
}

/// @nodoc
class __$$_LoadCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$$_LoadCopyWith<$Res> {
  __$$_LoadCopyWithImpl(_$_Load _value, $Res Function(_$_Load) _then)
      : super(_value, (v) => _then(v as _$_Load));

  @override
  _$_Load get _value => super._value as _$_Load;

  @override
  $Res call({
    Object? flow = freezed,
  }) {
    return _then(_$_Load(
      flow: flow == freezed
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load({required this.flow});

  @override
  final Widget flow;

  @override
  String toString() {
    return 'AppEvent.load(flow: $flow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Load &&
            const DeepCollectionEquality().equals(other.flow, flow));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(flow));

  @JsonKey(ignore: true)
  @override
  _$$_LoadCopyWith<_$_Load> get copyWith =>
      __$$_LoadCopyWithImpl<_$_Load>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Widget flow) load,
    required TResult Function(Widget flow) loadModal,
    required TResult Function(Widget flow) loadSlave,
  }) {
    return load(flow);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Widget flow)? load,
    TResult Function(Widget flow)? loadModal,
    TResult Function(Widget flow)? loadSlave,
  }) {
    return load?.call(flow);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Widget flow)? load,
    TResult Function(Widget flow)? loadModal,
    TResult Function(Widget flow)? loadSlave,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(flow);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_LoadModal value) loadModal,
    required TResult Function(_LoadSlave value) loadSlave,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadModal value)? loadModal,
    TResult Function(_LoadSlave value)? loadSlave,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadModal value)? loadModal,
    TResult Function(_LoadSlave value)? loadSlave,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements AppEvent {
  const factory _Load({required final Widget flow}) = _$_Load;

  @override
  Widget get flow;
  @override
  @JsonKey(ignore: true)
  _$$_LoadCopyWith<_$_Load> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadModalCopyWith<$Res> implements $AppEventCopyWith<$Res> {
  factory _$$_LoadModalCopyWith(
          _$_LoadModal value, $Res Function(_$_LoadModal) then) =
      __$$_LoadModalCopyWithImpl<$Res>;
  @override
  $Res call({Widget flow});
}

/// @nodoc
class __$$_LoadModalCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$$_LoadModalCopyWith<$Res> {
  __$$_LoadModalCopyWithImpl(
      _$_LoadModal _value, $Res Function(_$_LoadModal) _then)
      : super(_value, (v) => _then(v as _$_LoadModal));

  @override
  _$_LoadModal get _value => super._value as _$_LoadModal;

  @override
  $Res call({
    Object? flow = freezed,
  }) {
    return _then(_$_LoadModal(
      flow: flow == freezed
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$_LoadModal implements _LoadModal {
  const _$_LoadModal({required this.flow});

  @override
  final Widget flow;

  @override
  String toString() {
    return 'AppEvent.loadModal(flow: $flow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadModal &&
            const DeepCollectionEquality().equals(other.flow, flow));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(flow));

  @JsonKey(ignore: true)
  @override
  _$$_LoadModalCopyWith<_$_LoadModal> get copyWith =>
      __$$_LoadModalCopyWithImpl<_$_LoadModal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Widget flow) load,
    required TResult Function(Widget flow) loadModal,
    required TResult Function(Widget flow) loadSlave,
  }) {
    return loadModal(flow);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Widget flow)? load,
    TResult Function(Widget flow)? loadModal,
    TResult Function(Widget flow)? loadSlave,
  }) {
    return loadModal?.call(flow);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Widget flow)? load,
    TResult Function(Widget flow)? loadModal,
    TResult Function(Widget flow)? loadSlave,
    required TResult orElse(),
  }) {
    if (loadModal != null) {
      return loadModal(flow);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_LoadModal value) loadModal,
    required TResult Function(_LoadSlave value) loadSlave,
  }) {
    return loadModal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadModal value)? loadModal,
    TResult Function(_LoadSlave value)? loadSlave,
  }) {
    return loadModal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadModal value)? loadModal,
    TResult Function(_LoadSlave value)? loadSlave,
    required TResult orElse(),
  }) {
    if (loadModal != null) {
      return loadModal(this);
    }
    return orElse();
  }
}

abstract class _LoadModal implements AppEvent {
  const factory _LoadModal({required final Widget flow}) = _$_LoadModal;

  @override
  Widget get flow;
  @override
  @JsonKey(ignore: true)
  _$$_LoadModalCopyWith<_$_LoadModal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadSlaveCopyWith<$Res> implements $AppEventCopyWith<$Res> {
  factory _$$_LoadSlaveCopyWith(
          _$_LoadSlave value, $Res Function(_$_LoadSlave) then) =
      __$$_LoadSlaveCopyWithImpl<$Res>;
  @override
  $Res call({Widget flow});
}

/// @nodoc
class __$$_LoadSlaveCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$$_LoadSlaveCopyWith<$Res> {
  __$$_LoadSlaveCopyWithImpl(
      _$_LoadSlave _value, $Res Function(_$_LoadSlave) _then)
      : super(_value, (v) => _then(v as _$_LoadSlave));

  @override
  _$_LoadSlave get _value => super._value as _$_LoadSlave;

  @override
  $Res call({
    Object? flow = freezed,
  }) {
    return _then(_$_LoadSlave(
      flow: flow == freezed
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$_LoadSlave implements _LoadSlave {
  const _$_LoadSlave({required this.flow});

  @override
  final Widget flow;

  @override
  String toString() {
    return 'AppEvent.loadSlave(flow: $flow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSlave &&
            const DeepCollectionEquality().equals(other.flow, flow));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(flow));

  @JsonKey(ignore: true)
  @override
  _$$_LoadSlaveCopyWith<_$_LoadSlave> get copyWith =>
      __$$_LoadSlaveCopyWithImpl<_$_LoadSlave>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Widget flow) load,
    required TResult Function(Widget flow) loadModal,
    required TResult Function(Widget flow) loadSlave,
  }) {
    return loadSlave(flow);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Widget flow)? load,
    TResult Function(Widget flow)? loadModal,
    TResult Function(Widget flow)? loadSlave,
  }) {
    return loadSlave?.call(flow);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Widget flow)? load,
    TResult Function(Widget flow)? loadModal,
    TResult Function(Widget flow)? loadSlave,
    required TResult orElse(),
  }) {
    if (loadSlave != null) {
      return loadSlave(flow);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_LoadModal value) loadModal,
    required TResult Function(_LoadSlave value) loadSlave,
  }) {
    return loadSlave(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadModal value)? loadModal,
    TResult Function(_LoadSlave value)? loadSlave,
  }) {
    return loadSlave?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadModal value)? loadModal,
    TResult Function(_LoadSlave value)? loadSlave,
    required TResult orElse(),
  }) {
    if (loadSlave != null) {
      return loadSlave(this);
    }
    return orElse();
  }
}

abstract class _LoadSlave implements AppEvent {
  const factory _LoadSlave({required final Widget flow}) = _$_LoadSlave;

  @override
  Widget get flow;
  @override
  @JsonKey(ignore: true)
  _$$_LoadSlaveCopyWith<_$_LoadSlave> get copyWith =>
      throw _privateConstructorUsedError;
}
