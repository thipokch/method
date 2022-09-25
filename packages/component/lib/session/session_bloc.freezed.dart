// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'session_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SessionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exercise exercise) loadExercise,
    required TResult Function() closeExercise,
    required TResult Function(Session session) loadSession,
    required TResult Function(Entry entry) addData,
    required TResult Function(Entry entry) updateData,
    required TResult Function(Entry entry) deleteData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Exercise exercise)? loadExercise,
    TResult Function()? closeExercise,
    TResult Function(Session session)? loadSession,
    TResult Function(Entry entry)? addData,
    TResult Function(Entry entry)? updateData,
    TResult Function(Entry entry)? deleteData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exercise exercise)? loadExercise,
    TResult Function()? closeExercise,
    TResult Function(Session session)? loadSession,
    TResult Function(Entry entry)? addData,
    TResult Function(Entry entry)? updateData,
    TResult Function(Entry entry)? deleteData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadExercise value) loadExercise,
    required TResult Function(_CloseExercise value) closeExercise,
    required TResult Function(_LoadSession value) loadSession,
    required TResult Function(_AddData value) addData,
    required TResult Function(_UpdateData value) updateData,
    required TResult Function(_DeleteData value) deleteData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadExercise value)? loadExercise,
    TResult Function(_CloseExercise value)? closeExercise,
    TResult Function(_LoadSession value)? loadSession,
    TResult Function(_AddData value)? addData,
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_DeleteData value)? deleteData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadExercise value)? loadExercise,
    TResult Function(_CloseExercise value)? closeExercise,
    TResult Function(_LoadSession value)? loadSession,
    TResult Function(_AddData value)? addData,
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_DeleteData value)? deleteData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionEventCopyWith<$Res> {
  factory $SessionEventCopyWith(
          SessionEvent value, $Res Function(SessionEvent) then) =
      _$SessionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SessionEventCopyWithImpl<$Res> implements $SessionEventCopyWith<$Res> {
  _$SessionEventCopyWithImpl(this._value, this._then);

  final SessionEvent _value;
  // ignore: unused_field
  final $Res Function(SessionEvent) _then;
}

/// @nodoc
abstract class _$$_LoadExerciseCopyWith<$Res> {
  factory _$$_LoadExerciseCopyWith(
          _$_LoadExercise value, $Res Function(_$_LoadExercise) then) =
      __$$_LoadExerciseCopyWithImpl<$Res>;
  $Res call({Exercise exercise});

  $ExerciseCopyWith<$Res> get exercise;
}

/// @nodoc
class __$$_LoadExerciseCopyWithImpl<$Res>
    extends _$SessionEventCopyWithImpl<$Res>
    implements _$$_LoadExerciseCopyWith<$Res> {
  __$$_LoadExerciseCopyWithImpl(
      _$_LoadExercise _value, $Res Function(_$_LoadExercise) _then)
      : super(_value, (v) => _then(v as _$_LoadExercise));

  @override
  _$_LoadExercise get _value => super._value as _$_LoadExercise;

  @override
  $Res call({
    Object? exercise = freezed,
  }) {
    return _then(_$_LoadExercise(
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

class _$_LoadExercise implements _LoadExercise {
  const _$_LoadExercise({required this.exercise});

  @override
  final Exercise exercise;

  @override
  String toString() {
    return 'SessionEvent.loadExercise(exercise: $exercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadExercise &&
            const DeepCollectionEquality().equals(other.exercise, exercise));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exercise));

  @JsonKey(ignore: true)
  @override
  _$$_LoadExerciseCopyWith<_$_LoadExercise> get copyWith =>
      __$$_LoadExerciseCopyWithImpl<_$_LoadExercise>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exercise exercise) loadExercise,
    required TResult Function() closeExercise,
    required TResult Function(Session session) loadSession,
    required TResult Function(Entry entry) addData,
    required TResult Function(Entry entry) updateData,
    required TResult Function(Entry entry) deleteData,
  }) {
    return loadExercise(exercise);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Exercise exercise)? loadExercise,
    TResult Function()? closeExercise,
    TResult Function(Session session)? loadSession,
    TResult Function(Entry entry)? addData,
    TResult Function(Entry entry)? updateData,
    TResult Function(Entry entry)? deleteData,
  }) {
    return loadExercise?.call(exercise);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exercise exercise)? loadExercise,
    TResult Function()? closeExercise,
    TResult Function(Session session)? loadSession,
    TResult Function(Entry entry)? addData,
    TResult Function(Entry entry)? updateData,
    TResult Function(Entry entry)? deleteData,
    required TResult orElse(),
  }) {
    if (loadExercise != null) {
      return loadExercise(exercise);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadExercise value) loadExercise,
    required TResult Function(_CloseExercise value) closeExercise,
    required TResult Function(_LoadSession value) loadSession,
    required TResult Function(_AddData value) addData,
    required TResult Function(_UpdateData value) updateData,
    required TResult Function(_DeleteData value) deleteData,
  }) {
    return loadExercise(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadExercise value)? loadExercise,
    TResult Function(_CloseExercise value)? closeExercise,
    TResult Function(_LoadSession value)? loadSession,
    TResult Function(_AddData value)? addData,
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_DeleteData value)? deleteData,
  }) {
    return loadExercise?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadExercise value)? loadExercise,
    TResult Function(_CloseExercise value)? closeExercise,
    TResult Function(_LoadSession value)? loadSession,
    TResult Function(_AddData value)? addData,
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_DeleteData value)? deleteData,
    required TResult orElse(),
  }) {
    if (loadExercise != null) {
      return loadExercise(this);
    }
    return orElse();
  }
}

