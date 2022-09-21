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
    required TResult Function(Task task) loadTask,
    required TResult Function() closeTask,
    required TResult Function(Entry entry) loadEntry,
    required TResult Function(String text) addData,
    required TResult Function() updateData,
    required TResult Function() deleteData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? loadTask,
    TResult Function()? closeTask,
    TResult Function(Entry entry)? loadEntry,
    TResult Function(String text)? addData,
    TResult Function()? updateData,
    TResult Function()? deleteData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? loadTask,
    TResult Function()? closeTask,
    TResult Function(Entry entry)? loadEntry,
    TResult Function(String text)? addData,
    TResult Function()? updateData,
    TResult Function()? deleteData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTask value) loadTask,
    required TResult Function(_CloseTask value) closeTask,
    required TResult Function(_LoadEntry value) loadEntry,
    required TResult Function(_AddData value) addData,
    required TResult Function(_UpdateData value) updateData,
    required TResult Function(_DeleteData value) deleteData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadTask value)? loadTask,
    TResult Function(_CloseTask value)? closeTask,
    TResult Function(_LoadEntry value)? loadEntry,
    TResult Function(_AddData value)? addData,
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_DeleteData value)? deleteData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTask value)? loadTask,
    TResult Function(_CloseTask value)? closeTask,
    TResult Function(_LoadEntry value)? loadEntry,
    TResult Function(_AddData value)? addData,
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_DeleteData value)? deleteData,
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
abstract class _$$_LoadTaskCopyWith<$Res> {
  factory _$$_LoadTaskCopyWith(
          _$_LoadTask value, $Res Function(_$_LoadTask) then) =
      __$$_LoadTaskCopyWithImpl<$Res>;
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$_LoadTaskCopyWithImpl<$Res> extends _$EntryEventCopyWithImpl<$Res>
    implements _$$_LoadTaskCopyWith<$Res> {
  __$$_LoadTaskCopyWithImpl(
      _$_LoadTask _value, $Res Function(_$_LoadTask) _then)
      : super(_value, (v) => _then(v as _$_LoadTask));

  @override
  _$_LoadTask get _value => super._value as _$_LoadTask;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_$_LoadTask(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$_LoadTask implements _LoadTask {
  const _$_LoadTask({required this.task});

  @override
  final Task task;

  @override
  String toString() {
    return 'EntryEvent.loadTask(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadTask &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$$_LoadTaskCopyWith<_$_LoadTask> get copyWith =>
      __$$_LoadTaskCopyWithImpl<_$_LoadTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) loadTask,
    required TResult Function() closeTask,
    required TResult Function(Entry entry) loadEntry,
    required TResult Function(String text) addData,
    required TResult Function() updateData,
    required TResult Function() deleteData,
  }) {
    return loadTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? loadTask,
    TResult Function()? closeTask,
    TResult Function(Entry entry)? loadEntry,
    TResult Function(String text)? addData,
    TResult Function()? updateData,
    TResult Function()? deleteData,
  }) {
    return loadTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? loadTask,
    TResult Function()? closeTask,
    TResult Function(Entry entry)? loadEntry,
    TResult Function(String text)? addData,
    TResult Function()? updateData,
    TResult Function()? deleteData,
    required TResult orElse(),
  }) {
    if (loadTask != null) {
      return loadTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTask value) loadTask,
    required TResult Function(_CloseTask value) closeTask,
    required TResult Function(_LoadEntry value) loadEntry,
    required TResult Function(_AddData value) addData,
    required TResult Function(_UpdateData value) updateData,
    required TResult Function(_DeleteData value) deleteData,
  }) {
    return loadTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadTask value)? loadTask,
    TResult Function(_CloseTask value)? closeTask,
    TResult Function(_LoadEntry value)? loadEntry,
    TResult Function(_AddData value)? addData,
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_DeleteData value)? deleteData,
  }) {
    return loadTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTask value)? loadTask,
    TResult Function(_CloseTask value)? closeTask,
    TResult Function(_LoadEntry value)? loadEntry,
    TResult Function(_AddData value)? addData,
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_DeleteData value)? deleteData,
    required TResult orElse(),
  }) {
    if (loadTask != null) {
      return loadTask(this);
    }
    return orElse();
  }
}

