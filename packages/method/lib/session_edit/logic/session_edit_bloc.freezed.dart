// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'session_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SessionEditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String exerciseId) startExercise,
    required TResult Function(String sessionId, int? initialIndex) startSession,
    required TResult Function(Entry entry) updateEntry,
    required TResult Function() stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String exerciseId)? startExercise,
    TResult Function(String sessionId, int? initialIndex)? startSession,
    TResult Function(Entry entry)? updateEntry,
    TResult Function()? stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String exerciseId)? startExercise,
    TResult Function(String sessionId, int? initialIndex)? startSession,
    TResult Function(Entry entry)? updateEntry,
    TResult Function()? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartExercise value) startExercise,
    required TResult Function(_StartSession value) startSession,
    required TResult Function(_UpdateEntry value) updateEntry,
    required TResult Function(_Stop value) stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartExercise value)? startExercise,
    TResult Function(_StartSession value)? startSession,
    TResult Function(_UpdateEntry value)? updateEntry,
    TResult Function(_Stop value)? stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartExercise value)? startExercise,
    TResult Function(_StartSession value)? startSession,
    TResult Function(_UpdateEntry value)? updateEntry,
    TResult Function(_Stop value)? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionEditEventCopyWith<$Res> {
  factory $SessionEditEventCopyWith(
          SessionEditEvent value, $Res Function(SessionEditEvent) then) =
      _$SessionEditEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SessionEditEventCopyWithImpl<$Res>
    implements $SessionEditEventCopyWith<$Res> {
  _$SessionEditEventCopyWithImpl(this._value, this._then);

  final SessionEditEvent _value;
  // ignore: unused_field
  final $Res Function(SessionEditEvent) _then;
}

/// @nodoc
abstract class _$$_StartExerciseCopyWith<$Res> {
  factory _$$_StartExerciseCopyWith(
          _$_StartExercise value, $Res Function(_$_StartExercise) then) =
      __$$_StartExerciseCopyWithImpl<$Res>;
  $Res call({String exerciseId});
}

/// @nodoc
class __$$_StartExerciseCopyWithImpl<$Res>
    extends _$SessionEditEventCopyWithImpl<$Res>
    implements _$$_StartExerciseCopyWith<$Res> {
  __$$_StartExerciseCopyWithImpl(
      _$_StartExercise _value, $Res Function(_$_StartExercise) _then)
      : super(_value, (v) => _then(v as _$_StartExercise));

  @override
  _$_StartExercise get _value => super._value as _$_StartExercise;

  @override
  $Res call({
    Object? exerciseId = freezed,
  }) {
    return _then(_$_StartExercise(
      exerciseId: exerciseId == freezed
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StartExercise extends _StartExercise {
  const _$_StartExercise({required this.exerciseId}) : super._();

  @override
  final String exerciseId;

  @override
  String toString() {
    return 'SessionEditEvent.startExercise(exerciseId: $exerciseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartExercise &&
            const DeepCollectionEquality()
                .equals(other.exerciseId, exerciseId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exerciseId));

  @JsonKey(ignore: true)
  @override
  _$$_StartExerciseCopyWith<_$_StartExercise> get copyWith =>
      __$$_StartExerciseCopyWithImpl<_$_StartExercise>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String exerciseId) startExercise,
    required TResult Function(String sessionId, int? initialIndex) startSession,
    required TResult Function(Entry entry) updateEntry,
    required TResult Function() stop,
  }) {
    return startExercise(exerciseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String exerciseId)? startExercise,
    TResult Function(String sessionId, int? initialIndex)? startSession,
    TResult Function(Entry entry)? updateEntry,
    TResult Function()? stop,
  }) {
    return startExercise?.call(exerciseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String exerciseId)? startExercise,
    TResult Function(String sessionId, int? initialIndex)? startSession,
    TResult Function(Entry entry)? updateEntry,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (startExercise != null) {
      return startExercise(exerciseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartExercise value) startExercise,
    required TResult Function(_StartSession value) startSession,
    required TResult Function(_UpdateEntry value) updateEntry,
    required TResult Function(_Stop value) stop,
  }) {
    return startExercise(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartExercise value)? startExercise,
    TResult Function(_StartSession value)? startSession,
    TResult Function(_UpdateEntry value)? updateEntry,
    TResult Function(_Stop value)? stop,
  }) {
    return startExercise?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartExercise value)? startExercise,
    TResult Function(_StartSession value)? startSession,
    TResult Function(_UpdateEntry value)? updateEntry,
    TResult Function(_Stop value)? stop,
    required TResult orElse(),
  }) {
    if (startExercise != null) {
      return startExercise(this);
    }
    return orElse();
  }
}