abstract class _LoadExercise implements SessionEvent {
  const factory _LoadExercise({required final Exercise exercise}) =
      _$_LoadExercise;

  Exercise get exercise;
  @JsonKey(ignore: true)
  _$$_LoadExerciseCopyWith<_$_LoadExercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CloseExerciseCopyWith<$Res> {
  factory _$$_CloseExerciseCopyWith(
          _$_CloseExercise value, $Res Function(_$_CloseExercise) then) =
      __$$_CloseExerciseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CloseExerciseCopyWithImpl<$Res>
    extends _$SessionEventCopyWithImpl<$Res>
    implements _$$_CloseExerciseCopyWith<$Res> {
  __$$_CloseExerciseCopyWithImpl(
      _$_CloseExercise _value, $Res Function(_$_CloseExercise) _then)
      : super(_value, (v) => _then(v as _$_CloseExercise));

  @override
  _$_CloseExercise get _value => super._value as _$_CloseExercise;
}

/// @nodoc

class _$_CloseExercise implements _CloseExercise {
  const _$_CloseExercise();

  @override
  String toString() {
    return 'SessionEvent.closeExercise()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CloseExercise);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exercise exercise) loadExercise,
    required TResult Function() closeExercise,
    required TResult Function(Session session) loadSession,
    required TResult Function(Entry entry) addData,
    required TResult Function(Entry entry) updateData,
    required TResult Function(Entry entry) deleteData,
  }) {
    return closeExercise();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Exercise exercise)? loadExercise,
    TResult Function()? closeExercise,
    TResult Function(Session session)? loadSession,
    TResult Function(Entry entry)? addData,
    TResult Function(Entry entry)? updateData,
    TResult Function(Entry entry)? deleteData,
  }) {
    return closeExercise?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exercise exercise)? loadExercise,
    TResult Function()? closeExercise,
    TResult Function(Session session)? loadSession,
    TResult Function(Entry entry)? addData,
    TResult Function(Entry entry)? updateData,
    TResult Function(Entry entry)? deleteData,
    required TResult orElse(),
  }) {
    if (closeExercise != null) {
      return closeExercise();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadExercise value) loadExercise,
    required TResult Function(_CloseExercise value) closeExercise,
    required TResult Function(_LoadSession value) loadSession,
    required TResult Function(_AddData value) addData,
    required TResult Function(_UpdateData value) updateData,
    required TResult Function(_DeleteData value) deleteData,
  }) {
    return closeExercise(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadExercise value)? loadExercise,
    TResult Function(_CloseExercise value)? closeExercise,
    TResult Function(_LoadSession value)? loadSession,
    TResult Function(_AddData value)? addData,
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_DeleteData value)? deleteData,
  }) {
    return closeExercise?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadExercise value)? loadExercise,
    TResult Function(_CloseExercise value)? closeExercise,
    TResult Function(_LoadSession value)? loadSession,
    TResult Function(_AddData value)? addData,
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_DeleteData value)? deleteData,
    required TResult orElse(),
  }) {
    if (closeExercise != null) {
      return closeExercise(this);
    }
    return orElse();
  }
}

