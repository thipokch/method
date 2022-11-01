// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entry_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EntryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() create,
    required TResult Function() start,
    required TResult Function() resume,
    required TResult Function() pause,
    required TResult Function() stop,
    required TResult Function() destroy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? create,
    TResult Function()? start,
    TResult Function()? resume,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function()? destroy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? create,
    TResult Function()? start,
    TResult Function()? resume,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function()? destroy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_Start value) start,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Destroy value) destroy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Start value)? start,
    TResult Function(_Resume value)? resume,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
    TResult Function(_Destroy value)? destroy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Start value)? start,
    TResult Function(_Resume value)? resume,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
    TResult Function(_Destroy value)? destroy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryEventCopyWith<$Res> {
  factory $EntryEventCopyWith(
          EntryEvent value, $Res Function(EntryEvent) then) =
      _$EntryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EntryEventCopyWithImpl<$Res> implements $EntryEventCopyWith<$Res> {
  _$EntryEventCopyWithImpl(this._value, this._then);

  final EntryEvent _value;
  // ignore: unused_field
  final $Res Function(EntryEvent) _then;
}

/// @nodoc
abstract class _$$_CreateCopyWith<$Res> {
  factory _$$_CreateCopyWith(_$_Create value, $Res Function(_$_Create) then) =
      __$$_CreateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CreateCopyWithImpl<$Res> extends _$EntryEventCopyWithImpl<$Res>
    implements _$$_CreateCopyWith<$Res> {
  __$$_CreateCopyWithImpl(_$_Create _value, $Res Function(_$_Create) _then)
      : super(_value, (v) => _then(v as _$_Create));

  @override
  _$_Create get _value => super._value as _$_Create;
}

/// @nodoc

class _$_Create extends _Create {
  const _$_Create() : super._();

  @override
  String toString() {
    return 'EntryEvent.create()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Create);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() create,
    required TResult Function() start,
    required TResult Function() resume,
    required TResult Function() pause,
    required TResult Function() stop,
    required TResult Function() destroy,
  }) {
    return create();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? create,
    TResult Function()? start,
    TResult Function()? resume,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function()? destroy,
  }) {
    return create?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? create,
    TResult Function()? start,
    TResult Function()? resume,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function()? destroy,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_Start value) start,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Destroy value) destroy,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Start value)? start,
    TResult Function(_Resume value)? resume,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
    TResult Function(_Destroy value)? destroy,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Start value)? start,
    TResult Function(_Resume value)? resume,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
    TResult Function(_Destroy value)? destroy,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _Create extends EntryEvent {
  const factory _Create() = _$_Create;
  const _Create._() : super._();
}

/// @nodoc
abstract class _$$_StartCopyWith<$Res> {
  factory _$$_StartCopyWith(_$_Start value, $Res Function(_$_Start) then) =
      __$$_StartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartCopyWithImpl<$Res> extends _$EntryEventCopyWithImpl<$Res>
    implements _$$_StartCopyWith<$Res> {
  __$$_StartCopyWithImpl(_$_Start _value, $Res Function(_$_Start) _then)
      : super(_value, (v) => _then(v as _$_Start));

  @override
  _$_Start get _value => super._value as _$_Start;
}

/// @nodoc

class _$_Start extends _Start {
  const _$_Start() : super._();

  @override
  String toString() {
    return 'EntryEvent.start()';
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
    required TResult Function() create,
    required TResult Function() start,
    required TResult Function() resume,
    required TResult Function() pause,
    required TResult Function() stop,
    required TResult Function() destroy,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? create,
    TResult Function()? start,
    TResult Function()? resume,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function()? destroy,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? create,
    TResult Function()? start,
    TResult Function()? resume,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function()? destroy,
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
    required TResult Function(_Create value) create,
    required TResult Function(_Start value) start,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Destroy value) destroy,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Start value)? start,
    TResult Function(_Resume value)? resume,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
    TResult Function(_Destroy value)? destroy,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Start value)? start,
    TResult Function(_Resume value)? resume,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
    TResult Function(_Destroy value)? destroy,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _Start extends EntryEvent {
  const factory _Start() = _$_Start;
  const _Start._() : super._();
}