abstract class _StartExercise extends SessionEditEvent {
  const factory _StartExercise({required final String exerciseId}) =
      _$_StartExercise;
  const _StartExercise._() : super._();

  String get exerciseId;
  @JsonKey(ignore: true)
  _$$_StartExerciseCopyWith<_$_StartExercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StartSessionCopyWith<$Res> {
  factory _$$_StartSessionCopyWith(
          _$_StartSession value, $Res Function(_$_StartSession) then) =
      __$$_StartSessionCopyWithImpl<$Res>;
  $Res call({String sessionId, int? initialIndex});
}

/// @nodoc
class __$$_StartSessionCopyWithImpl<$Res>
    extends _$SessionEditEventCopyWithImpl<$Res>
    implements _$$_StartSessionCopyWith<$Res> {
  __$$_StartSessionCopyWithImpl(
      _$_StartSession _value, $Res Function(_$_StartSession) _then)
      : super(_value, (v) => _then(v as _$_StartSession));

  @override
  _$_StartSession get _value => super._value as _$_StartSession;

  @override
  $Res call({
    Object? sessionId = freezed,
    Object? initialIndex = freezed,
  }) {
    return _then(_$_StartSession(
      sessionId: sessionId == freezed
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      initialIndex: initialIndex == freezed
          ? _value.initialIndex
          : initialIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_StartSession extends _StartSession {
  const _$_StartSession({required this.sessionId, this.initialIndex})
      : super._();

  @override
  final String sessionId;
  @override
  final int? initialIndex;

  @override
  String toString() {
    return 'SessionEditEvent.startSession(sessionId: $sessionId, initialIndex: $initialIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartSession &&
            const DeepCollectionEquality().equals(other.sessionId, sessionId) &&
            const DeepCollectionEquality()
                .equals(other.initialIndex, initialIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sessionId),
      const DeepCollectionEquality().hash(initialIndex));

  @JsonKey(ignore: true)
  @override
  _$$_StartSessionCopyWith<_$_StartSession> get copyWith =>
      __$$_StartSessionCopyWithImpl<_$_StartSession>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String exerciseId) startExercise,
    required TResult Function(String sessionId, int? initialIndex) startSession,
    required TResult Function(Entry entry) updateEntry,
    required TResult Function() stop,
  }) {
    return startSession(sessionId, initialIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String exerciseId)? startExercise,
    TResult Function(String sessionId, int? initialIndex)? startSession,
    TResult Function(Entry entry)? updateEntry,
    TResult Function()? stop,
  }) {
    return startSession?.call(sessionId, initialIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String exerciseId)? startExercise,
    TResult Function(String sessionId, int? initialIndex)? startSession,
    TResult Function(Entry entry)? updateEntry,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (startSession != null) {
      return startSession(sessionId, initialIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartExercise value) startExercise,
    required TResult Function(_StartSession value) startSession,
    required TResult Function(_UpdateEntry value) updateEntry,
    required TResult Function(_Stop value) stop,
  }) {
    return startSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartExercise value)? startExercise,
    TResult Function(_StartSession value)? startSession,
    TResult Function(_UpdateEntry value)? updateEntry,
    TResult Function(_Stop value)? stop,
  }) {
    return startSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartExercise value)? startExercise,
    TResult Function(_StartSession value)? startSession,
    TResult Function(_UpdateEntry value)? updateEntry,
    TResult Function(_Stop value)? stop,
    required TResult orElse(),
  }) {
    if (startSession != null) {
      return startSession(this);
    }
    return orElse();
  }
}