abstract class _CloseExercise implements SessionEvent {
  const factory _CloseExercise() = _$_CloseExercise;
}

/// @nodoc
abstract class _$$_LoadSessionCopyWith<$Res> {
  factory _$$_LoadSessionCopyWith(
          _$_LoadSession value, $Res Function(_$_LoadSession) then) =
      __$$_LoadSessionCopyWithImpl<$Res>;
  $Res call({Session session});

  $SessionCopyWith<$Res> get session;
}

/// @nodoc
class __$$_LoadSessionCopyWithImpl<$Res>
    extends _$SessionEventCopyWithImpl<$Res>
    implements _$$_LoadSessionCopyWith<$Res> {
  __$$_LoadSessionCopyWithImpl(
      _$_LoadSession _value, $Res Function(_$_LoadSession) _then)
      : super(_value, (v) => _then(v as _$_LoadSession));

  @override
  _$_LoadSession get _value => super._value as _$_LoadSession;

  @override
  $Res call({
    Object? session = freezed,
  }) {
    return _then(_$_LoadSession(
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

class _$_LoadSession implements _LoadSession {
  const _$_LoadSession({required this.session});

  @override
  final Session session;

  @override
  String toString() {
    return 'SessionEvent.loadSession(session: $session)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSession &&
            const DeepCollectionEquality().equals(other.session, session));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(session));

  @JsonKey(ignore: true)
  @override
  _$$_LoadSessionCopyWith<_$_LoadSession> get copyWith =>
      __$$_LoadSessionCopyWithImpl<_$_LoadSession>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exercise exercise) loadExercise,
    required TResult Function() closeExercise,
    required TResult Function(Session session) loadSession,
    required TResult Function(Entry entry) addData,
    required TResult Function(Entry entry) updateData,
    required TResult Function(Entry entry) deleteData,
  }) {
    return loadSession(session);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Exercise exercise)? loadExercise,
    TResult Function()? closeExercise,
    TResult Function(Session session)? loadSession,
    TResult Function(Entry entry)? addData,
    TResult Function(Entry entry)? updateData,
    TResult Function(Entry entry)? deleteData,
  }) {
    return loadSession?.call(session);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exercise exercise)? loadExercise,
    TResult Function()? closeExercise,
    TResult Function(Session session)? loadSession,
    TResult Function(Entry entry)? addData,
    TResult Function(Entry entry)? updateData,
    TResult Function(Entry entry)? deleteData,
    required TResult orElse(),
  }) {
    if (loadSession != null) {
      return loadSession(session);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadExercise value) loadExercise,
    required TResult Function(_CloseExercise value) closeExercise,
    required TResult Function(_LoadSession value) loadSession,
    required TResult Function(_AddData value) addData,
    required TResult Function(_UpdateData value) updateData,
    required TResult Function(_DeleteData value) deleteData,
  }) {
    return loadSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadExercise value)? loadExercise,
    TResult Function(_CloseExercise value)? closeExercise,
    TResult Function(_LoadSession value)? loadSession,
    TResult Function(_AddData value)? addData,
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_DeleteData value)? deleteData,
  }) {
    return loadSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadExercise value)? loadExercise,
    TResult Function(_CloseExercise value)? closeExercise,
    TResult Function(_LoadSession value)? loadSession,
    TResult Function(_AddData value)? addData,
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_DeleteData value)? deleteData,
    required TResult orElse(),
  }) {
    if (loadSession != null) {
      return loadSession(this);
    }
    return orElse();
  }
}