abstract class _LoadTask implements EntryEvent {
  const factory _LoadTask({required final Task task}) = _$_LoadTask;

  Task get task;
  @JsonKey(ignore: true)
  _$$_LoadTaskCopyWith<_$_LoadTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CloseTaskCopyWith<$Res> {
  factory _$$_CloseTaskCopyWith(
          _$_CloseTask value, $Res Function(_$_CloseTask) then) =
      __$$_CloseTaskCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CloseTaskCopyWithImpl<$Res> extends _$EntryEventCopyWithImpl<$Res>
    implements _$$_CloseTaskCopyWith<$Res> {
  __$$_CloseTaskCopyWithImpl(
      _$_CloseTask _value, $Res Function(_$_CloseTask) _then)
      : super(_value, (v) => _then(v as _$_CloseTask));

  @override
  _$_CloseTask get _value => super._value as _$_CloseTask;
}

/// @nodoc

class _$_CloseTask implements _CloseTask {
  const _$_CloseTask();

  @override
  String toString() {
    return 'EntryEvent.closeTask()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CloseTask);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) loadTask,
    required TResult Function() closeTask,
    required TResult Function(Entry entry) loadEntry,
    required TResult Function(String text) addData,
    required TResult Function() updateData,
    required TResult Function() deleteData,
  }) {
    return closeTask();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? loadTask,
    TResult Function()? closeTask,
    TResult Function(Entry entry)? loadEntry,
    TResult Function(String text)? addData,
    TResult Function()? updateData,
    TResult Function()? deleteData,
  }) {
    return closeTask?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? loadTask,
    TResult Function()? closeTask,
    TResult Function(Entry entry)? loadEntry,
    TResult Function(String text)? addData,
    TResult Function()? updateData,
    TResult Function()? deleteData,
    required TResult orElse(),
  }) {
    if (closeTask != null) {
      return closeTask();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTask value) loadTask,
    required TResult Function(_CloseTask value) closeTask,
    required TResult Function(_LoadEntry value) loadEntry,
    required TResult Function(_AddData value) addData,
    required TResult Function(_UpdateData value) updateData,
    required TResult Function(_DeleteData value) deleteData,
  }) {
    return closeTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadTask value)? loadTask,
    TResult Function(_CloseTask value)? closeTask,
    TResult Function(_LoadEntry value)? loadEntry,
    TResult Function(_AddData value)? addData,
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_DeleteData value)? deleteData,
  }) {
    return closeTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTask value)? loadTask,
    TResult Function(_CloseTask value)? closeTask,
    TResult Function(_LoadEntry value)? loadEntry,
    TResult Function(_AddData value)? addData,
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_DeleteData value)? deleteData,
    required TResult orElse(),
  }) {
    if (closeTask != null) {
      return closeTask(this);
    }
    return orElse();
  }
}

abstract class _CloseTask implements EntryEvent {
  const factory _CloseTask() = _$_CloseTask;
}

/// @nodoc
abstract class _$$_LoadEntryCopyWith<$Res> {
  factory _$$_LoadEntryCopyWith(
          _$_LoadEntry value, $Res Function(_$_LoadEntry) then) =
      __$$_LoadEntryCopyWithImpl<$Res>;
  $Res call({Entry entry});

  $EntryCopyWith<$Res> get entry;
}