abstract class _StartSession extends SessionEditEvent {
  const factory _StartSession(
      {required final String sessionId,
      final int? initialIndex}) = _$_StartSession;
  const _StartSession._() : super._();

  String get sessionId;
  int? get initialIndex;
  @JsonKey(ignore: true)
  _$$_StartSessionCopyWith<_$_StartSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateEntryCopyWith<$Res> {
  factory _$$_UpdateEntryCopyWith(
          _$_UpdateEntry value, $Res Function(_$_UpdateEntry) then) =
      __$$_UpdateEntryCopyWithImpl<$Res>;
  $Res call({Entry entry});

  $EntryCopyWith<$Res> get entry;
}

/// @nodoc
class __$$_UpdateEntryCopyWithImpl<$Res>
    extends _$SessionEditEventCopyWithImpl<$Res>
    implements _$$_UpdateEntryCopyWith<$Res> {
  __$$_UpdateEntryCopyWithImpl(
      _$_UpdateEntry _value, $Res Function(_$_UpdateEntry) _then)
      : super(_value, (v) => _then(v as _$_UpdateEntry));

  @override
  _$_UpdateEntry get _value => super._value as _$_UpdateEntry;

  @override
  $Res call({
    Object? entry = freezed,
  }) {
    return _then(_$_UpdateEntry(
      entry: entry == freezed
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as Entry,
    ));
  }

  @override
  $EntryCopyWith<$Res> get entry {
    return $EntryCopyWith<$Res>(_value.entry, (value) {
      return _then(_value.copyWith(entry: value));
    });
  }
}

/// @nodoc

class _$_UpdateEntry extends _UpdateEntry {
  const _$_UpdateEntry({required this.entry}) : super._();

  @override
  final Entry entry;

  @override
  String toString() {
    return 'SessionEditEvent.updateEntry(entry: $entry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateEntry &&
            const DeepCollectionEquality().equals(other.entry, entry));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(entry));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateEntryCopyWith<_$_UpdateEntry> get copyWith =>
      __$$_UpdateEntryCopyWithImpl<_$_UpdateEntry>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String exerciseId) startExercise,
    required TResult Function(String sessionId, int? initialIndex) startSession,
    required TResult Function(Entry entry) updateEntry,
    required TResult Function() stop,
  }) {
    return updateEntry(entry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String exerciseId)? startExercise,
    TResult Function(String sessionId, int? initialIndex)? startSession,
    TResult Function(Entry entry)? updateEntry,
    TResult Function()? stop,
  }) {
    return updateEntry?.call(entry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String exerciseId)? startExercise,
    TResult Function(String sessionId, int? initialIndex)? startSession,
    TResult Function(Entry entry)? updateEntry,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (updateEntry != null) {
      return updateEntry(entry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartExercise value) startExercise,
    required TResult Function(_StartSession value) startSession,
    required TResult Function(_UpdateEntry value) updateEntry,
    required TResult Function(_Stop value) stop,
  }) {
    return updateEntry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartExercise value)? startExercise,
    TResult Function(_StartSession value)? startSession,
    TResult Function(_UpdateEntry value)? updateEntry,
    TResult Function(_Stop value)? stop,
  }) {
    return updateEntry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartExercise value)? startExercise,
    TResult Function(_StartSession value)? startSession,
    TResult Function(_UpdateEntry value)? updateEntry,
    TResult Function(_Stop value)? stop,
    required TResult orElse(),
  }) {
    if (updateEntry != null) {
      return updateEntry(this);
    }
    return orElse();
  }
}

abstract class _UpdateEntry extends SessionEditEvent {
  const factory _UpdateEntry({required final Entry entry}) = _$_UpdateEntry;
  const _UpdateEntry._() : super._();