abstract class _LoadSession implements SessionEvent {
  const factory _LoadSession({required final Session session}) = _$_LoadSession;

  Session get session;
  @JsonKey(ignore: true)
  _$$_LoadSessionCopyWith<_$_LoadSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddDataCopyWith<$Res> {
  factory _$$_AddDataCopyWith(
          _$_AddData value, $Res Function(_$_AddData) then) =
      __$$_AddDataCopyWithImpl<$Res>;
  $Res call({Entry entry});

  $EntryCopyWith<$Res> get entry;
}

/// @nodoc
class __$$_AddDataCopyWithImpl<$Res> extends _$SessionEventCopyWithImpl<$Res>
    implements _$$_AddDataCopyWith<$Res> {
  __$$_AddDataCopyWithImpl(_$_AddData _value, $Res Function(_$_AddData) _then)
      : super(_value, (v) => _then(v as _$_AddData));

  @override
  _$_AddData get _value => super._value as _$_AddData;

  @override
  $Res call({
    Object? entry = freezed,
  }) {
    return _then(_$_AddData(
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

class _$_AddData implements _AddData {
  const _$_AddData({required this.entry});

  @override
  final Entry entry;

  @override
  String toString() {
    return 'SessionEvent.addData(entry: $entry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddData &&
            const DeepCollectionEquality().equals(other.entry, entry));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(entry));

  @JsonKey(ignore: true)
  @override
  _$$_AddDataCopyWith<_$_AddData> get copyWith =>
      __$$_AddDataCopyWithImpl<_$_AddData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exercise exercise) loadExercise,
    required TResult Function() closeExercise,
    required TResult Function(Session session) loadSession,
    required TResult Function(Entry entry) addData,
    required TResult Function(Entry entry) updateData,
    required TResult Function(Entry entry) deleteData,
  }) {
    return addData(entry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Exercise exercise)? loadExercise,
    TResult Function()? closeExercise,
    TResult Function(Session session)? loadSession,
    TResult Function(Entry entry)? addData,
    TResult Function(Entry entry)? updateData,
    TResult Function(Entry entry)? deleteData,
  }) {
    return addData?.call(entry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exercise exercise)? loadExercise,
    TResult Function()? closeExercise,
    TResult Function(Session session)? loadSession,
    TResult Function(Entry entry)? addData,
    TResult Function(Entry entry)? updateData,
    TResult Function(Entry entry)? deleteData,
    required TResult orElse(),
  }) {
    if (addData != null) {
      return addData(entry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadExercise value) loadExercise,
    required TResult Function(_CloseExercise value) closeExercise,
    required TResult Function(_LoadSession value) loadSession,
    required TResult Function(_AddData value) addData,
    required TResult Function(_UpdateData value) updateData,
    required TResult Function(_DeleteData value) deleteData,
  }) {
    return addData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadExercise value)? loadExercise,
    TResult Function(_CloseExercise value)? closeExercise,
    TResult Function(_LoadSession value)? loadSession,
    TResult Function(_AddData value)? addData,
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_DeleteData value)? deleteData,
  }) {
    return addData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadExercise value)? loadExercise,
    TResult Function(_CloseExercise value)? closeExercise,
    TResult Function(_LoadSession value)? loadSession,
    TResult Function(_AddData value)? addData,
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_DeleteData value)? deleteData,
    required TResult orElse(),
  }) {
    if (addData != null) {
      return addData(this);
    }
    return orElse();
  }
}