/// @nodoc
abstract class _$$_ResumeCopyWith<$Res> {
  factory _$$_ResumeCopyWith(_$_Resume value, $Res Function(_$_Resume) then) =
      __$$_ResumeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResumeCopyWithImpl<$Res> extends _$EntryEventCopyWithImpl<$Res>
    implements _$$_ResumeCopyWith<$Res> {
  __$$_ResumeCopyWithImpl(_$_Resume _value, $Res Function(_$_Resume) _then)
      : super(_value, (v) => _then(v as _$_Resume));

  @override
  _$_Resume get _value => super._value as _$_Resume;
}

/// @nodoc

class _$_Resume extends _Resume {
  const _$_Resume() : super._();

  @override
  String toString() {
    return 'EntryEvent.resume()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Resume);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() create,
    required TResult Function() start,
    required TResult Function() resume,
    required TResult Function() pause,
    required TResult Function() stop,
    required TResult Function() destroy,
  }) {
    return resume();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? create,
    TResult Function()? start,
    TResult Function()? resume,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function()? destroy,
  }) {
    return resume?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? create,
    TResult Function()? start,
    TResult Function()? resume,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function()? destroy,
    required TResult orElse(),
  }) {
    if (resume != null) {
      return resume();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_Start value) start,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Destroy value) destroy,
  }) {
    return resume(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Start value)? start,
    TResult Function(_Resume value)? resume,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
    TResult Function(_Destroy value)? destroy,
  }) {
    return resume?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Start value)? start,
    TResult Function(_Resume value)? resume,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
    TResult Function(_Destroy value)? destroy,
    required TResult orElse(),
  }) {
    if (resume != null) {
      return resume(this);
    }
    return orElse();
  }
}

abstract class _Resume extends EntryEvent {
  const factory _Resume() = _$_Resume;
  const _Resume._() : super._();
}

/// @nodoc
abstract class _$$_PauseCopyWith<$Res> {
  factory _$$_PauseCopyWith(_$_Pause value, $Res Function(_$_Pause) then) =
      __$$_PauseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PauseCopyWithImpl<$Res> extends _$EntryEventCopyWithImpl<$Res>
    implements _$$_PauseCopyWith<$Res> {
  __$$_PauseCopyWithImpl(_$_Pause _value, $Res Function(_$_Pause) _then)
      : super(_value, (v) => _then(v as _$_Pause));

  @override
  _$_Pause get _value => super._value as _$_Pause;
}

/// @nodoc

class _$_Pause extends _Pause {
  const _$_Pause() : super._();

  @override
  String toString() {
    return 'EntryEvent.pause()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Pause);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() create,
    required TResult Function() start,
    required TResult Function() resume,
    required TResult Function() pause,
    required TResult Function() stop,
    required TResult Function() destroy,
  }) {
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? create,
    TResult Function()? start,
    TResult Function()? resume,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function()? destroy,
  }) {
    return pause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? create,
    TResult Function()? start,
    TResult Function()? resume,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function()? destroy,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_Start value) start,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Destroy value) destroy,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Start value)? start,
    TResult Function(_Resume value)? resume,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
    TResult Function(_Destroy value)? destroy,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Start value)? start,
    TResult Function(_Resume value)? resume,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
    TResult Function(_Destroy value)? destroy,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class _Pause extends EntryEvent {
  const factory _Pause() = _$_Pause;
  const _Pause._() : super._();
}

/// @nodoc
abstract class _$$_StopCopyWith<$Res> {
  factory _$$_StopCopyWith(_$_Stop value, $Res Function(_$_Stop) then) =
      __$$_StopCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StopCopyWithImpl<$Res> extends _$EntryEventCopyWithImpl<$Res>
    implements _$$_StopCopyWith<$Res> {
  __$$_StopCopyWithImpl(_$_Stop _value, $Res Function(_$_Stop) _then)
      : super(_value, (v) => _then(v as _$_Stop));

  @override
  _$_Stop get _value => super._value as _$_Stop;
}

/// @nodoc

class _$_Stop extends _Stop {
  const _$_Stop() : super._();

