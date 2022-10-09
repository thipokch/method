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
    required TResult Function() load,
    required TResult Function(Exercise exercise) loadByExercise,
    required TResult Function(List<Session> sessions) update,
    required TResult Function(Session session) delete,
    required TResult Function() close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Exercise exercise)? loadByExercise,
    TResult Function(List<Session> sessions)? update,
    TResult Function(Session session)? delete,
    TResult Function()? close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Exercise exercise)? loadByExercise,
    TResult Function(List<Session> sessions)? update,
    TResult Function(Session session)? delete,
    TResult Function()? close,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_LoadByExercise value) loadByExercise,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Close value) close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadByExercise value)? loadByExercise,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Close value)? close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadByExercise value)? loadByExercise,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Close value)? close,
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
abstract class _$$_LoadCopyWith<$Res> {
  factory _$$_LoadCopyWith(_$_Load value, $Res Function(_$_Load) then) =
      __$$_LoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadCopyWithImpl<$Res> extends _$SessionListEventCopyWithImpl<$Res>
    implements _$$_LoadCopyWith<$Res> {
  __$$_LoadCopyWithImpl(_$_Load _value, $Res Function(_$_Load) _then)
      : super(_value, (v) => _then(v as _$_Load));

  @override
  _$_Load get _value => super._value as _$_Load;
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load();

  @override
  String toString() {
    return 'SessionListEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Load);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Exercise exercise) loadByExercise,
    required TResult Function(List<Session> sessions) update,
    required TResult Function(Session session) delete,
    required TResult Function() close,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Exercise exercise)? loadByExercise,
    TResult Function(List<Session> sessions)? update,
    TResult Function(Session session)? delete,
    TResult Function()? close,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Exercise exercise)? loadByExercise,
    TResult Function(List<Session> sessions)? update,
    TResult Function(Session session)? delete,
    TResult Function()? close,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_LoadByExercise value) loadByExercise,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Close value) close,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadByExercise value)? loadByExercise,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Close value)? close,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadByExercise value)? loadByExercise,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Close value)? close,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements SessionListEvent {
  const factory _Load() = _$_Load;
}

/// @nodoc
abstract class _$$_LoadByExerciseCopyWith<$Res> {
  factory _$$_LoadByExerciseCopyWith(
          _$_LoadByExercise value, $Res Function(_$_LoadByExercise) then) =
      __$$_LoadByExerciseCopyWithImpl<$Res>;
  $Res call({Exercise exercise});

  $ExerciseCopyWith<$Res> get exercise;
}

/// @nodoc
class __$$_LoadByExerciseCopyWithImpl<$Res>
    extends _$SessionListEventCopyWithImpl<$Res>
    implements _$$_LoadByExerciseCopyWith<$Res> {
  __$$_LoadByExerciseCopyWithImpl(
      _$_LoadByExercise _value, $Res Function(_$_LoadByExercise) _then)
      : super(_value, (v) => _then(v as _$_LoadByExercise));

  @override
  _$_LoadByExercise get _value => super._value as _$_LoadByExercise;

  @override
  $Res call({
    Object? exercise = freezed,
  }) {
    return _then(_$_LoadByExercise(
      exercise: exercise == freezed
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as Exercise,
    ));
  }

  @override
  $ExerciseCopyWith<$Res> get exercise {
    return $ExerciseCopyWith<$Res>(_value.exercise, (value) {
      return _then(_value.copyWith(exercise: value));
    });
  }
}

/// @nodoc

class _$_LoadByExercise implements _LoadByExercise {
  const _$_LoadByExercise({required this.exercise});

  @override
  final Exercise exercise;

