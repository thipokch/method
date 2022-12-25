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
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(ThemeMode themeMode) setThemeMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(ThemeMode themeMode)? setThemeMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(ThemeMode themeMode)? setThemeMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_SetThemeMode value) setThemeMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_SetThemeMode value)? setThemeMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_SetThemeMode value)? setThemeMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartCopyWith<$Res> {
  factory _$$_StartCopyWith(_$_Start value, $Res Function(_$_Start) then) =
      __$$_StartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_Start>
    implements _$$_StartCopyWith<$Res> {
  __$$_StartCopyWithImpl(_$_Start _value, $Res Function(_$_Start) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Start extends _Start with DiagnosticableTreeMixin {
  const _$_Start() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppEvent.start()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppEvent.start'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Start);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(ThemeMode themeMode) setThemeMode,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(ThemeMode themeMode)? setThemeMode,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(ThemeMode themeMode)? setThemeMode,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_SetThemeMode value) setThemeMode,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_SetThemeMode value)? setThemeMode,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_SetThemeMode value)? setThemeMode,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _Start extends AppEvent {
  const factory _Start() = _$_Start;
  const _Start._() : super._();
}

/// @nodoc
abstract class _$$_SetThemeModeCopyWith<$Res> {
  factory _$$_SetThemeModeCopyWith(
          _$_SetThemeMode value, $Res Function(_$_SetThemeMode) then) =
      __$$_SetThemeModeCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$$_SetThemeModeCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$_SetThemeMode>
    implements _$$_SetThemeModeCopyWith<$Res> {
  __$$_SetThemeModeCopyWithImpl(
      _$_SetThemeMode _value, $Res Function(_$_SetThemeMode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_$_SetThemeMode(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$_SetThemeMode extends _SetThemeMode with DiagnosticableTreeMixin {
  const _$_SetThemeMode({required this.themeMode}) : super._();

  @override
  final ThemeMode themeMode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppEvent.setThemeMode(themeMode: $themeMode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppEvent.setThemeMode'))
      ..add(DiagnosticsProperty('themeMode', themeMode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetThemeMode &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetThemeModeCopyWith<_$_SetThemeMode> get copyWith =>
      __$$_SetThemeModeCopyWithImpl<_$_SetThemeMode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(ThemeMode themeMode) setThemeMode,
  }) {
    return setThemeMode(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(ThemeMode themeMode)? setThemeMode,
  }) {
    return setThemeMode?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(ThemeMode themeMode)? setThemeMode,
    required TResult orElse(),
  }) {
    if (setThemeMode != null) {
      return setThemeMode(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_SetThemeMode value) setThemeMode,
  }) {
    return setThemeMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_SetThemeMode value)? setThemeMode,
  }) {
    return setThemeMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_SetThemeMode value)? setThemeMode,
    required TResult orElse(),
  }) {
    if (setThemeMode != null) {
      return setThemeMode(this);
    }
    return orElse();
  }
}

abstract class _SetThemeMode extends AppEvent {
  const factory _SetThemeMode({required final ThemeMode themeMode}) =
      _$_SetThemeMode;
  const _SetThemeMode._() : super._();

  ThemeMode get themeMode;
  @JsonKey(ignore: true)
  _$$_SetThemeModeCopyWith<_$_SetThemeMode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ThemeMode themeMode, GoRouter router,
            List<SingleChildStatelessWidget> serviceProviders)
        started,
    required TResult Function() resumed,
    required TResult Function() destroyed,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ThemeMode themeMode, GoRouter router,
            List<SingleChildStatelessWidget> serviceProviders)?
        started,
    TResult? Function()? resumed,
    TResult? Function()? destroyed,
    TResult? Function(Object error, StackTrace stackTrace)? errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeMode themeMode, GoRouter router,
            List<SingleChildStatelessWidget> serviceProviders)?
        started,
    TResult Function()? resumed,
    TResult Function()? destroyed,
    TResult Function(Object error, StackTrace stackTrace)? errored,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Started value) started,
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Destroyed value) destroyed,
    required TResult Function(_Errored value) errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Started value)? started,
    TResult? Function(_Resumed value)? resumed,
    TResult? Function(_Destroyed value)? destroyed,
    TResult? Function(_Errored value)? errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Destroyed value)? destroyed,
    TResult Function(_Errored value)? errored,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial extends _Initial with DiagnosticableTreeMixin {
  const _$_Initial() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppState.initial'));
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
    required TResult Function(ThemeMode themeMode, GoRouter router,
            List<SingleChildStatelessWidget> serviceProviders)
        started,
    required TResult Function() resumed,
    required TResult Function() destroyed,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ThemeMode themeMode, GoRouter router,
            List<SingleChildStatelessWidget> serviceProviders)?
        started,
    TResult? Function()? resumed,
    TResult? Function()? destroyed,
    TResult? Function(Object error, StackTrace stackTrace)? errored,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeMode themeMode, GoRouter router,
            List<SingleChildStatelessWidget> serviceProviders)?
        started,
    TResult Function()? resumed,
    TResult Function()? destroyed,
    TResult Function(Object error, StackTrace stackTrace)? errored,
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
    required TResult Function(_Started value) started,
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Destroyed value) destroyed,
    required TResult Function(_Errored value) errored,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Started value)? started,
    TResult? Function(_Resumed value)? resumed,
    TResult? Function(_Destroyed value)? destroyed,
    TResult? Function(_Errored value)? errored,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Destroyed value)? destroyed,
    TResult Function(_Errored value)? errored,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends AppState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ThemeMode themeMode,
      GoRouter router,
      List<SingleChildStatelessWidget> serviceProviders});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? router = null,
    Object? serviceProviders = null,
  }) {
    return _then(_$_Started(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      router: null == router
          ? _value.router
          : router // ignore: cast_nullable_to_non_nullable
              as GoRouter,
      serviceProviders: null == serviceProviders
          ? _value._serviceProviders
          : serviceProviders // ignore: cast_nullable_to_non_nullable
              as List<SingleChildStatelessWidget>,
    ));
  }
}