/// @nodoc
class __$$_LoadEntryCopyWithImpl<$Res> extends _$EntryEventCopyWithImpl<$Res>
    implements _$$_LoadEntryCopyWith<$Res> {
  __$$_LoadEntryCopyWithImpl(
      _$_LoadEntry _value, $Res Function(_$_LoadEntry) _then)
      : super(_value, (v) => _then(v as _$_LoadEntry));

  @override
  _$_LoadEntry get _value => super._value as _$_LoadEntry;

  @override
  $Res call({
    Object? entry = freezed,
  }) {
    return _then(_$_LoadEntry(
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

class _$_LoadEntry implements _LoadEntry {
  const _$_LoadEntry({required this.entry});

  @override
  final Entry entry;

  @override
  String toString() {
    return 'EntryEvent.loadEntry(entry: $entry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadEntry &&
            const DeepCollectionEquality().equals(other.entry, entry));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(entry));

  @JsonKey(ignore: true)
  @override
  _$$_LoadEntryCopyWith<_$_LoadEntry> get copyWith =>
      __$$_LoadEntryCopyWithImpl<_$_LoadEntry>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) loadTask,
    required TResult Function() closeTask,
    required TResult Function(Entry entry) loadEntry,
    required TResult Function(String text) addData,
    required TResult Function() updateData,
    required TResult Function() deleteData,
  }) {
    return loadEntry(entry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? loadTask,
    TResult Function()? closeTask,
    TResult Function(Entry entry)? loadEntry,
    TResult Function(String text)? addData,
    TResult Function()? updateData,
    TResult Function()? deleteData,
  }) {
    return loadEntry?.call(entry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? loadTask,
    TResult Function()? closeTask,
    TResult Function(Entry entry)? loadEntry,
    TResult Function(String text)? addData,
    TResult Function()? updateData,
    TResult Function()? deleteData,
    required TResult orElse(),
  }) {
    if (loadEntry != null) {
      return loadEntry(entry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTask value) loadTask,
    required TResult Function(_CloseTask value) closeTask,
    required TResult Function(_LoadEntry value) loadEntry,
    required TResult Function(_AddData value) addData,
    required TResult Function(_UpdateData value) updateData,
    required TResult Function(_DeleteData value) deleteData,
  }) {
    return loadEntry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadTask value)? loadTask,
    TResult Function(_CloseTask value)? closeTask,
    TResult Function(_LoadEntry value)? loadEntry,
    TResult Function(_AddData value)? addData,
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_DeleteData value)? deleteData,
  }) {
    return loadEntry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTask value)? loadTask,
    TResult Function(_CloseTask value)? closeTask,
    TResult Function(_LoadEntry value)? loadEntry,
    TResult Function(_AddData value)? addData,
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_DeleteData value)? deleteData,
    required TResult orElse(),
  }) {
    if (loadEntry != null) {
      return loadEntry(this);
    }
    return orElse();
  }
}

abstract class _LoadEntry implements EntryEvent {
  const factory _LoadEntry({required final Entry entry}) = _$_LoadEntry;

  Entry get entry;
  @JsonKey(ignore: true)
  _$$_LoadEntryCopyWith<_$_LoadEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddDataCopyWith<$Res> {
  factory _$$_AddDataCopyWith(
          _$_AddData value, $Res Function(_$_AddData) then) =
      __$$_AddDataCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class __$$_AddDataCopyWithImpl<$Res> extends _$EntryEventCopyWithImpl<$Res>
    implements _$$_AddDataCopyWith<$Res> {
  __$$_AddDataCopyWithImpl(_$_AddData _value, $Res Function(_$_AddData) _then)
      : super(_value, (v) => _then(v as _$_AddData));

  @override
  _$_AddData get _value => super._value as _$_AddData;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_$_AddData(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddData implements _AddData {
  const _$_AddData({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'EntryEvent.addData(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddData &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$$_AddDataCopyWith<_$_AddData> get copyWith =>
      __$$_AddDataCopyWithImpl<_$_AddData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) loadTask,
    required TResult Function() closeTask,
    required TResult Function(Entry entry) loadEntry,
    required TResult Function(String text) addData,
    required TResult Function() updateData,
    required TResult Function() deleteData,
  }) {
    return addData(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? loadTask,
    TResult Function()? closeTask,
    TResult Function(Entry entry)? loadEntry,
    TResult Function(String text)? addData,
    TResult Function()? updateData,
    TResult Function()? deleteData,
  }) {
    return addData?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? loadTask,
    TResult Function()? closeTask,
    TResult Function(Entry entry)? loadEntry,
    TResult Function(String text)? addData,
    TResult Function()? updateData,
    TResult Function()? deleteData,
    required TResult orElse(),
  }) {
    if (addData != null) {
      return addData(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTask value) loadTask,
    required TResult Function(_CloseTask value) closeTask,
    required TResult Function(_LoadEntry value) loadEntry,
    required TResult Function(_AddData value) addData,
    required TResult Function(_UpdateData value) updateData,
    required TResult Function(_DeleteData value) deleteData,
  }) {
    return addData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadTask value)? loadTask,
    TResult Function(_CloseTask value)? closeTask,
    TResult Function(_LoadEntry value)? loadEntry,
    TResult Function(_AddData value)? addData,
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_DeleteData value)? deleteData,
  }) {
    return addData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTask value)? loadTask,
    TResult Function(_CloseTask value)? closeTask,
    TResult Function(_LoadEntry value)? loadEntry,
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

