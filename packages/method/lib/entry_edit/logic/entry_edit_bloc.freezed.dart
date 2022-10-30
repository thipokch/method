// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entry_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EntryEditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String taskId) startTask,
    required TResult Function(String entryId) startEntry,
    required TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)
        updateDefinition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String taskId)? startTask,
    TResult Function(String entryId)? startEntry,
    TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)?
        updateDefinition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String taskId)? startTask,
    TResult Function(String entryId)? startEntry,
    TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)?
        updateDefinition,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_StartEntry value) startEntry,
    required TResult Function(_UpdateDefinition value) updateDefinition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartTask value)? startTask,
    TResult Function(_StartEntry value)? startEntry,
    TResult Function(_UpdateDefinition value)? updateDefinition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTask value)? startTask,
    TResult Function(_StartEntry value)? startEntry,
    TResult Function(_UpdateDefinition value)? updateDefinition,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryEditEventCopyWith<$Res> {
  factory $EntryEditEventCopyWith(
          EntryEditEvent value, $Res Function(EntryEditEvent) then) =
      _$EntryEditEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EntryEditEventCopyWithImpl<$Res>
    implements $EntryEditEventCopyWith<$Res> {
  _$EntryEditEventCopyWithImpl(this._value, this._then);

  final EntryEditEvent _value;
  // ignore: unused_field
  final $Res Function(EntryEditEvent) _then;
}

/// @nodoc
abstract class _$$_StartTaskCopyWith<$Res> {
  factory _$$_StartTaskCopyWith(
          _$_StartTask value, $Res Function(_$_StartTask) then) =
      __$$_StartTaskCopyWithImpl<$Res>;
  $Res call({String taskId});
}

/// @nodoc
class __$$_StartTaskCopyWithImpl<$Res>
    extends _$EntryEditEventCopyWithImpl<$Res>
    implements _$$_StartTaskCopyWith<$Res> {
  __$$_StartTaskCopyWithImpl(
      _$_StartTask _value, $Res Function(_$_StartTask) _then)
      : super(_value, (v) => _then(v as _$_StartTask));

  @override
  _$_StartTask get _value => super._value as _$_StartTask;

  @override
  $Res call({
    Object? taskId = freezed,
  }) {
    return _then(_$_StartTask(
      taskId: taskId == freezed
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StartTask extends _StartTask {
  const _$_StartTask({required this.taskId}) : super._();

  @override
  final String taskId;

  @override
  String toString() {
    return 'EntryEditEvent.startTask(taskId: $taskId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartTask &&
            const DeepCollectionEquality().equals(other.taskId, taskId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(taskId));

  @JsonKey(ignore: true)
  @override
  _$$_StartTaskCopyWith<_$_StartTask> get copyWith =>
      __$$_StartTaskCopyWithImpl<_$_StartTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String taskId) startTask,
    required TResult Function(String entryId) startEntry,
    required TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)
        updateDefinition,
  }) {
    return startTask(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String taskId)? startTask,
    TResult Function(String entryId)? startEntry,
    TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)?
        updateDefinition,
  }) {
    return startTask?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String taskId)? startTask,
    TResult Function(String entryId)? startEntry,
    TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)?
        updateDefinition,
    required TResult orElse(),
  }) {
    if (startTask != null) {
      return startTask(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_StartEntry value) startEntry,
    required TResult Function(_UpdateDefinition value) updateDefinition,
  }) {
    return startTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartTask value)? startTask,
    TResult Function(_StartEntry value)? startEntry,
    TResult Function(_UpdateDefinition value)? updateDefinition,
  }) {
    return startTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTask value)? startTask,
    TResult Function(_StartEntry value)? startEntry,
    TResult Function(_UpdateDefinition value)? updateDefinition,
    required TResult orElse(),
  }) {
    if (startTask != null) {
      return startTask(this);
    }
    return orElse();
  }
}

abstract class _StartTask extends EntryEditEvent {
  const factory _StartTask({required final String taskId}) = _$_StartTask;
  const _StartTask._() : super._();