  @override
  String toString() {
    return 'SessionListEvent.loadByExercise(exercise: $exercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadByExercise &&
            const DeepCollectionEquality().equals(other.exercise, exercise));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exercise));

  @JsonKey(ignore: true)
  @override
  _$$_LoadByExerciseCopyWith<_$_LoadByExercise> get copyWith =>
      __$$_LoadByExerciseCopyWithImpl<_$_LoadByExercise>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Exercise exercise) loadByExercise,
    required TResult Function(List<Session> sessions) update,
    required TResult Function(Session session) delete,
    required TResult Function() close,
  }) {
    return loadByExercise(exercise);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Exercise exercise)? loadByExercise,
    TResult Function(List<Session> sessions)? update,
    TResult Function(Session session)? delete,
    TResult Function()? close,
  }) {
    return loadByExercise?.call(exercise);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Exercise exercise)? loadByExercise,
    TResult Function(List<Session> sessions)? update,
    TResult Function(Session session)? delete,
    TResult Function()? close,
    required TResult orElse(),
  }) {
    if (loadByExercise != null) {
      return loadByExercise(exercise);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_LoadByExercise value) loadByExercise,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Close value) close,
  }) {
    return loadByExercise(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadByExercise value)? loadByExercise,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Close value)? close,
  }) {
    return loadByExercise?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadByExercise value)? loadByExercise,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Close value)? close,
    required TResult orElse(),
  }) {
    if (loadByExercise != null) {
      return loadByExercise(this);
    }
    return orElse();
  }
}

abstract class _LoadByExercise implements SessionListEvent {
  const factory _LoadByExercise({required final Exercise exercise}) =
      _$_LoadByExercise;

  Exercise get exercise;
  @JsonKey(ignore: true)
  _$$_LoadByExerciseCopyWith<_$_LoadByExercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateCopyWith<$Res> {
  factory _$$_UpdateCopyWith(_$_Update value, $Res Function(_$_Update) then) =
      __$$_UpdateCopyWithImpl<$Res>;
  $Res call({List<Session> sessions});
}

/// @nodoc
class __$$_UpdateCopyWithImpl<$Res> extends _$SessionListEventCopyWithImpl<$Res>
    implements _$$_UpdateCopyWith<$Res> {
  __$$_UpdateCopyWithImpl(_$_Update _value, $Res Function(_$_Update) _then)
      : super(_value, (v) => _then(v as _$_Update));

  @override
  _$_Update get _value => super._value as _$_Update;

  @override
  $Res call({
    Object? sessions = freezed,
  }) {
    return _then(_$_Update(
      sessions: sessions == freezed
          ? _value._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<Session>,
    ));
  }
}

/// @nodoc

class _$_Update implements _Update {
  const _$_Update({required final List<Session> sessions})
      : _sessions = sessions;