  @override
  String toString() {
    return 'EntryEvent.stop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Stop);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() create,
    required TResult Function() start,
    required TResult Function() resume,
    required TResult Function() pause,
    required TResult Function() stop,
    required TResult Function() destroy,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? create,
    TResult Function()? start,
    TResult Function()? resume,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function()? destroy,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? create,
    TResult Function()? start,
    TResult Function()? resume,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function()? destroy,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_Start value) start,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Destroy value) destroy,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Start value)? start,
    TResult Function(_Resume value)? resume,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
    TResult Function(_Destroy value)? destroy,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Start value)? start,
    TResult Function(_Resume value)? resume,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
    TResult Function(_Destroy value)? destroy,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class _Stop extends EntryEvent {
  const factory _Stop() = _$_Stop;
  const _Stop._() : super._();
}

/// @nodoc
abstract class _$$_DestroyCopyWith<$Res> {
  factory _$$_DestroyCopyWith(
          _$_Destroy value, $Res Function(_$_Destroy) then) =
      __$$_DestroyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DestroyCopyWithImpl<$Res> extends _$EntryEventCopyWithImpl<$Res>
    implements _$$_DestroyCopyWith<$Res> {
  __$$_DestroyCopyWithImpl(_$_Destroy _value, $Res Function(_$_Destroy) _then)
      : super(_value, (v) => _then(v as _$_Destroy));

  @override
  _$_Destroy get _value => super._value as _$_Destroy;
}

/// @nodoc

class _$_Destroy extends _Destroy {
  const _$_Destroy() : super._();

  @override
  String toString() {
    return 'EntryEvent.destroy()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Destroy);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() create,
    required TResult Function() start,
    required TResult Function() resume,
    required TResult Function() pause,
    required TResult Function() stop,
    required TResult Function() destroy,
  }) {
    return destroy();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? create,
    TResult Function()? start,
    TResult Function()? resume,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function()? destroy,
  }) {
    return destroy?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? create,
    TResult Function()? start,
    TResult Function()? resume,
    TResult Function()? pause,
    TResult Function()? stop,
    TResult Function()? destroy,
    required TResult orElse(),
  }) {
    if (destroy != null) {
      return destroy();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_Start value) start,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Destroy value) destroy,
  }) {
    return destroy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Start value)? start,
    TResult Function(_Resume value)? resume,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
    TResult Function(_Destroy value)? destroy,
  }) {
    return destroy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Start value)? start,
    TResult Function(_Resume value)? resume,
    TResult Function(_Pause value)? pause,
    TResult Function(_Stop value)? stop,
    TResult Function(_Destroy value)? destroy,
    required TResult orElse(),
  }) {
    if (destroy != null) {
      return destroy(this);
    }
    return orElse();
  }
}

abstract class _Destroy extends EntryEvent {
  const factory _Destroy() = _$_Destroy;
  const _Destroy._() : super._();
}