  String get taskId;
  @JsonKey(ignore: true)
  _$$_StartTaskCopyWith<_$_StartTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StartEntryCopyWith<$Res> {
  factory _$$_StartEntryCopyWith(
          _$_StartEntry value, $Res Function(_$_StartEntry) then) =
      __$$_StartEntryCopyWithImpl<$Res>;
  $Res call({String entryId});
}

/// @nodoc
class __$$_StartEntryCopyWithImpl<$Res>
    extends _$EntryEditEventCopyWithImpl<$Res>
    implements _$$_StartEntryCopyWith<$Res> {
  __$$_StartEntryCopyWithImpl(
      _$_StartEntry _value, $Res Function(_$_StartEntry) _then)
      : super(_value, (v) => _then(v as _$_StartEntry));

  @override
  _$_StartEntry get _value => super._value as _$_StartEntry;

  @override
  $Res call({
    Object? entryId = freezed,
  }) {
    return _then(_$_StartEntry(
      entryId: entryId == freezed
          ? _value.entryId
          : entryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StartEntry extends _StartEntry {
  const _$_StartEntry({required this.entryId}) : super._();

  @override
  final String entryId;

  @override
  String toString() {
    return 'EntryEditEvent.startEntry(entryId: $entryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartEntry &&
            const DeepCollectionEquality().equals(other.entryId, entryId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(entryId));

  @JsonKey(ignore: true)
  @override
  _$$_StartEntryCopyWith<_$_StartEntry> get copyWith =>
      __$$_StartEntryCopyWithImpl<_$_StartEntry>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String taskId) startTask,
    required TResult Function(String entryId) startEntry,
    required TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)
        updateDefinition,
  }) {
    return startEntry(entryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String taskId)? startTask,
    TResult Function(String entryId)? startEntry,
    TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)?
        updateDefinition,
  }) {
    return startEntry?.call(entryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String taskId)? startTask,
    TResult Function(String entryId)? startEntry,
    TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)?
        updateDefinition,
    required TResult orElse(),
  }) {
    if (startEntry != null) {
      return startEntry(entryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_StartEntry value) startEntry,
    required TResult Function(_UpdateDefinition value) updateDefinition,
  }) {
    return startEntry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartTask value)? startTask,
    TResult Function(_StartEntry value)? startEntry,
    TResult Function(_UpdateDefinition value)? updateDefinition,
  }) {
    return startEntry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTask value)? startTask,
    TResult Function(_StartEntry value)? startEntry,
    TResult Function(_UpdateDefinition value)? updateDefinition,
    required TResult orElse(),
  }) {
    if (startEntry != null) {
      return startEntry(this);
    }
    return orElse();
  }
}

abstract class _StartEntry extends EntryEditEvent {
  const factory _StartEntry({required final String entryId}) = _$_StartEntry;
  const _StartEntry._() : super._();

  String get entryId;
  @JsonKey(ignore: true)
  _$$_StartEntryCopyWith<_$_StartEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateDefinitionCopyWith<$Res> {
  factory _$$_UpdateDefinitionCopyWith(
          _$_UpdateDefinition value, $Res Function(_$_UpdateDefinition) then) =
      __$$_UpdateDefinitionCopyWithImpl<$Res>;
  $Res call({BuiltDefinition<TaskDefinition, EntryDefinition> definitions});
}

/// @nodoc
class __$$_UpdateDefinitionCopyWithImpl<$Res>
    extends _$EntryEditEventCopyWithImpl<$Res>
    implements _$$_UpdateDefinitionCopyWith<$Res> {
  __$$_UpdateDefinitionCopyWithImpl(
      _$_UpdateDefinition _value, $Res Function(_$_UpdateDefinition) _then)
      : super(_value, (v) => _then(v as _$_UpdateDefinition));

  @override
  _$_UpdateDefinition get _value => super._value as _$_UpdateDefinition;

  @override
  $Res call({
    Object? definitions = freezed,
  }) {
    return _then(_$_UpdateDefinition(
      definitions: definitions == freezed
          ? _value.definitions
          : definitions // ignore: cast_nullable_to_non_nullable
              as BuiltDefinition<TaskDefinition, EntryDefinition>,
    ));
  }
}

/// @nodoc

class _$_UpdateDefinition extends _UpdateDefinition {
  const _$_UpdateDefinition({required this.definitions}) : super._();

  @override
  final BuiltDefinition<TaskDefinition, EntryDefinition> definitions;

  @override
  String toString() {
    return 'EntryEditEvent.updateDefinition(definitions: $definitions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateDefinition &&
            const DeepCollectionEquality()
                .equals(other.definitions, definitions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(definitions));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateDefinitionCopyWith<_$_UpdateDefinition> get copyWith =>
      __$$_UpdateDefinitionCopyWithImpl<_$_UpdateDefinition>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String taskId) startTask,
    required TResult Function(String entryId) startEntry,
    required TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)
        updateDefinition,
  }) {
    return updateDefinition(definitions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String taskId)? startTask,
    TResult Function(String entryId)? startEntry,
    TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)?
        updateDefinition,
  }) {
    return updateDefinition?.call(definitions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String taskId)? startTask,
    TResult Function(String entryId)? startEntry,
    TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)?
        updateDefinition,
    required TResult orElse(),
  }) {
    if (updateDefinition != null) {
      return updateDefinition(definitions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_StartEntry value) startEntry,
    required TResult Function(_UpdateDefinition value) updateDefinition,
  }) {
    return updateDefinition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartTask value)? startTask,
    TResult Function(_StartEntry value)? startEntry,
    TResult Function(_UpdateDefinition value)? updateDefinition,
  }) {
    return updateDefinition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTask value)? startTask,
    TResult Function(_StartEntry value)? startEntry,
    TResult Function(_UpdateDefinition value)? updateDefinition,
    required TResult orElse(),
  }) {
    if (updateDefinition != null) {
      return updateDefinition(this);
    }
    return orElse();
  }
}