abstract class _AddData implements EntryEvent {
  const factory _AddData({required final String text}) = _$_AddData;

  String get text;
  @JsonKey(ignore: true)
  _$$_AddDataCopyWith<_$_AddData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateDataCopyWith<$Res> {
  factory _$$_UpdateDataCopyWith(
          _$_UpdateData value, $Res Function(_$_UpdateData) then) =
      __$$_UpdateDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdateDataCopyWithImpl<$Res> extends _$EntryEventCopyWithImpl<$Res>
    implements _$$_UpdateDataCopyWith<$Res> {
  __$$_UpdateDataCopyWithImpl(
      _$_UpdateData _value, $Res Function(_$_UpdateData) _then)
      : super(_value, (v) => _then(v as _$_UpdateData));

  @override
  _$_UpdateData get _value => super._value as _$_UpdateData;
}

/// @nodoc

class _$_UpdateData implements _UpdateData {
  const _$_UpdateData();

  @override
  String toString() {
    return 'EntryEvent.updateData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UpdateData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) loadTask,
    required TResult Function() closeTask,
    required TResult Function(Entry entry) loadEntry,
    required TResult Function(String text) addData,
    required TResult Function() updateData,
    required TResult Function() deleteData,
  }) {
    return updateData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? loadTask,
    TResult Function()? closeTask,
    TResult Function(Entry entry)? loadEntry,
    TResult Function(String text)? addData,
    TResult Function()? updateData,
    TResult Function()? deleteData,
  }) {
    return updateData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? loadTask,
    TResult Function()? closeTask,
    TResult Function(Entry entry)? loadEntry,
    TResult Function(String text)? addData,
    TResult Function()? updateData,
    TResult Function()? deleteData,
    required TResult orElse(),
  }) {
    if (updateData != null) {
      return updateData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTask value) loadTask,
    required TResult Function(_CloseTask value) closeTask,
    required TResult Function(_LoadEntry value) loadEntry,
    required TResult Function(_AddData value) addData,
    required TResult Function(_UpdateData value) updateData,
    required TResult Function(_DeleteData value) deleteData,
  }) {
    return updateData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadTask value)? loadTask,
    TResult Function(_CloseTask value)? closeTask,
    TResult Function(_LoadEntry value)? loadEntry,
    TResult Function(_AddData value)? addData,
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_DeleteData value)? deleteData,
  }) {
    return updateData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTask value)? loadTask,
    TResult Function(_CloseTask value)? closeTask,
    TResult Function(_LoadEntry value)? loadEntry,
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

abstract class _UpdateData implements EntryEvent {
  const factory _UpdateData() = _$_UpdateData;
}

/// @nodoc
abstract class _$$_DeleteDataCopyWith<$Res> {
  factory _$$_DeleteDataCopyWith(
          _$_DeleteData value, $Res Function(_$_DeleteData) then) =
      __$$_DeleteDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeleteDataCopyWithImpl<$Res> extends _$EntryEventCopyWithImpl<$Res>
    implements _$$_DeleteDataCopyWith<$Res> {
  __$$_DeleteDataCopyWithImpl(
      _$_DeleteData _value, $Res Function(_$_DeleteData) _then)
      : super(_value, (v) => _then(v as _$_DeleteData));

  @override
  _$_DeleteData get _value => super._value as _$_DeleteData;
}

/// @nodoc

class _$_DeleteData implements _DeleteData {
  const _$_DeleteData();