  Entry get entry;
  @JsonKey(ignore: true)
  _$$_UpdateEntryCopyWith<_$_UpdateEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StopCopyWith<$Res> {
  factory _$$_StopCopyWith(_$_Stop value, $Res Function(_$_Stop) then) =
      __$$_StopCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StopCopyWithImpl<$Res> extends _$SessionEditEventCopyWithImpl<$Res>
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
    return 'SessionEditEvent.stop()';
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
    required TResult Function(String exerciseId) startExercise,
    required TResult Function(String sessionId, int? initialIndex) startSession,
    required TResult Function(Entry entry) updateEntry,
    required TResult Function() stop,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String exerciseId)? startExercise,
    TResult Function(String sessionId, int? initialIndex)? startSession,
    TResult Function(Entry entry)? updateEntry,
    TResult Function()? stop,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String exerciseId)? startExercise,
    TResult Function(String sessionId, int? initialIndex)? startSession,
    TResult Function(Entry entry)? updateEntry,
    TResult Function()? stop,
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
    required TResult Function(_StartExercise value) startExercise,
    required TResult Function(_StartSession value) startSession,
    required TResult Function(_UpdateEntry value) updateEntry,
    required TResult Function(_Stop value) stop,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartExercise value)? startExercise,
    TResult Function(_StartSession value)? startSession,
    TResult Function(_UpdateEntry value)? updateEntry,
    TResult Function(_Stop value)? stop,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartExercise value)? startExercise,
    TResult Function(_StartSession value)? startSession,
    TResult Function(_UpdateEntry value)? updateEntry,
    TResult Function(_Stop value)? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class _Stop extends SessionEditEvent {
  const factory _Stop() = _$_Stop;
  const _Stop._() : super._();
}

/// @nodoc
mixin _$SessionEditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Session session) started,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Session session)? started,
    TResult Function(Object error, StackTrace stackTrace)? errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Session session)? started,
    TResult Function(Object error, StackTrace stackTrace)? errored,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Started value) started,
    required TResult Function(_Errored value) errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Errored value)? errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Errored value)? errored,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionEditStateCopyWith<$Res> {
  factory $SessionEditStateCopyWith(
          SessionEditState value, $Res Function(SessionEditState) then) =
      _$SessionEditStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SessionEditStateCopyWithImpl<$Res>
    implements $SessionEditStateCopyWith<$Res> {
  _$SessionEditStateCopyWithImpl(this._value, this._then);

  final SessionEditState _value;
  // ignore: unused_field
  final $Res Function(SessionEditState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SessionEditStateCopyWithImpl<$Res>
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
    return 'SessionEditState.initial()';
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
    required TResult Function(Session session) started,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Session session)? started,
    TResult Function(Object error, StackTrace stackTrace)? errored,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Session session)? started,
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
    required TResult Function(_Errored value) errored,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Errored value)? errored,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Errored value)? errored,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends SessionEditState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  $Res call({Session session});

  $SessionCopyWith<$Res> get session;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$SessionEditStateCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;

  @override
  $Res call({
    Object? session = freezed,
  }) {
    return _then(_$_Started(
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

class _$_Started extends _Started {
  const _$_Started({required this.session}) : super._();

  @override
  final Session session;

  @override
  String toString() {
    return 'SessionEditState.started(session: $session)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            const DeepCollectionEquality().equals(other.session, session));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(session));

  @JsonKey(ignore: true)
  @override
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Session session) started,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) {
    return started(session);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Session session)? started,
    TResult Function(Object error, StackTrace stackTrace)? errored,
  }) {
    return started?.call(session);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Session session)? started,
    TResult Function(Object error, StackTrace stackTrace)? errored,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(session);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Started value) started,
    required TResult Function(_Errored value) errored,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Errored value)? errored,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Errored value)? errored,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started extends SessionEditState {
  const factory _Started({required final Session session}) = _$_Started;
  const _Started._() : super._();

  Session get session;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$SessionEditStateCopyWithImpl<$Res>
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
    return 'SessionEditState.errored(error: $error, stackTrace: $stackTrace)';
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
    required TResult Function(Session session) started,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) {
    return errored(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Session session)? started,
    TResult Function(Object error, StackTrace stackTrace)? errored,
  }) {
    return errored?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Session session)? started,
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
    required TResult Function(_Errored value) errored,
  }) {
    return errored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Errored value)? errored,
  }) {
    return errored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Errored value)? errored,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored(this);
    }
    return orElse();
  }
}

abstract class _Errored extends SessionEditState {
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