abstract class _AddData implements SessionEvent {
  const factory _AddData({required final Entry entry}) = _$_AddData;

  Entry get entry;
  @JsonKey(ignore: true)
  _$$_AddDataCopyWith<_$_AddData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateDataCopyWith<$Res> {
  factory _$$_UpdateDataCopyWith(
          _$_UpdateData value, $Res Function(_$_UpdateData) then) =
      __$$_UpdateDataCopyWithImpl<$Res>;
  $Res call({Entry entry});

  $EntryCopyWith<$Res> get entry;
}

/// @nodoc
class __$$_UpdateDataCopyWithImpl<$Res> extends _$SessionEventCopyWithImpl<$Res>
    implements _$$_UpdateDataCopyWith<$Res> {
  __$$_UpdateDataCopyWithImpl(
      _$_UpdateData _value, $Res Function(_$_UpdateData) _then)
      : super(_value, (v) => _then(v as _$_UpdateData));

  @override
  _$_UpdateData get _value => super._value as _$_UpdateData;

  @override
  $Res call({
    Object? entry = freezed,
  }) {
    return _then(_$_UpdateData(
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

class _$_UpdateData implements _UpdateData {
  const _$_UpdateData({required this.entry});

  @override
  final Entry entry;

  @override
  String toString() {
    return 'SessionEvent.updateData(entry: $entry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateData &&
            const DeepCollectionEquality().equals(other.entry, entry));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(entry));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateDataCopyWith<_$_UpdateData> get copyWith =>
      __$$_UpdateDataCopyWithImpl<_$_UpdateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exercise exercise) loadExercise,
    required TResult Function() closeExercise,
    required TResult Function(Session session) loadSession,
    required TResult Function(Entry entry) addData,
    required TResult Function(Entry entry) updateData,
    required TResult Function(Entry entry) deleteData,
  }) {
    return updateData(entry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Exercise exercise)? loadExercise,
    TResult Function()? closeExercise,
    TResult Function(Session session)? loadSession,
    TResult Function(Entry entry)? addData,
    TResult Function(Entry entry)? updateData,
    TResult Function(Entry entry)? deleteData,
  }) {
    return updateData?.call(entry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exercise exercise)? loadExercise,
    TResult Function()? closeExercise,
    TResult Function(Session session)? loadSession,
    TResult Function(Entry entry)? addData,
    TResult Function(Entry entry)? updateData,
    TResult Function(Entry entry)? deleteData,
    required TResult orElse(),
  }) {
    if (updateData != null) {
      return updateData(entry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadExercise value) loadExercise,
    required TResult Function(_CloseExercise value) closeExercise,
    required TResult Function(_LoadSession value) loadSession,
    required TResult Function(_AddData value) addData,
    required TResult Function(_UpdateData value) updateData,
    required TResult Function(_DeleteData value) deleteData,
  }) {
    return updateData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadExercise value)? loadExercise,
    TResult Function(_CloseExercise value)? closeExercise,
    TResult Function(_LoadSession value)? loadSession,
    TResult Function(_AddData value)? addData,
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_DeleteData value)? deleteData,
  }) {
    return updateData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadExercise value)? loadExercise,
    TResult Function(_CloseExercise value)? closeExercise,
    TResult Function(_LoadSession value)? loadSession,
    TResult Function(_AddData value)? addData,
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_DeleteData value)? deleteData,
    required TResult orElse(),
  }) {
    if (updateData != null) {
      return updateData(this);
    }
    return orElse();
  }
}

abstract class _UpdateData implements SessionEvent {
  const factory _UpdateData({required final Entry entry}) = _$_UpdateData;

