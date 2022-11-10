// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'session_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SessionListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(Session session) selectSession,
    required TResult Function(Session session) deleteSession,
    required TResult Function() destroy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(Session session)? selectSession,
    TResult Function(Session session)? deleteSession,
    TResult Function()? destroy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(Session session)? selectSession,
    TResult Function(Session session)? deleteSession,
    TResult Function()? destroy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_SelectSession value) selectSession,
    required TResult Function(_DeleteSession value) deleteSession,
    required TResult Function(_Destroy value) destroy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_SelectSession value)? selectSession,
    TResult Function(_DeleteSession value)? deleteSession,
    TResult Function(_Destroy value)? destroy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_SelectSession value)? selectSession,
    TResult Function(_DeleteSession value)? deleteSession,
    TResult Function(_Destroy value)? destroy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionListEventCopyWith<$Res> {
  factory $SessionListEventCopyWith(
          SessionListEvent value, $Res Function(SessionListEvent) then) =
      _$SessionListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SessionListEventCopyWithImpl<$Res>
    implements $SessionListEventCopyWith<$Res> {
  _$SessionListEventCopyWithImpl(this._value, this._then);

  final SessionListEvent _value;
  // ignore: unused_field
  final $Res Function(SessionListEvent) _then;
}

/// @nodoc
abstract class _$$_StartCopyWith<$Res> {
  factory _$$_StartCopyWith(_$_Start value, $Res Function(_$_Start) then) =
      __$$_StartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartCopyWithImpl<$Res> extends _$SessionListEventCopyWithImpl<$Res>
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
    return 'SessionListEvent.start()';
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
    required TResult Function(Session session) selectSession,
    required TResult Function(Session session) deleteSession,
    required TResult Function() destroy,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(Session session)? selectSession,
    TResult Function(Session session)? deleteSession,
    TResult Function()? destroy,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(Session session)? selectSession,
    TResult Function(Session session)? deleteSession,
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
    required TResult Function(_Start value) start,
    required TResult Function(_SelectSession value) selectSession,
    required TResult Function(_DeleteSession value) deleteSession,
    required TResult Function(_Destroy value) destroy,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_SelectSession value)? selectSession,
    TResult Function(_DeleteSession value)? deleteSession,
    TResult Function(_Destroy value)? destroy,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_SelectSession value)? selectSession,
    TResult Function(_DeleteSession value)? deleteSession,
    TResult Function(_Destroy value)? destroy,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _Start extends SessionListEvent {
  const factory _Start() = _$_Start;
  const _Start._() : super._();
}

/// @nodoc
abstract class _$$_SelectSessionCopyWith<$Res> {
  factory _$$_SelectSessionCopyWith(
          _$_SelectSession value, $Res Function(_$_SelectSession) then) =
      __$$_SelectSessionCopyWithImpl<$Res>;
  $Res call({Session session});

  $SessionCopyWith<$Res> get session;
}

/// @nodoc
class __$$_SelectSessionCopyWithImpl<$Res>
    extends _$SessionListEventCopyWithImpl<$Res>
    implements _$$_SelectSessionCopyWith<$Res> {
  __$$_SelectSessionCopyWithImpl(
      _$_SelectSession _value, $Res Function(_$_SelectSession) _then)
      : super(_value, (v) => _then(v as _$_SelectSession));

  @override
  _$_SelectSession get _value => super._value as _$_SelectSession;

  @override
  $Res call({
    Object? session = freezed,
  }) {
    return _then(_$_SelectSession(
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as Session,
    ));
  }

  @override
  $SessionCopyWith<$Res> get session {
    return $SessionCopyWith<$Res>(_value.session, (value) {
      return _then(_value.copyWith(session: value));
    });
  }
}

/// @nodoc

class _$_SelectSession extends _SelectSession {
  const _$_SelectSession({required this.session}) : super._();

  @override
  final Session session;

  @override
  String toString() {
    return 'SessionListEvent.selectSession(session: $session)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectSession &&
            const DeepCollectionEquality().equals(other.session, session));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(session));

  @JsonKey(ignore: true)
  @override
  _$$_SelectSessionCopyWith<_$_SelectSession> get copyWith =>
      __$$_SelectSessionCopyWithImpl<_$_SelectSession>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(Session session) selectSession,
    required TResult Function(Session session) deleteSession,
    required TResult Function() destroy,
  }) {
    return selectSession(session);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(Session session)? selectSession,
    TResult Function(Session session)? deleteSession,
    TResult Function()? destroy,
  }) {
    return selectSession?.call(session);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(Session session)? selectSession,
    TResult Function(Session session)? deleteSession,
    TResult Function()? destroy,
    required TResult orElse(),
  }) {
    if (selectSession != null) {
      return selectSession(session);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_SelectSession value) selectSession,
    required TResult Function(_DeleteSession value) deleteSession,
    required TResult Function(_Destroy value) destroy,
  }) {
    return selectSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_SelectSession value)? selectSession,
    TResult Function(_DeleteSession value)? deleteSession,
    TResult Function(_Destroy value)? destroy,
  }) {
    return selectSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_SelectSession value)? selectSession,
    TResult Function(_DeleteSession value)? deleteSession,
    TResult Function(_Destroy value)? destroy,
    required TResult orElse(),
  }) {
    if (selectSession != null) {
      return selectSession(this);
    }
    return orElse();
  }
}

