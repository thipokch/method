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
            ThemeMode themeMode, List<dynamic> serviceProviders)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeMode themeMode, List<dynamic> serviceProviders)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeMode themeMode, List<dynamic> serviceProviders)?
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
            ThemeMode themeMode, List<dynamic> serviceProviders)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeMode themeMode, List<dynamic> serviceProviders)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeMode themeMode, List<dynamic> serviceProviders)?
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
  $Res call({ThemeMode themeMode, List<dynamic> serviceProviders});
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
    Object? themeMode = freezed,
    Object? serviceProviders = freezed,
  }) {
    return _then(_$_Loaded(
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      serviceProviders: serviceProviders == freezed
          ? _value._serviceProviders
          : serviceProviders // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_Loaded extends _Loaded {
  _$_Loaded(
      {required this.themeMode, required final List<dynamic> serviceProviders})
      : _serviceProviders = serviceProviders,
        super._();

  @override
  final ThemeMode themeMode;
  final List<dynamic> _serviceProviders;
  @override
  List<dynamic> get serviceProviders {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_serviceProviders);
  }

  @override
  String toString() {
    return 'AppState.loaded(themeMode: $themeMode, serviceProviders: $serviceProviders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other.themeMode, themeMode) &&
            const DeepCollectionEquality()
                .equals(other._serviceProviders, _serviceProviders));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(themeMode),
      const DeepCollectionEquality().hash(_serviceProviders));

  @JsonKey(ignore: true)
  @override
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            ThemeMode themeMode, List<dynamic> serviceProviders)
        loaded,
  }) {
    return loaded(themeMode, serviceProviders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeMode themeMode, List<dynamic> serviceProviders)?
        loaded,
  }) {
    return loaded?.call(themeMode, serviceProviders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeMode themeMode, List<dynamic> serviceProviders)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(themeMode, serviceProviders);
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
      {required final ThemeMode themeMode,
      required final List<dynamic> serviceProviders}) = _$_Loaded;
  _Loaded._() : super._();

  ThemeMode get themeMode;
  List<dynamic> get serviceProviders;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(List<Future<dynamic> Function()> serviceProviders)
        load,
    required TResult Function(ThemeMode themeMode) updateThemeMode,
    required TResult Function(List<Future<dynamic> Function()> serviceProviders)
        updateServices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(List<Future<dynamic> Function()> serviceProviders)? load,
    TResult Function(ThemeMode themeMode)? updateThemeMode,
    TResult Function(List<Future<dynamic> Function()> serviceProviders)?
        updateServices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(List<Future<dynamic> Function()> serviceProviders)? load,
    TResult Function(ThemeMode themeMode)? updateThemeMode,
    TResult Function(List<Future<dynamic> Function()> serviceProviders)?
        updateServices,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateThemeMode value) updateThemeMode,
    required TResult Function(_UpdateServices value) updateServices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateThemeMode value)? updateThemeMode,
    TResult Function(_UpdateServices value)? updateServices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateThemeMode value)? updateThemeMode,
    TResult Function(_UpdateServices value)? updateServices,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res> implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  final AppEvent _value;
  // ignore: unused_field
  final $Res Function(AppEvent) _then;
}

/// @nodoc
abstract class _$$_ResetCopyWith<$Res> {
  factory _$$_ResetCopyWith(_$_Reset value, $Res Function(_$_Reset) then) =
      __$$_ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$$_ResetCopyWith<$Res> {
  __$$_ResetCopyWithImpl(_$_Reset _value, $Res Function(_$_Reset) _then)
      : super(_value, (v) => _then(v as _$_Reset));

  @override
  _$_Reset get _value => super._value as _$_Reset;
}

/// @nodoc

class _$_Reset implements _Reset {
  const _$_Reset();

  @override
  String toString() {
    return 'AppEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(List<Future<dynamic> Function()> serviceProviders)
        load,
    required TResult Function(ThemeMode themeMode) updateThemeMode,
    required TResult Function(List<Future<dynamic> Function()> serviceProviders)
        updateServices,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(List<Future<dynamic> Function()> serviceProviders)? load,
    TResult Function(ThemeMode themeMode)? updateThemeMode,
    TResult Function(List<Future<dynamic> Function()> serviceProviders)?
        updateServices,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(List<Future<dynamic> Function()> serviceProviders)? load,
    TResult Function(ThemeMode themeMode)? updateThemeMode,
    TResult Function(List<Future<dynamic> Function()> serviceProviders)?
        updateServices,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateThemeMode value) updateThemeMode,
    required TResult Function(_UpdateServices value) updateServices,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateThemeMode value)? updateThemeMode,
    TResult Function(_UpdateServices value)? updateServices,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateThemeMode value)? updateThemeMode,
    TResult Function(_UpdateServices value)? updateServices,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements AppEvent {
  const factory _Reset() = _$_Reset;
}