/// @nodoc

class _$_Started extends _Started with DiagnosticableTreeMixin {
  const _$_Started(
      {required this.themeMode,
      required this.router,
      required final List<SingleChildStatelessWidget> serviceProviders})
      : _serviceProviders = serviceProviders,
        super._();

  @override
  final ThemeMode themeMode;
  @override
  final GoRouter router;
  final List<SingleChildStatelessWidget> _serviceProviders;
  @override
  List<SingleChildStatelessWidget> get serviceProviders {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_serviceProviders);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState.started(themeMode: $themeMode, router: $router, serviceProviders: $serviceProviders)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppState.started'))
      ..add(DiagnosticsProperty('themeMode', themeMode))
      ..add(DiagnosticsProperty('router', router))
      ..add(DiagnosticsProperty('serviceProviders', serviceProviders));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.router, router) || other.router == router) &&
            const DeepCollectionEquality()
                .equals(other._serviceProviders, _serviceProviders));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode, router,
      const DeepCollectionEquality().hash(_serviceProviders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ThemeMode themeMode, GoRouter router,
            List<SingleChildStatelessWidget> serviceProviders)
        started,
    required TResult Function() resumed,
    required TResult Function() destroyed,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) {
    return started(themeMode, router, serviceProviders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ThemeMode themeMode, GoRouter router,
            List<SingleChildStatelessWidget> serviceProviders)?
        started,
    TResult? Function()? resumed,
    TResult? Function()? destroyed,
    TResult? Function(Object error, StackTrace stackTrace)? errored,
  }) {
    return started?.call(themeMode, router, serviceProviders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeMode themeMode, GoRouter router,
            List<SingleChildStatelessWidget> serviceProviders)?
        started,
    TResult Function()? resumed,
    TResult Function()? destroyed,
    TResult Function(Object error, StackTrace stackTrace)? errored,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(themeMode, router, serviceProviders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Started value) started,
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Destroyed value) destroyed,
    required TResult Function(_Errored value) errored,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Started value)? started,
    TResult? Function(_Resumed value)? resumed,
    TResult? Function(_Destroyed value)? destroyed,
    TResult? Function(_Errored value)? errored,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Destroyed value)? destroyed,
    TResult Function(_Errored value)? errored,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started extends AppState {
  const factory _Started(
          {required final ThemeMode themeMode,
          required final GoRouter router,
          required final List<SingleChildStatelessWidget> serviceProviders}) =
      _$_Started;
  const _Started._() : super._();

  ThemeMode get themeMode;
  GoRouter get router;
  List<SingleChildStatelessWidget> get serviceProviders;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResumedCopyWith<$Res> {
  factory _$$_ResumedCopyWith(
          _$_Resumed value, $Res Function(_$_Resumed) then) =
      __$$_ResumedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResumedCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$_Resumed>
    implements _$$_ResumedCopyWith<$Res> {
  __$$_ResumedCopyWithImpl(_$_Resumed _value, $Res Function(_$_Resumed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Resumed extends _Resumed with DiagnosticableTreeMixin {
  const _$_Resumed() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState.resumed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppState.resumed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Resumed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ThemeMode themeMode, GoRouter router,
            List<SingleChildStatelessWidget> serviceProviders)
        started,
    required TResult Function() resumed,
    required TResult Function() destroyed,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) {
    return resumed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ThemeMode themeMode, GoRouter router,
            List<SingleChildStatelessWidget> serviceProviders)?
        started,
    TResult? Function()? resumed,
    TResult? Function()? destroyed,
    TResult? Function(Object error, StackTrace stackTrace)? errored,
  }) {
    return resumed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeMode themeMode, GoRouter router,
            List<SingleChildStatelessWidget> serviceProviders)?
        started,
    TResult Function()? resumed,
    TResult Function()? destroyed,
    TResult Function(Object error, StackTrace stackTrace)? errored,
    required TResult orElse(),
  }) {
    if (resumed != null) {
      return resumed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Started value) started,
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Destroyed value) destroyed,
    required TResult Function(_Errored value) errored,
  }) {
    return resumed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Started value)? started,
    TResult? Function(_Resumed value)? resumed,
    TResult? Function(_Destroyed value)? destroyed,
    TResult? Function(_Errored value)? errored,
  }) {
    return resumed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Destroyed value)? destroyed,
    TResult Function(_Errored value)? errored,
    required TResult orElse(),
  }) {
    if (resumed != null) {
      return resumed(this);
    }
    return orElse();
  }
}