abstract class _SelectSession extends SessionListEvent {
  const factory _SelectSession({required final Session session}) =
      _$_SelectSession;
  const _SelectSession._() : super._();

  Session get session;
  @JsonKey(ignore: true)
  _$$_SelectSessionCopyWith<_$_SelectSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteSessionCopyWith<$Res> {
  factory _$$_DeleteSessionCopyWith(
          _$_DeleteSession value, $Res Function(_$_DeleteSession) then) =
      __$$_DeleteSessionCopyWithImpl<$Res>;
  $Res call({Session session});

  $SessionCopyWith<$Res> get session;
}

/// @nodoc
class __$$_DeleteSessionCopyWithImpl<$Res>
    extends _$SessionListEventCopyWithImpl<$Res>
    implements _$$_DeleteSessionCopyWith<$Res> {
  __$$_DeleteSessionCopyWithImpl(
      _$_DeleteSession _value, $Res Function(_$_DeleteSession) _then)
      : super(_value, (v) => _then(v as _$_DeleteSession));

  @override
  _$_DeleteSession get _value => super._value as _$_DeleteSession;

  @override
  $Res call({
    Object? session = freezed,
  }) {
    return _then(_$_DeleteSession(
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as Session,
    ));
  }

  @override
  $SessionCopyWith<$Res> get session {
    return $SessionCopyWith<$Res>(_value.session, (value) {
      return _then(_value.copyWith(session: value));
    });
  }
}

/// @nodoc

class _$_DeleteSession extends _DeleteSession {
  const _$_DeleteSession({required this.session}) : super._();

  @override
  final Session session;

  @override
  String toString() {
    return 'SessionListEvent.deleteSession(session: $session)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteSession &&
            const DeepCollectionEquality().equals(other.session, session));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(session));

  @JsonKey(ignore: true)
  @override
  _$$_DeleteSessionCopyWith<_$_DeleteSession> get copyWith =>
      __$$_DeleteSessionCopyWithImpl<_$_DeleteSession>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(Session session) selectSession,
    required TResult Function(Session session) deleteSession,
    required TResult Function() destroy,
  }) {
    return deleteSession(session);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(Session session)? selectSession,
    TResult Function(Session session)? deleteSession,
    TResult Function()? destroy,
  }) {
    return deleteSession?.call(session);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(Session session)? selectSession,
    TResult Function(Session session)? deleteSession,
    TResult Function()? destroy,
    required TResult orElse(),
  }) {
    if (deleteSession != null) {
      return deleteSession(session);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_SelectSession value) selectSession,
    required TResult Function(_DeleteSession value) deleteSession,
    required TResult Function(_Destroy value) destroy,
  }) {
    return deleteSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_SelectSession value)? selectSession,
    TResult Function(_DeleteSession value)? deleteSession,
    TResult Function(_Destroy value)? destroy,
  }) {
    return deleteSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_SelectSession value)? selectSession,
    TResult Function(_DeleteSession value)? deleteSession,
    TResult Function(_Destroy value)? destroy,
    required TResult orElse(),
  }) {
    if (deleteSession != null) {
      return deleteSession(this);
    }
    return orElse();
  }
}

abstract class _DeleteSession extends SessionListEvent {
  const factory _DeleteSession({required final Session session}) =
      _$_DeleteSession;
  const _DeleteSession._() : super._();

  Session get session;
  @JsonKey(ignore: true)
  _$$_DeleteSessionCopyWith<_$_DeleteSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DestroyCopyWith<$Res> {
  factory _$$_DestroyCopyWith(
          _$_Destroy value, $Res Function(_$_Destroy) then) =
      __$$_DestroyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DestroyCopyWithImpl<$Res>
    extends _$SessionListEventCopyWithImpl<$Res>
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
    return 'SessionListEvent.destroy()';
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
    required TResult Function() start,
    required TResult Function(Session session) selectSession,
    required TResult Function(Session session) deleteSession,
    required TResult Function() destroy,
  }) {
    return destroy();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(Session session)? selectSession,
    TResult Function(Session session)? deleteSession,
    TResult Function()? destroy,
  }) {
    return destroy?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(Session session)? selectSession,
    TResult Function(Session session)? deleteSession,
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
    required TResult Function(_Start value) start,
    required TResult Function(_SelectSession value) selectSession,
    required TResult Function(_DeleteSession value) deleteSession,
    required TResult Function(_Destroy value) destroy,
  }) {
    return destroy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_SelectSession value)? selectSession,
    TResult Function(_DeleteSession value)? deleteSession,
    TResult Function(_Destroy value)? destroy,
  }) {
    return destroy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_SelectSession value)? selectSession,
    TResult Function(_DeleteSession value)? deleteSession,
    TResult Function(_Destroy value)? destroy,
    required TResult orElse(),
  }) {
    if (destroy != null) {
      return destroy(this);
    }
    return orElse();
  }
}