/// @nodoc
mixin _$EntryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() created,
    required TResult Function() started,
    required TResult Function() resumed,
    required TResult Function() destroyed,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? created,
    TResult Function()? started,
    TResult Function()? resumed,
    TResult Function()? destroyed,
    TResult Function(Object error, StackTrace stackTrace)? errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? created,
    TResult Function()? started,
    TResult Function()? resumed,
    TResult Function()? destroyed,
    TResult Function(Object error, StackTrace stackTrace)? errored,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Created value) created,
    required TResult Function(_Started value) started,
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Destroyed value) destroyed,
    required TResult Function(_Errored value) errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    TResult Function(_Started value)? started,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Destroyed value)? destroyed,
    TResult Function(_Errored value)? errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    TResult Function(_Started value)? started,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Destroyed value)? destroyed,
    TResult Function(_Errored value)? errored,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryStateCopyWith<$Res> {
  factory $EntryStateCopyWith(
          EntryState value, $Res Function(EntryState) then) =
      _$EntryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EntryStateCopyWithImpl<$Res> implements $EntryStateCopyWith<$Res> {
  _$EntryStateCopyWithImpl(this._value, this._then);

  final EntryState _value;
  // ignore: unused_field
  final $Res Function(EntryState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$EntryStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'EntryState.initial()';
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
    required TResult Function() created,
    required TResult Function() started,
    required TResult Function() resumed,
    required TResult Function() destroyed,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? created,
    TResult Function()? started,
    TResult Function()? resumed,
    TResult Function()? destroyed,
    TResult Function(Object error, StackTrace stackTrace)? errored,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? created,
    TResult Function()? started,
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
    required TResult Function(_Created value) created,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    TResult Function(_Started value)? started,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Destroyed value)? destroyed,
    TResult Function(_Errored value)? errored,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
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

abstract class _Initial extends EntryState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$_CreatedCopyWith<$Res> {
  factory _$$_CreatedCopyWith(
          _$_Created value, $Res Function(_$_Created) then) =
      __$$_CreatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CreatedCopyWithImpl<$Res> extends _$EntryStateCopyWithImpl<$Res>
    implements _$$_CreatedCopyWith<$Res> {
  __$$_CreatedCopyWithImpl(_$_Created _value, $Res Function(_$_Created) _then)
      : super(_value, (v) => _then(v as _$_Created));

  @override
  _$_Created get _value => super._value as _$_Created;
}

/// @nodoc

class _$_Created extends _Created {
  const _$_Created() : super._();

  @override
  String toString() {
    return 'EntryState.created()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Created);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() created,
    required TResult Function() started,
    required TResult Function() resumed,
    required TResult Function() destroyed,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) {
    return created();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? created,
    TResult Function()? started,
    TResult Function()? resumed,
    TResult Function()? destroyed,
    TResult Function(Object error, StackTrace stackTrace)? errored,
  }) {
    return created?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? created,
    TResult Function()? started,
    TResult Function()? resumed,
    TResult Function()? destroyed,
    TResult Function(Object error, StackTrace stackTrace)? errored,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Created value) created,
    required TResult Function(_Started value) started,
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Destroyed value) destroyed,
    required TResult Function(_Errored value) errored,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    TResult Function(_Started value)? started,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Destroyed value)? destroyed,
    TResult Function(_Errored value)? errored,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    TResult Function(_Started value)? started,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Destroyed value)? destroyed,
    TResult Function(_Errored value)? errored,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class _Created extends EntryState {
  const factory _Created() = _$_Created;
  const _Created._() : super._();
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$EntryStateCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started extends _Started {
  const _$_Started() : super._();

  @override
  String toString() {
    return 'EntryState.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() created,
    required TResult Function() started,
    required TResult Function() resumed,
    required TResult Function() destroyed,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? created,
    TResult Function()? started,
    TResult Function()? resumed,
    TResult Function()? destroyed,
    TResult Function(Object error, StackTrace stackTrace)? errored,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? created,
    TResult Function()? started,
    TResult Function()? resumed,
    TResult Function()? destroyed,
    TResult Function(Object error, StackTrace stackTrace)? errored,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Created value) created,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    TResult Function(_Started value)? started,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Destroyed value)? destroyed,
    TResult Function(_Errored value)? errored,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
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

abstract class _Started extends EntryState {
  const factory _Started() = _$_Started;
  const _Started._() : super._();
}

/// @nodoc
abstract class _$$_ResumedCopyWith<$Res> {
  factory _$$_ResumedCopyWith(
          _$_Resumed value, $Res Function(_$_Resumed) then) =
      __$$_ResumedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResumedCopyWithImpl<$Res> extends _$EntryStateCopyWithImpl<$Res>
    implements _$$_ResumedCopyWith<$Res> {
  __$$_ResumedCopyWithImpl(_$_Resumed _value, $Res Function(_$_Resumed) _then)
      : super(_value, (v) => _then(v as _$_Resumed));

  @override
  _$_Resumed get _value => super._value as _$_Resumed;
}

/// @nodoc

class _$_Resumed extends _Resumed {
  const _$_Resumed() : super._();

  @override
  String toString() {
    return 'EntryState.resumed()';
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
    required TResult Function() created,
    required TResult Function() started,
    required TResult Function() resumed,
    required TResult Function() destroyed,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) {
    return resumed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? created,
    TResult Function()? started,
    TResult Function()? resumed,
    TResult Function()? destroyed,
    TResult Function(Object error, StackTrace stackTrace)? errored,
  }) {
    return resumed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? created,
    TResult Function()? started,
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
    required TResult Function(_Created value) created,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    TResult Function(_Started value)? started,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Destroyed value)? destroyed,
    TResult Function(_Errored value)? errored,
  }) {
    return resumed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
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

abstract class _Resumed extends EntryState {
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
class __$$_DestroyedCopyWithImpl<$Res> extends _$EntryStateCopyWithImpl<$Res>
    implements _$$_DestroyedCopyWith<$Res> {
  __$$_DestroyedCopyWithImpl(
      _$_Destroyed _value, $Res Function(_$_Destroyed) _then)
      : super(_value, (v) => _then(v as _$_Destroyed));

  @override
  _$_Destroyed get _value => super._value as _$_Destroyed;
}

/// @nodoc

class _$_Destroyed extends _Destroyed {
  const _$_Destroyed() : super._();

  @override
  String toString() {
    return 'EntryState.destroyed()';
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
    required TResult Function() created,
    required TResult Function() started,
    required TResult Function() resumed,
    required TResult Function() destroyed,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) {
    return destroyed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? created,
    TResult Function()? started,
    TResult Function()? resumed,
    TResult Function()? destroyed,
    TResult Function(Object error, StackTrace stackTrace)? errored,
  }) {
    return destroyed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? created,
    TResult Function()? started,
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
    required TResult Function(_Created value) created,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    TResult Function(_Started value)? started,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Destroyed value)? destroyed,
    TResult Function(_Errored value)? errored,
  }) {
    return destroyed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
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

abstract class _Destroyed extends EntryState {
  const factory _Destroyed() = _$_Destroyed;
  const _Destroyed._() : super._();
}

/// @nodoc
abstract class _$$_ErroredCopyWith<$Res> {
  factory _$$_ErroredCopyWith(
          _$_Errored value, $Res Function(_$_Errored) then) =
      __$$_ErroredCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$_ErroredCopyWithImpl<$Res> extends _$EntryStateCopyWithImpl<$Res>
    implements _$$_ErroredCopyWith<$Res> {
  __$$_ErroredCopyWithImpl(_$_Errored _value, $Res Function(_$_Errored) _then)
      : super(_value, (v) => _then(v as _$_Errored));

  @override
  _$_Errored get _value => super._value as _$_Errored;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$_Errored(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$_Errored extends _Errored {
  const _$_Errored({required this.error, required this.stackTrace}) : super._();

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'EntryState.errored(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Errored &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$$_ErroredCopyWith<_$_Errored> get copyWith =>
      __$$_ErroredCopyWithImpl<_$_Errored>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() created,
    required TResult Function() started,
    required TResult Function() resumed,
    required TResult Function() destroyed,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) {
    return errored(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? created,
    TResult Function()? started,
    TResult Function()? resumed,
    TResult Function()? destroyed,
    TResult Function(Object error, StackTrace stackTrace)? errored,
  }) {
    return errored?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? created,
    TResult Function()? started,
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
    required TResult Function(_Created value) created,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    TResult Function(_Started value)? started,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Destroyed value)? destroyed,
    TResult Function(_Errored value)? errored,
  }) {
    return errored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
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

abstract class _Errored extends EntryState {
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