  @override
  String toString() {
    return 'EntryEvent.deleteData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeleteData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) loadTask,
    required TResult Function() closeTask,
    required TResult Function(Entry entry) loadEntry,
    required TResult Function(String text) addData,
    required TResult Function() updateData,
    required TResult Function() deleteData,
  }) {
    return deleteData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? loadTask,
    TResult Function()? closeTask,
    TResult Function(Entry entry)? loadEntry,
    TResult Function(String text)? addData,
    TResult Function()? updateData,
    TResult Function()? deleteData,
  }) {
    return deleteData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? loadTask,
    TResult Function()? closeTask,
    TResult Function(Entry entry)? loadEntry,
    TResult Function(String text)? addData,
    TResult Function()? updateData,
    TResult Function()? deleteData,
    required TResult orElse(),
  }) {
    if (deleteData != null) {
      return deleteData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTask value) loadTask,
    required TResult Function(_CloseTask value) closeTask,
    required TResult Function(_LoadEntry value) loadEntry,
    required TResult Function(_AddData value) addData,
    required TResult Function(_UpdateData value) updateData,
    required TResult Function(_DeleteData value) deleteData,
  }) {
    return deleteData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadTask value)? loadTask,
    TResult Function(_CloseTask value)? closeTask,
    TResult Function(_LoadEntry value)? loadEntry,
    TResult Function(_AddData value)? addData,
    TResult Function(_UpdateData value)? updateData,
    TResult Function(_DeleteData value)? deleteData,
  }) {
    return deleteData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTask value)? loadTask,
    TResult Function(_CloseTask value)? closeTask,
    TResult Function(_LoadEntry value)? loadEntry,
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

abstract class _DeleteData implements EntryEvent {
  const factory _DeleteData() = _$_DeleteData;
}

/// @nodoc
mixin _$EntryState {
  Task get task => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) taskLoaded,
    required TResult Function(Task task, Entry entry) entryLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? taskLoaded,
    TResult Function(Task task, Entry entry)? entryLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? taskLoaded,
    TResult Function(Task task, Entry entry)? entryLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskLoaded value) taskLoaded,
    required TResult Function(_EntryLoaded value) entryLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TaskLoaded value)? taskLoaded,
    TResult Function(_EntryLoaded value)? entryLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskLoaded value)? taskLoaded,
    TResult Function(_EntryLoaded value)? entryLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntryStateCopyWith<EntryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryStateCopyWith<$Res> {
  factory $EntryStateCopyWith(
          EntryState value, $Res Function(EntryState) then) =
      _$EntryStateCopyWithImpl<$Res>;
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class _$EntryStateCopyWithImpl<$Res> implements $EntryStateCopyWith<$Res> {
  _$EntryStateCopyWithImpl(this._value, this._then);

  final EntryState _value;
  // ignore: unused_field
  final $Res Function(EntryState) _then;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_value.copyWith(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc
abstract class _$$_TaskLoadedCopyWith<$Res>
    implements $EntryStateCopyWith<$Res> {
  factory _$$_TaskLoadedCopyWith(
          _$_TaskLoaded value, $Res Function(_$_TaskLoaded) then) =
      __$$_TaskLoadedCopyWithImpl<$Res>;
  @override
  $Res call({Task task});

  @override
  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$_TaskLoadedCopyWithImpl<$Res> extends _$EntryStateCopyWithImpl<$Res>
    implements _$$_TaskLoadedCopyWith<$Res> {
  __$$_TaskLoadedCopyWithImpl(
      _$_TaskLoaded _value, $Res Function(_$_TaskLoaded) _then)
      : super(_value, (v) => _then(v as _$_TaskLoaded));

  @override
  _$_TaskLoaded get _value => super._value as _$_TaskLoaded;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_$_TaskLoaded(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$_TaskLoaded implements _TaskLoaded {
  const _$_TaskLoaded({required this.task});

  @override
  final Task task;

  @override
  String toString() {
    return 'EntryState.taskLoaded(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskLoaded &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$$_TaskLoadedCopyWith<_$_TaskLoaded> get copyWith =>
      __$$_TaskLoadedCopyWithImpl<_$_TaskLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) taskLoaded,
    required TResult Function(Task task, Entry entry) entryLoaded,
  }) {
    return taskLoaded(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? taskLoaded,
    TResult Function(Task task, Entry entry)? entryLoaded,
  }) {
    return taskLoaded?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? taskLoaded,
    TResult Function(Task task, Entry entry)? entryLoaded,
    required TResult orElse(),
  }) {
    if (taskLoaded != null) {
      return taskLoaded(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskLoaded value) taskLoaded,
    required TResult Function(_EntryLoaded value) entryLoaded,
  }) {
    return taskLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TaskLoaded value)? taskLoaded,
    TResult Function(_EntryLoaded value)? entryLoaded,
  }) {
    return taskLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskLoaded value)? taskLoaded,
    TResult Function(_EntryLoaded value)? entryLoaded,
    required TResult orElse(),
  }) {
    if (taskLoaded != null) {
      return taskLoaded(this);
    }
    return orElse();
  }
}