  Entry get entry;
  @JsonKey(ignore: true)
  _$$_UpdateDataCopyWith<_$_UpdateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteDataCopyWith<$Res> {
  factory _$$_DeleteDataCopyWith(
          _$_DeleteData value, $Res Function(_$_DeleteData) then) =
      __$$_DeleteDataCopyWithImpl<$Res>;
  $Res call({Entry entry});

  $EntryCopyWith<$Res> get entry;
}

/// @nodoc
class __$$_DeleteDataCopyWithImpl<$Res> extends _$SessionEventCopyWithImpl<$Res>
    implements _$$_DeleteDataCopyWith<$Res> {
  __$$_DeleteDataCopyWithImpl(
      _$_DeleteData _value, $Res Function(_$_DeleteData) _then)
      : super(_value, (v) => _then(v as _$_DeleteData));

  @override
  _$_DeleteData get _value => super._value as _$_DeleteData;

  @override
  $Res call({
    Object? entry = freezed,
  }) {
    return _then(_$_DeleteData(
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

class _$_DeleteData implements _DeleteData {
  const _$_DeleteData({required this.entry});

  @override
  final Entry entry;

  @override
  String toString() {
    return 'SessionEvent.deleteData(entry: $entry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteData &&
            const DeepCollectionEquality().equals(other.entry, entry));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(entry));

  @JsonKey(ignore: true)
  @override
  _$$_DeleteDataCopyWith<_$_DeleteData> get copyWith =>
      __$$_DeleteDataCopyWithImpl<_$_DeleteData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exercise exercise) loadExercise,
    required TResult Function() closeExercise,
    required TResult Function(Session session) loadSession,
    required TResult Function(Entry entry) addData,
    required TResult Function(Entry entry) updateData,
    required TResult Function(Entry entry) deleteData,
  }) {
    return deleteData(entry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Exercise exercise)? loadExercise,
    TResult Function()? closeExercise,
    TResult Function(Session session)? loadSession,
    TResult Function(Entry entry)? addData,
    TResult Function(Entry entry)? updateData,
    TResult Function(Entry entry)? deleteData,
  }) {
    return deleteData?.call(entry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exercise exercise)? loadExercise,
    TResult Function()? closeExercise,
    TResult Function(Session session)? loadSession,
    TResult Function(Entry entry)? addData,
    TResult Function(Entry entry)? updateData,
    TResult Function(Entry entry)? deleteData,
    required TResult orElse(),
  }) {
    if (deleteData != null) {
      return deleteData(entry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadExercise value) loadExercise,
    required TResult Function(_CloseExercise value) closeExercise,
    required TResult Function(_LoadSession value) loadSession,
    required TResult Function(_AddData value) addData,
    required TResult Function(_UpdateData value) updateData,
    required TResult Function(_DeleteData value) deleteData,
  }) {
    return deleteData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadExercise value)? loadExercise,
    TResult Function(_CloseExercise value)? closeExercise,
    TResult Function(_LoadSession value)? loadSession,
    TResult Function(_AddData value)? addData,
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_DeleteData value)? deleteData,
  }) {
    return deleteData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadExercise value)? loadExercise,
    TResult Function(_CloseExercise value)? closeExercise,
    TResult Function(_LoadSession value)? loadSession,
    TResult Function(_AddData value)? addData,
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_DeleteData value)? deleteData,
    required TResult orElse(),
  }) {
    if (deleteData != null) {
      return deleteData(this);
    }
    return orElse();
  }
}

abstract class _DeleteData implements SessionEvent {
  const factory _DeleteData({required final Entry entry}) = _$_DeleteData;