abstract class _Destroy extends SessionListEvent {
  const factory _Destroy() = _$_Destroy;
  const _Destroy._() : super._();
}

/// @nodoc
mixin _$SessionListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Session> sessions) started,
    required TResult Function() destroyed,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Session> sessions)? started,
    TResult Function()? destroyed,
    TResult Function(Object error, StackTrace stackTrace)? errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Session> sessions)? started,
    TResult Function()? destroyed,
    TResult Function(Object error, StackTrace stackTrace)? errored,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Started value) started,
    required TResult Function(_Destroyed value) destroyed,
    required TResult Function(_Errored value) errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Destroyed value)? destroyed,
    TResult Function(_Errored value)? errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Destroyed value)? destroyed,
    TResult Function(_Errored value)? errored,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionListStateCopyWith<$Res> {
  factory $SessionListStateCopyWith(
          SessionListState value, $Res Function(SessionListState) then) =
      _$SessionListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SessionListStateCopyWithImpl<$Res>
    implements $SessionListStateCopyWith<$Res> {
  _$SessionListStateCopyWithImpl(this._value, this._then);

  final SessionListState _value;
  // ignore: unused_field
  final $Res Function(SessionListState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SessionListStateCopyWithImpl<$Res>
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
    required TResult Function(List<Session> sessions) started,
    required TResult Function() destroyed,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Session> sessions)? started,
    TResult Function()? destroyed,
    TResult Function(Object error, StackTrace stackTrace)? errored,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Session> sessions)? started,
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
    required TResult Function(_Destroyed value) destroyed,
    required TResult Function(_Errored value) errored,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Destroyed value)? destroyed,
    TResult Function(_Errored value)? errored,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
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

abstract class _Initial extends SessionListState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  $Res call({List<Session> sessions});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$SessionListStateCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;

  @override
  $Res call({
    Object? sessions = freezed,
  }) {
    return _then(_$_Started(
      sessions: sessions == freezed
          ? _value._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<Session>,
    ));
  }
}

/// @nodoc

class _$_Started extends _Started {
  const _$_Started({required final List<Session> sessions})
      : _sessions = sessions,
        super._();

  final List<Session> _sessions;
  @override
  List<Session> get sessions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            const DeepCollectionEquality().equals(other._sessions, _sessions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sessions));

  @JsonKey(ignore: true)
  @override
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Session> sessions) started,
    required TResult Function() destroyed,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) {
    return started(sessions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Session> sessions)? started,
    TResult Function()? destroyed,
    TResult Function(Object error, StackTrace stackTrace)? errored,
  }) {
    return started?.call(sessions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Session> sessions)? started,
    TResult Function()? destroyed,
    TResult Function(Object error, StackTrace stackTrace)? errored,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(sessions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Started value) started,
    required TResult Function(_Destroyed value) destroyed,
    required TResult Function(_Errored value) errored,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Destroyed value)? destroyed,
    TResult Function(_Errored value)? errored,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
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

abstract class _Started extends SessionListState {
  const factory _Started({required final List<Session> sessions}) = _$_Started;
  const _Started._() : super._();

  List<Session> get sessions;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DestroyedCopyWith<$Res> {
  factory _$$_DestroyedCopyWith(
          _$_Destroyed value, $Res Function(_$_Destroyed) then) =
      __$$_DestroyedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DestroyedCopyWithImpl<$Res>
    extends _$SessionListStateCopyWithImpl<$Res>
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
    required TResult Function(List<Session> sessions) started,
    required TResult Function() destroyed,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) {
    return destroyed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Session> sessions)? started,
    TResult Function()? destroyed,
    TResult Function(Object error, StackTrace stackTrace)? errored,
  }) {
    return destroyed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Session> sessions)? started,
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
    required TResult Function(_Destroyed value) destroyed,
    required TResult Function(_Errored value) errored,
  }) {
    return destroyed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Destroyed value)? destroyed,
    TResult Function(_Errored value)? errored,
  }) {
    return destroyed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
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

abstract class _Destroyed extends SessionListState {
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
class __$$_ErroredCopyWithImpl<$Res>
    extends _$SessionListStateCopyWithImpl<$Res>
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
    required TResult Function(List<Session> sessions) started,
    required TResult Function() destroyed,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) {
    return errored(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Session> sessions)? started,
    TResult Function()? destroyed,
    TResult Function(Object error, StackTrace stackTrace)? errored,
  }) {
    return errored?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Session> sessions)? started,
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
    required TResult Function(_Destroyed value) destroyed,
    required TResult Function(_Errored value) errored,
  }) {
    return errored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Destroyed value)? destroyed,
    TResult Function(_Errored value)? errored,
  }) {
    return errored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
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

abstract class _Errored extends SessionListState {
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