abstract class _Resumed extends AppState {
  const factory _Resumed() = _$_Resumed;
  const _Resumed._() : super._();
}

/// @nodoc
abstract class _$$_DestroyedCopyWith<$Res> {
  factory _$$_DestroyedCopyWith(
          _$_Destroyed value, $Res Function(_$_Destroyed) then) =
      __$$_DestroyedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DestroyedCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$_Destroyed>
    implements _$$_DestroyedCopyWith<$Res> {
  __$$_DestroyedCopyWithImpl(
      _$_Destroyed _value, $Res Function(_$_Destroyed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Destroyed extends _Destroyed with DiagnosticableTreeMixin {
  const _$_Destroyed() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState.destroyed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppState.destroyed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Destroyed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ThemeMode themeMode, GoRouter router,
            List<SingleChildStatelessWidget> serviceProviders)
        started,
    required TResult Function() resumed,
    required TResult Function() destroyed,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) {
    return destroyed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ThemeMode themeMode, GoRouter router,
            List<SingleChildStatelessWidget> serviceProviders)?
        started,
    TResult? Function()? resumed,
    TResult? Function()? destroyed,
    TResult? Function(Object error, StackTrace stackTrace)? errored,
  }) {
    return destroyed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeMode themeMode, GoRouter router,
            List<SingleChildStatelessWidget> serviceProviders)?
        started,
    TResult Function()? resumed,
    TResult Function()? destroyed,
    TResult Function(Object error, StackTrace stackTrace)? errored,
    required TResult orElse(),
  }) {
    if (destroyed != null) {
      return destroyed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Started value) started,
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Destroyed value) destroyed,
    required TResult Function(_Errored value) errored,
  }) {
    return destroyed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Started value)? started,
    TResult? Function(_Resumed value)? resumed,
    TResult? Function(_Destroyed value)? destroyed,
    TResult? Function(_Errored value)? errored,
  }) {
    return destroyed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Destroyed value)? destroyed,
    TResult Function(_Errored value)? errored,
    required TResult orElse(),
  }) {
    if (destroyed != null) {
      return destroyed(this);
    }
    return orElse();
  }
}

abstract class _Destroyed extends AppState {
  const factory _Destroyed() = _$_Destroyed;
  const _Destroyed._() : super._();
}

/// @nodoc
abstract class _$$_ErroredCopyWith<$Res> {
  factory _$$_ErroredCopyWith(
          _$_Errored value, $Res Function(_$_Errored) then) =
      __$$_ErroredCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$_ErroredCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$_Errored>
    implements _$$_ErroredCopyWith<$Res> {
  __$$_ErroredCopyWithImpl(_$_Errored _value, $Res Function(_$_Errored) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$_Errored(
      error: null == error ? _value.error : error,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$_Errored extends _Errored with DiagnosticableTreeMixin {
  const _$_Errored({required this.error, required this.stackTrace}) : super._();

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState.errored(error: $error, stackTrace: $stackTrace)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppState.errored'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('stackTrace', stackTrace));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Errored &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErroredCopyWith<_$_Errored> get copyWith =>
      __$$_ErroredCopyWithImpl<_$_Errored>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ThemeMode themeMode, GoRouter router,
            List<SingleChildStatelessWidget> serviceProviders)
        started,
    required TResult Function() resumed,
    required TResult Function() destroyed,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) {
    return errored(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ThemeMode themeMode, GoRouter router,
            List<SingleChildStatelessWidget> serviceProviders)?
        started,
    TResult? Function()? resumed,
    TResult? Function()? destroyed,
    TResult? Function(Object error, StackTrace stackTrace)? errored,
  }) {
    return errored?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeMode themeMode, GoRouter router,
            List<SingleChildStatelessWidget> serviceProviders)?
        started,
    TResult Function()? resumed,
    TResult Function()? destroyed,
    TResult Function(Object error, StackTrace stackTrace)? errored,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Started value) started,
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Destroyed value) destroyed,
    required TResult Function(_Errored value) errored,
  }) {
    return errored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Started value)? started,
    TResult? Function(_Resumed value)? resumed,
    TResult? Function(_Destroyed value)? destroyed,
    TResult? Function(_Errored value)? errored,
  }) {
    return errored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Destroyed value)? destroyed,
    TResult Function(_Errored value)? errored,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored(this);
    }
    return orElse();
  }
}

abstract class _Errored extends AppState {
  const factory _Errored(
      {required final Object error,
      required final StackTrace stackTrace}) = _$_Errored;
  const _Errored._() : super._();

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$_ErroredCopyWith<_$_Errored> get copyWith =>
      throw _privateConstructorUsedError;
}