  Entry get entry;
  @JsonKey(ignore: true)
  _$$_DeleteDataCopyWith<_$_DeleteData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SessionState {
  Exercise get exercise => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exercise exercise) exerciseLoaded,
    required TResult Function(Exercise exercise, Session session) sessionLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Exercise exercise)? exerciseLoaded,
    TResult Function(Exercise exercise, Session session)? sessionLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exercise exercise)? exerciseLoaded,
    TResult Function(Exercise exercise, Session session)? sessionLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExerciseLoaded value) exerciseLoaded,
    required TResult Function(_SessionLoaded value) sessionLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ExerciseLoaded value)? exerciseLoaded,
    TResult Function(_SessionLoaded value)? sessionLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExerciseLoaded value)? exerciseLoaded,
    TResult Function(_SessionLoaded value)? sessionLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessionStateCopyWith<SessionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionStateCopyWith<$Res> {
  factory $SessionStateCopyWith(
          SessionState value, $Res Function(SessionState) then) =
      _$SessionStateCopyWithImpl<$Res>;
  $Res call({Exercise exercise});

  $ExerciseCopyWith<$Res> get exercise;
}

/// @nodoc
class _$SessionStateCopyWithImpl<$Res> implements $SessionStateCopyWith<$Res> {
  _$SessionStateCopyWithImpl(this._value, this._then);

  final SessionState _value;
  // ignore: unused_field
  final $Res Function(SessionState) _then;

  @override
  $Res call({
    Object? exercise = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_ExerciseLoadedCopyWith<$Res>
    implements $SessionStateCopyWith<$Res> {
  factory _$$_ExerciseLoadedCopyWith(
          _$_ExerciseLoaded value, $Res Function(_$_ExerciseLoaded) then) =
      __$$_ExerciseLoadedCopyWithImpl<$Res>;
  @override
  $Res call({Exercise exercise});

  @override
  $ExerciseCopyWith<$Res> get exercise;
}

/// @nodoc
class __$$_ExerciseLoadedCopyWithImpl<$Res>
    extends _$SessionStateCopyWithImpl<$Res>
    implements _$$_ExerciseLoadedCopyWith<$Res> {
  __$$_ExerciseLoadedCopyWithImpl(
      _$_ExerciseLoaded _value, $Res Function(_$_ExerciseLoaded) _then)
      : super(_value, (v) => _then(v as _$_ExerciseLoaded));

  @override
  _$_ExerciseLoaded get _value => super._value as _$_ExerciseLoaded;

  @override
  $Res call({
    Object? exercise = freezed,
  }) {
    return _then(_$_ExerciseLoaded(
      exercise: exercise == freezed
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as Exercise,
    ));
  }
}

/// @nodoc

class _$_ExerciseLoaded implements _ExerciseLoaded {
  const _$_ExerciseLoaded({required this.exercise});

  @override
  final Exercise exercise;

  @override
  String toString() {
    return 'SessionState.exerciseLoaded(exercise: $exercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExerciseLoaded &&
            const DeepCollectionEquality().equals(other.exercise, exercise));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exercise));

  @JsonKey(ignore: true)
  @override
  _$$_ExerciseLoadedCopyWith<_$_ExerciseLoaded> get copyWith =>
      __$$_ExerciseLoadedCopyWithImpl<_$_ExerciseLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exercise exercise) exerciseLoaded,
    required TResult Function(Exercise exercise, Session session) sessionLoaded,
  }) {
    return exerciseLoaded(exercise);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Exercise exercise)? exerciseLoaded,
    TResult Function(Exercise exercise, Session session)? sessionLoaded,
  }) {
    return exerciseLoaded?.call(exercise);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exercise exercise)? exerciseLoaded,
    TResult Function(Exercise exercise, Session session)? sessionLoaded,
    required TResult orElse(),
  }) {
    if (exerciseLoaded != null) {
      return exerciseLoaded(exercise);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExerciseLoaded value) exerciseLoaded,
    required TResult Function(_SessionLoaded value) sessionLoaded,
  }) {
    return exerciseLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ExerciseLoaded value)? exerciseLoaded,
    TResult Function(_SessionLoaded value)? sessionLoaded,
  }) {
    return exerciseLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExerciseLoaded value)? exerciseLoaded,
    TResult Function(_SessionLoaded value)? sessionLoaded,
    required TResult orElse(),
  }) {
    if (exerciseLoaded != null) {
      return exerciseLoaded(this);
    }
    return orElse();
  }
}