abstract class _UpdateDefinition extends EntryEditEvent {
  const factory _UpdateDefinition(
      {required final BuiltDefinition<TaskDefinition, EntryDefinition>
          definitions}) = _$_UpdateDefinition;
  const _UpdateDefinition._() : super._();

  BuiltDefinition<TaskDefinition, EntryDefinition> get definitions;
  @JsonKey(ignore: true)
  _$$_UpdateDefinitionCopyWith<_$_UpdateDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EntryEditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function(Entry entry) started,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function(Entry entry)? started,
    TResult Function(Object error, StackTrace stackTrace)? errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function(Entry entry)? started,
    TResult Function(Object error, StackTrace stackTrace)? errored,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) intial,
    required TResult Function(_Started value) started,
    required TResult Function(_Errored value) errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? intial,
    TResult Function(_Started value)? started,
    TResult Function(_Errored value)? errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? intial,
    TResult Function(_Started value)? started,
    TResult Function(_Errored value)? errored,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryEditStateCopyWith<$Res> {
  factory $EntryEditStateCopyWith(
          EntryEditState value, $Res Function(EntryEditState) then) =
      _$EntryEditStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EntryEditStateCopyWithImpl<$Res>
    implements $EntryEditStateCopyWith<$Res> {
  _$EntryEditStateCopyWithImpl(this._value, this._then);

  final EntryEditState _value;
  // ignore: unused_field
  final $Res Function(EntryEditState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$EntryEditStateCopyWithImpl<$Res>
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
    return 'EntryEditState.intial()';
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
    required TResult Function() intial,
    required TResult Function(Entry entry) started,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) {
    return intial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function(Entry entry)? started,
    TResult Function(Object error, StackTrace stackTrace)? errored,
  }) {
    return intial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function(Entry entry)? started,
    TResult Function(Object error, StackTrace stackTrace)? errored,
    required TResult orElse(),
  }) {
    if (intial != null) {
      return intial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) intial,
    required TResult Function(_Started value) started,
    required TResult Function(_Errored value) errored,
  }) {
    return intial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? intial,
    TResult Function(_Started value)? started,
    TResult Function(_Errored value)? errored,
  }) {
    return intial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? intial,
    TResult Function(_Started value)? started,
    TResult Function(_Errored value)? errored,
    required TResult orElse(),
  }) {
    if (intial != null) {
      return intial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends EntryEditState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  $Res call({Entry entry});

  $EntryCopyWith<$Res> get entry;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$EntryEditStateCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;

  @override
  $Res call({
    Object? entry = freezed,
  }) {
    return _then(_$_Started(
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

class _$_Started extends _Started {
  const _$_Started({required this.entry}) : super._();

  @override
  final Entry entry;

  @override
  String toString() {
    return 'EntryEditState.started(entry: $entry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            const DeepCollectionEquality().equals(other.entry, entry));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(entry));

  @JsonKey(ignore: true)
  @override
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function(Entry entry) started,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) {
    return started(entry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function(Entry entry)? started,
    TResult Function(Object error, StackTrace stackTrace)? errored,
  }) {
    return started?.call(entry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function(Entry entry)? started,
    TResult Function(Object error, StackTrace stackTrace)? errored,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(entry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) intial,
    required TResult Function(_Started value) started,
    required TResult Function(_Errored value) errored,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? intial,
    TResult Function(_Started value)? started,
    TResult Function(_Errored value)? errored,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? intial,
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

abstract class _Started extends EntryEditState {
  const factory _Started({required final Entry entry}) = _$_Started;
  const _Started._() : super._();

  Entry get entry;
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
class __$$_ErroredCopyWithImpl<$Res> extends _$EntryEditStateCopyWithImpl<$Res>
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
    return 'EntryEditState.errored(error: $error, stackTrace: $stackTrace)';
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
    required TResult Function() intial,
    required TResult Function(Entry entry) started,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) {
    return errored(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function(Entry entry)? started,
    TResult Function(Object error, StackTrace stackTrace)? errored,
  }) {
    return errored?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function(Entry entry)? started,
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
    required TResult Function(_Initial value) intial,
    required TResult Function(_Started value) started,
    required TResult Function(_Errored value) errored,
  }) {
    return errored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? intial,
    TResult Function(_Started value)? started,
    TResult Function(_Errored value)? errored,
  }) {
    return errored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? intial,
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

abstract class _Errored extends EntryEditState {
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