abstract class _TaskLoaded implements EntryState {
  const factory _TaskLoaded({required final Task task}) = _$_TaskLoaded;

  @override
  Task get task;
  @override
  @JsonKey(ignore: true)
  _$$_TaskLoadedCopyWith<_$_TaskLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EntryLoadedCopyWith<$Res>
    implements $EntryStateCopyWith<$Res> {
  factory _$$_EntryLoadedCopyWith(
          _$_EntryLoaded value, $Res Function(_$_EntryLoaded) then) =
      __$$_EntryLoadedCopyWithImpl<$Res>;
  @override
  $Res call({Task task, Entry entry});

  @override
  $TaskCopyWith<$Res> get task;
  $EntryCopyWith<$Res> get entry;
}

/// @nodoc
class __$$_EntryLoadedCopyWithImpl<$Res> extends _$EntryStateCopyWithImpl<$Res>
    implements _$$_EntryLoadedCopyWith<$Res> {
  __$$_EntryLoadedCopyWithImpl(
      _$_EntryLoaded _value, $Res Function(_$_EntryLoaded) _then)
      : super(_value, (v) => _then(v as _$_EntryLoaded));

  @override
  _$_EntryLoaded get _value => super._value as _$_EntryLoaded;

  @override
  $Res call({
    Object? task = freezed,
    Object? entry = freezed,
  }) {
    return _then(_$_EntryLoaded(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
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

class _$_EntryLoaded implements _EntryLoaded {
  const _$_EntryLoaded({required this.task, required this.entry});

  @override
  final Task task;
  @override
  final Entry entry;

  @override
  String toString() {
    return 'EntryState.entryLoaded(task: $task, entry: $entry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntryLoaded &&
            const DeepCollectionEquality().equals(other.task, task) &&
            const DeepCollectionEquality().equals(other.entry, entry));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(task),
      const DeepCollectionEquality().hash(entry));

  @JsonKey(ignore: true)
  @override
  _$$_EntryLoadedCopyWith<_$_EntryLoaded> get copyWith =>
      __$$_EntryLoadedCopyWithImpl<_$_EntryLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) taskLoaded,
    required TResult Function(Task task, Entry entry) entryLoaded,
  }) {
    return entryLoaded(task, entry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? taskLoaded,
    TResult Function(Task task, Entry entry)? entryLoaded,
  }) {
    return entryLoaded?.call(task, entry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? taskLoaded,
    TResult Function(Task task, Entry entry)? entryLoaded,
    required TResult orElse(),
  }) {
    if (entryLoaded != null) {
      return entryLoaded(task, entry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskLoaded value) taskLoaded,
    required TResult Function(_EntryLoaded value) entryLoaded,
  }) {
    return entryLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TaskLoaded value)? taskLoaded,
    TResult Function(_EntryLoaded value)? entryLoaded,
  }) {
    return entryLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskLoaded value)? taskLoaded,
    TResult Function(_EntryLoaded value)? entryLoaded,
    required TResult orElse(),
  }) {
    if (entryLoaded != null) {
      return entryLoaded(this);
    }
    return orElse();
  }
}

abstract class _EntryLoaded implements EntryState {
  const factory _EntryLoaded(
      {required final Task task, required final Entry entry}) = _$_EntryLoaded;

  @override
  Task get task;
  Entry get entry;
  @override
  @JsonKey(ignore: true)
  _$$_EntryLoadedCopyWith<_$_EntryLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