/// @nodoc
abstract class _$$_LoadCopyWith<$Res> {
  factory _$$_LoadCopyWith(_$_Load value, $Res Function(_$_Load) then) =
      __$$_LoadCopyWithImpl<$Res>;
  $Res call({List<Future<dynamic> Function()> serviceProviders});
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
    Object? serviceProviders = freezed,
  }) {
    return _then(_$_Load(
      serviceProviders: serviceProviders == freezed
          ? _value._serviceProviders
          : serviceProviders // ignore: cast_nullable_to_non_nullable
              as List<Future<dynamic> Function()>,
    ));
  }
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load(
      {required final List<Future<dynamic> Function()> serviceProviders})
      : _serviceProviders = serviceProviders;

  final List<Future<dynamic> Function()> _serviceProviders;
  @override
  List<Future<dynamic> Function()> get serviceProviders {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_serviceProviders);
  }

  @override
  String toString() {
    return 'AppEvent.load(serviceProviders: $serviceProviders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Load &&
            const DeepCollectionEquality()
                .equals(other._serviceProviders, _serviceProviders));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_serviceProviders));

  @JsonKey(ignore: true)
  @override
  _$$_LoadCopyWith<_$_Load> get copyWith =>
      __$$_LoadCopyWithImpl<_$_Load>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(List<Future<dynamic> Function()> serviceProviders)
        load,
    required TResult Function(ThemeMode themeMode) updateThemeMode,
    required TResult Function(List<Future<dynamic> Function()> serviceProviders)
        updateServices,
  }) {
    return load(serviceProviders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(List<Future<dynamic> Function()> serviceProviders)? load,
    TResult Function(ThemeMode themeMode)? updateThemeMode,
    TResult Function(List<Future<dynamic> Function()> serviceProviders)?
        updateServices,
  }) {
    return load?.call(serviceProviders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(List<Future<dynamic> Function()> serviceProviders)? load,
    TResult Function(ThemeMode themeMode)? updateThemeMode,
    TResult Function(List<Future<dynamic> Function()> serviceProviders)?
        updateServices,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(serviceProviders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateThemeMode value) updateThemeMode,
    required TResult Function(_UpdateServices value) updateServices,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateThemeMode value)? updateThemeMode,
    TResult Function(_UpdateServices value)? updateServices,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateThemeMode value)? updateThemeMode,
    TResult Function(_UpdateServices value)? updateServices,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements AppEvent {
  const factory _Load(
          {required final List<Future<dynamic> Function()> serviceProviders}) =
      _$_Load;

  List<Future<dynamic> Function()> get serviceProviders;
  @JsonKey(ignore: true)
  _$$_LoadCopyWith<_$_Load> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateThemeModeCopyWith<$Res> {
  factory _$$_UpdateThemeModeCopyWith(
          _$_UpdateThemeMode value, $Res Function(_$_UpdateThemeMode) then) =
      __$$_UpdateThemeModeCopyWithImpl<$Res>;
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$$_UpdateThemeModeCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res>
    implements _$$_UpdateThemeModeCopyWith<$Res> {
  __$$_UpdateThemeModeCopyWithImpl(
      _$_UpdateThemeMode _value, $Res Function(_$_UpdateThemeMode) _then)
      : super(_value, (v) => _then(v as _$_UpdateThemeMode));

  @override
  _$_UpdateThemeMode get _value => super._value as _$_UpdateThemeMode;

  @override
  $Res call({
    Object? themeMode = freezed,
  }) {
    return _then(_$_UpdateThemeMode(
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$_UpdateThemeMode implements _UpdateThemeMode {
  const _$_UpdateThemeMode({required this.themeMode});

  @override
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'AppEvent.updateThemeMode(themeMode: $themeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateThemeMode &&
            const DeepCollectionEquality().equals(other.themeMode, themeMode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(themeMode));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateThemeModeCopyWith<_$_UpdateThemeMode> get copyWith =>
      __$$_UpdateThemeModeCopyWithImpl<_$_UpdateThemeMode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(List<Future<dynamic> Function()> serviceProviders)
        load,
    required TResult Function(ThemeMode themeMode) updateThemeMode,
    required TResult Function(List<Future<dynamic> Function()> serviceProviders)
        updateServices,
  }) {
    return updateThemeMode(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(List<Future<dynamic> Function()> serviceProviders)? load,
    TResult Function(ThemeMode themeMode)? updateThemeMode,
    TResult Function(List<Future<dynamic> Function()> serviceProviders)?
        updateServices,
  }) {
    return updateThemeMode?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(List<Future<dynamic> Function()> serviceProviders)? load,
    TResult Function(ThemeMode themeMode)? updateThemeMode,
    TResult Function(List<Future<dynamic> Function()> serviceProviders)?
        updateServices,
    required TResult orElse(),
  }) {
    if (updateThemeMode != null) {
      return updateThemeMode(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateThemeMode value) updateThemeMode,
    required TResult Function(_UpdateServices value) updateServices,
  }) {
    return updateThemeMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateThemeMode value)? updateThemeMode,
    TResult Function(_UpdateServices value)? updateServices,
  }) {
    return updateThemeMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateThemeMode value)? updateThemeMode,
    TResult Function(_UpdateServices value)? updateServices,
    required TResult orElse(),
  }) {
    if (updateThemeMode != null) {
      return updateThemeMode(this);
    }
    return orElse();
  }
}