  final List<Session> _sessions;
  @override
  List<Session> get sessions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  @override
  String toString() {
    return 'SessionListEvent.update(sessions: $sessions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Update &&
            const DeepCollectionEquality().equals(other._sessions, _sessions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sessions));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      __$$_UpdateCopyWithImpl<_$_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Exercise exercise) loadByExercise,
    required TResult Function(List<Session> sessions) update,
    required TResult Function(Session session) delete,
    required TResult Function() close,
  }) {
    return update(sessions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Exercise exercise)? loadByExercise,
    TResult Function(List<Session> sessions)? update,
    TResult Function(Session session)? delete,
    TResult Function()? close,
  }) {
    return update?.call(sessions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Exercise exercise)? loadByExercise,
    TResult Function(List<Session> sessions)? update,
    TResult Function(Session session)? delete,
    TResult Function()? close,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(sessions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_LoadByExercise value) loadByExercise,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Close value) close,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadByExercise value)? loadByExercise,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Close value)? close,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadByExercise value)? loadByExercise,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Close value)? close,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements SessionListEvent {
  const factory _Update({required final List<Session> sessions}) = _$_Update;

  List<Session> get sessions;
  @JsonKey(ignore: true)
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteCopyWith<$Res> {
  factory _$$_DeleteCopyWith(_$_Delete value, $Res Function(_$_Delete) then) =
      __$$_DeleteCopyWithImpl<$Res>;
  $Res call({Session session});

  $SessionCopyWith<$Res> get session;
}

/// @nodoc
class __$$_DeleteCopyWithImpl<$Res> extends _$SessionListEventCopyWithImpl<$Res>
    implements _$$_DeleteCopyWith<$Res> {
  __$$_DeleteCopyWithImpl(_$_Delete _value, $Res Function(_$_Delete) _then)
      : super(_value, (v) => _then(v as _$_Delete));

  @override
  _$_Delete get _value => super._value as _$_Delete;

  @override
  $Res call({
    Object? session = freezed,
  }) {
    return _then(_$_Delete(
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

class _$_Delete implements _Delete {
  const _$_Delete({required this.session});

  @override
  final Session session;

  @override
  String toString() {
    return 'SessionListEvent.delete(session: $session)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Delete &&
            const DeepCollectionEquality().equals(other.session, session));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(session));

  @JsonKey(ignore: true)
  @override
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      __$$_DeleteCopyWithImpl<_$_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Exercise exercise) loadByExercise,
    required TResult Function(List<Session> sessions) update,
    required TResult Function(Session session) delete,
    required TResult Function() close,
  }) {
    return delete(session);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Exercise exercise)? loadByExercise,
    TResult Function(List<Session> sessions)? update,
    TResult Function(Session session)? delete,
    TResult Function()? close,
  }) {
    return delete?.call(session);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Exercise exercise)? loadByExercise,
    TResult Function(List<Session> sessions)? update,
    TResult Function(Session session)? delete,
    TResult Function()? close,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(session);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_LoadByExercise value) loadByExercise,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Close value) close,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadByExercise value)? loadByExercise,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Close value)? close,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadByExercise value)? loadByExercise,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Close value)? close,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements SessionListEvent {
  const factory _Delete({required final Session session}) = _$_Delete;

  Session get session;
  @JsonKey(ignore: true)
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CloseCopyWith<$Res> {
  factory _$$_CloseCopyWith(_$_Close value, $Res Function(_$_Close) then) =
      __$$_CloseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CloseCopyWithImpl<$Res> extends _$SessionListEventCopyWithImpl<$Res>
    implements _$$_CloseCopyWith<$Res> {
  __$$_CloseCopyWithImpl(_$_Close _value, $Res Function(_$_Close) _then)
      : super(_value, (v) => _then(v as _$_Close));

  @override
  _$_Close get _value => super._value as _$_Close;
}

/// @nodoc

class _$_Close implements _Close {
  const _$_Close();

  @override
  String toString() {
    return 'SessionListEvent.close()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Close);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Exercise exercise) loadByExercise,
    required TResult Function(List<Session> sessions) update,
    required TResult Function(Session session) delete,
    required TResult Function() close,
  }) {
    return close();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Exercise exercise)? loadByExercise,
    TResult Function(List<Session> sessions)? update,
    TResult Function(Session session)? delete,
    TResult Function()? close,
  }) {
    return close?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Exercise exercise)? loadByExercise,
    TResult Function(List<Session> sessions)? update,
    TResult Function(Session session)? delete,
    TResult Function()? close,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_LoadByExercise value) loadByExercise,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Close value) close,
  }) {
    return close(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadByExercise value)? loadByExercise,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Close value)? close,
  }) {
    return close?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadByExercise value)? loadByExercise,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Close value)? close,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close(this);
    }
    return orElse();
  }
}

abstract class _Close implements SessionListEvent {
  const factory _Close() = _$_Close;
}

/// @nodoc
mixin _$SessionListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Session> sessions) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Session> sessions)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Session> sessions)? loaded,
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

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SessionListState.initial()';
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
    required TResult Function(List<Session> sessions) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Session> sessions)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Session> sessions)? loaded,
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

abstract class _Initial implements SessionListState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  $Res call({List<Session> sessions});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res> extends _$SessionListStateCopyWithImpl<$Res>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, (v) => _then(v as _$_Loaded));

  @override
  _$_Loaded get _value => super._value as _$_Loaded;

  @override
  $Res call({
    Object? sessions = freezed,
  }) {
    return _then(_$_Loaded(
      sessions: sessions == freezed
          ? _value._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<Session>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({required final List<Session> sessions})
      : _sessions = sessions;

  final List<Session> _sessions;
  @override
  List<Session> get sessions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  @override
  String toString() {
    return 'SessionListState.loaded(sessions: $sessions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._sessions, _sessions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sessions));

  @JsonKey(ignore: true)
  @override
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Session> sessions) loaded,
  }) {
    return loaded(sessions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Session> sessions)? loaded,
  }) {
    return loaded?.call(sessions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Session> sessions)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(sessions);
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

abstract class _Loaded implements SessionListState {
  const factory _Loaded({required final List<Session> sessions}) = _$_Loaded;

  List<Session> get sessions;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}