abstract class _ExerciseLoaded implements SessionState {
  const factory _ExerciseLoaded({required final Exercise exercise}) =
      _$_ExerciseLoaded;

  @override
  Exercise get exercise;
  @override
  @JsonKey(ignore: true)
  _$$_ExerciseLoadedCopyWith<_$_ExerciseLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SessionLoadedCopyWith<$Res>
    implements $SessionStateCopyWith<$Res> {
  factory _$$_SessionLoadedCopyWith(
          _$_SessionLoaded value, $Res Function(_$_SessionLoaded) then) =
      __$$_SessionLoadedCopyWithImpl<$Res>;
  @override
  $Res call({Exercise exercise, Session session});

  @override
  $ExerciseCopyWith<$Res> get exercise;
  $SessionCopyWith<$Res> get session;
}

/// @nodoc
class __$$_SessionLoadedCopyWithImpl<$Res>
    extends _$SessionStateCopyWithImpl<$Res>
    implements _$$_SessionLoadedCopyWith<$Res> {
  __$$_SessionLoadedCopyWithImpl(
      _$_SessionLoaded _value, $Res Function(_$_SessionLoaded) _then)
      : super(_value, (v) => _then(v as _$_SessionLoaded));

  @override
  _$_SessionLoaded get _value => super._value as _$_SessionLoaded;

  @override
  $Res call({
    Object? exercise = freezed,
    Object? session = freezed,
  }) {
    return _then(_$_SessionLoaded(
      exercise: exercise == freezed
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as Exercise,
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

class _$_SessionLoaded implements _SessionLoaded {
  const _$_SessionLoaded({required this.exercise, required this.session});

  @override
  final Exercise exercise;
  @override
  final Session session;

  @override
  String toString() {
    return 'SessionState.sessionLoaded(exercise: $exercise, session: $session)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SessionLoaded &&
            const DeepCollectionEquality().equals(other.exercise, exercise) &&
            const DeepCollectionEquality().equals(other.session, session));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(exercise),
      const DeepCollectionEquality().hash(session));

  @JsonKey(ignore: true)
  @override
  _$$_SessionLoadedCopyWith<_$_SessionLoaded> get copyWith =>
      __$$_SessionLoadedCopyWithImpl<_$_SessionLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exercise exercise) exerciseLoaded,
    required TResult Function(Exercise exercise, Session session) sessionLoaded,
  }) {
    return sessionLoaded(exercise, session);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Exercise exercise)? exerciseLoaded,
    TResult Function(Exercise exercise, Session session)? sessionLoaded,
  }) {
    return sessionLoaded?.call(exercise, session);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exercise exercise)? exerciseLoaded,
    TResult Function(Exercise exercise, Session session)? sessionLoaded,
    required TResult orElse(),
  }) {
    if (sessionLoaded != null) {
      return sessionLoaded(exercise, session);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExerciseLoaded value) exerciseLoaded,
    required TResult Function(_SessionLoaded value) sessionLoaded,
  }) {
    return sessionLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ExerciseLoaded value)? exerciseLoaded,
    TResult Function(_SessionLoaded value)? sessionLoaded,
  }) {
    return sessionLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExerciseLoaded value)? exerciseLoaded,
    TResult Function(_SessionLoaded value)? sessionLoaded,
    required TResult orElse(),
  }) {
    if (sessionLoaded != null) {
      return sessionLoaded(this);
    }
    return orElse();
  }
}

abstract class _SessionLoaded implements SessionState {
  const factory _SessionLoaded(
      {required final Exercise exercise,
      required final Session session}) = _$_SessionLoaded;

  @override
  Exercise get exercise;
  Session get session;
  @override
  @JsonKey(ignore: true)
  _$$_SessionLoadedCopyWith<_$_SessionLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