abstract class _UpdateThemeMode implements AppEvent {
  const factory _UpdateThemeMode({required final ThemeMode themeMode}) =
      _$_UpdateThemeMode;

  ThemeMode get themeMode;
  @JsonKey(ignore: true)
  _$$_UpdateThemeModeCopyWith<_$_UpdateThemeMode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateServicesCopyWith<$Res> {
  factory _$$_UpdateServicesCopyWith(
          _$_UpdateServices value, $Res Function(_$_UpdateServices) then) =
      __$$_UpdateServicesCopyWithImpl<$Res>;
  $Res call({List<Future<dynamic> Function()> serviceProviders});
}

/// @nodoc
class __$$_UpdateServicesCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$$_UpdateServicesCopyWith<$Res> {
  __$$_UpdateServicesCopyWithImpl(
      _$_UpdateServices _value, $Res Function(_$_UpdateServices) _then)
      : super(_value, (v) => _then(v as _$_UpdateServices));

  @override
  _$_UpdateServices get _value => super._value as _$_UpdateServices;

  @override
  $Res call({
    Object? serviceProviders = freezed,
  }) {
    return _then(_$_UpdateServices(
      serviceProviders: serviceProviders == freezed
          ? _value._serviceProviders
          : serviceProviders // ignore: cast_nullable_to_non_nullable
              as List<Future<dynamic> Function()>,
    ));
  }
}

/// @nodoc

class _$_UpdateServices implements _UpdateServices {
  const _$_UpdateServices(
      {required final List<Future<dynamic> Function()> serviceProviders})
      : _serviceProviders = serviceProviders;

  final List<Future<dynamic> Function()> _serviceProviders;
  @override
  List<Future<dynamic> Function()> get serviceProviders {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_serviceProviders);
  }

  @override
  String toString() {
    return 'AppEvent.updateServices(serviceProviders: $serviceProviders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateServices &&
            const DeepCollectionEquality()
                .equals(other._serviceProviders, _serviceProviders));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_serviceProviders));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateServicesCopyWith<_$_UpdateServices> get copyWith =>
      __$$_UpdateServicesCopyWithImpl<_$_UpdateServices>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(List<Future<dynamic> Function()> serviceProviders)
        load,
    required TResult Function(ThemeMode themeMode) updateThemeMode,
    required TResult Function(List<Future<dynamic> Function()> serviceProviders)
        updateServices,
  }) {
    return updateServices(serviceProviders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(List<Future<dynamic> Function()> serviceProviders)? load,
    TResult Function(ThemeMode themeMode)? updateThemeMode,
    TResult Function(List<Future<dynamic> Function()> serviceProviders)?
        updateServices,
  }) {
    return updateServices?.call(serviceProviders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(List<Future<dynamic> Function()> serviceProviders)? load,
    TResult Function(ThemeMode themeMode)? updateThemeMode,
    TResult Function(List<Future<dynamic> Function()> serviceProviders)?
        updateServices,
    required TResult orElse(),
  }) {
    if (updateServices != null) {
      return updateServices(serviceProviders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateThemeMode value) updateThemeMode,
    required TResult Function(_UpdateServices value) updateServices,
  }) {
    return updateServices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateThemeMode value)? updateThemeMode,
    TResult Function(_UpdateServices value)? updateServices,
  }) {
    return updateServices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateThemeMode value)? updateThemeMode,
    TResult Function(_UpdateServices value)? updateServices,
    required TResult orElse(),
  }) {
    if (updateServices != null) {
      return updateServices(this);
    }
    return orElse();
  }
}

abstract class _UpdateServices implements AppEvent {
  const factory _UpdateServices(
          {required final List<Future<dynamic> Function()> serviceProviders}) =
      _$_UpdateServices;

  List<Future<dynamic> Function()> get serviceProviders;
  @JsonKey(ignore: true)
  _$$_UpdateServicesCopyWith<_$_UpdateServices> get copyWith =>
      throw _privateConstructorUsedError;
}
