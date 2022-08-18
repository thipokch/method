// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskEvent {
  String get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) loadTask,
    required TResult Function(String data) closeTask,
    required TResult Function(String data) loadEntry,
    required TResult Function(String data) addData,
    required TResult Function(String data) updateData,
    required TResult Function(String data) deleteData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String data)? loadTask,
    TResult Function(String data)? closeTask,
    TResult Function(String data)? loadEntry,
    TResult Function(String data)? addData,
    TResult Function(String data)? updateData,
    TResult Function(String data)? deleteData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? loadTask,
    TResult Function(String data)? closeTask,
    TResult Function(String data)? loadEntry,
    TResult Function(String data)? addData,
    TResult Function(String data)? updateData,
    TResult Function(String data)? deleteData,
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

  @JsonKey(ignore: true)
  $TaskEventCopyWith<TaskEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEventCopyWith<$Res> {
  factory $TaskEventCopyWith(TaskEvent value, $Res Function(TaskEvent) then) =
      _$TaskEventCopyWithImpl<$Res>;
  $Res call({String data});
}

/// @nodoc
class _$TaskEventCopyWithImpl<$Res> implements $TaskEventCopyWith<$Res> {
  _$TaskEventCopyWithImpl(this._value, this._then);

  final TaskEvent _value;
  // ignore: unused_field
  final $Res Function(TaskEvent) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LoadTaskCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory _$$_LoadTaskCopyWith(
          _$_LoadTask value, $Res Function(_$_LoadTask) then) =
      __$$_LoadTaskCopyWithImpl<$Res>;
  @override
  $Res call({String data});
}

/// @nodoc
class __$$_LoadTaskCopyWithImpl<$Res> extends _$TaskEventCopyWithImpl<$Res>
    implements _$$_LoadTaskCopyWith<$Res> {
  __$$_LoadTaskCopyWithImpl(
      _$_LoadTask _value, $Res Function(_$_LoadTask) _then)
      : super(_value, (v) => _then(v as _$_LoadTask));

  @override
  _$_LoadTask get _value => super._value as _$_LoadTask;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_LoadTask(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadTask implements _LoadTask {
  const _$_LoadTask({required this.data});

  @override
  final String data;

  @override
  String toString() {
    return 'TaskEvent.loadTask(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadTask &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_LoadTaskCopyWith<_$_LoadTask> get copyWith =>
      __$$_LoadTaskCopyWithImpl<_$_LoadTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) loadTask,
    required TResult Function(String data) closeTask,
    required TResult Function(String data) loadEntry,
    required TResult Function(String data) addData,
    required TResult Function(String data) updateData,
    required TResult Function(String data) deleteData,
  }) {
    return loadTask(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String data)? loadTask,
    TResult Function(String data)? closeTask,
    TResult Function(String data)? loadEntry,
    TResult Function(String data)? addData,
    TResult Function(String data)? updateData,
    TResult Function(String data)? deleteData,
  }) {
    return loadTask?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? loadTask,
    TResult Function(String data)? closeTask,
    TResult Function(String data)? loadEntry,
    TResult Function(String data)? addData,
    TResult Function(String data)? updateData,
    TResult Function(String data)? deleteData,
    required TResult orElse(),
  }) {
    if (loadTask != null) {
      return loadTask(data);
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

abstract class _LoadTask implements TaskEvent {
  const factory _LoadTask({required final String data}) = _$_LoadTask;

  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadTaskCopyWith<_$_LoadTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CloseTaskCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory _$$_CloseTaskCopyWith(
          _$_CloseTask value, $Res Function(_$_CloseTask) then) =
      __$$_CloseTaskCopyWithImpl<$Res>;
  @override
  $Res call({String data});
}

/// @nodoc
class __$$_CloseTaskCopyWithImpl<$Res> extends _$TaskEventCopyWithImpl<$Res>
    implements _$$_CloseTaskCopyWith<$Res> {
  __$$_CloseTaskCopyWithImpl(
      _$_CloseTask _value, $Res Function(_$_CloseTask) _then)
      : super(_value, (v) => _then(v as _$_CloseTask));

  @override
  _$_CloseTask get _value => super._value as _$_CloseTask;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_CloseTask(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CloseTask implements _CloseTask {
  const _$_CloseTask({required this.data});

  @override
  final String data;

  @override
  String toString() {
    return 'TaskEvent.closeTask(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CloseTask &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_CloseTaskCopyWith<_$_CloseTask> get copyWith =>
      __$$_CloseTaskCopyWithImpl<_$_CloseTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) loadTask,
    required TResult Function(String data) closeTask,
    required TResult Function(String data) loadEntry,
    required TResult Function(String data) addData,
    required TResult Function(String data) updateData,
    required TResult Function(String data) deleteData,
  }) {
    return closeTask(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String data)? loadTask,
    TResult Function(String data)? closeTask,
    TResult Function(String data)? loadEntry,
    TResult Function(String data)? addData,
    TResult Function(String data)? updateData,
    TResult Function(String data)? deleteData,
  }) {
    return closeTask?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? loadTask,
    TResult Function(String data)? closeTask,
    TResult Function(String data)? loadEntry,
    TResult Function(String data)? addData,
    TResult Function(String data)? updateData,
    TResult Function(String data)? deleteData,
    required TResult orElse(),
  }) {
    if (closeTask != null) {
      return closeTask(data);
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

abstract class _CloseTask implements TaskEvent {
  const factory _CloseTask({required final String data}) = _$_CloseTask;

  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$_CloseTaskCopyWith<_$_CloseTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadEntryCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory _$$_LoadEntryCopyWith(
          _$_LoadEntry value, $Res Function(_$_LoadEntry) then) =
      __$$_LoadEntryCopyWithImpl<$Res>;
  @override
  $Res call({String data});
}

/// @nodoc
class __$$_LoadEntryCopyWithImpl<$Res> extends _$TaskEventCopyWithImpl<$Res>
    implements _$$_LoadEntryCopyWith<$Res> {
  __$$_LoadEntryCopyWithImpl(
      _$_LoadEntry _value, $Res Function(_$_LoadEntry) _then)
      : super(_value, (v) => _then(v as _$_LoadEntry));

  @override
  _$_LoadEntry get _value => super._value as _$_LoadEntry;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_LoadEntry(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadEntry implements _LoadEntry {
  const _$_LoadEntry({required this.data});

  @override
  final String data;

  @override
  String toString() {
    return 'TaskEvent.loadEntry(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadEntry &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_LoadEntryCopyWith<_$_LoadEntry> get copyWith =>
      __$$_LoadEntryCopyWithImpl<_$_LoadEntry>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) loadTask,
    required TResult Function(String data) closeTask,
    required TResult Function(String data) loadEntry,
    required TResult Function(String data) addData,
    required TResult Function(String data) updateData,
    required TResult Function(String data) deleteData,
  }) {
    return loadEntry(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String data)? loadTask,
    TResult Function(String data)? closeTask,
    TResult Function(String data)? loadEntry,
    TResult Function(String data)? addData,
    TResult Function(String data)? updateData,
    TResult Function(String data)? deleteData,
  }) {
    return loadEntry?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? loadTask,
    TResult Function(String data)? closeTask,
    TResult Function(String data)? loadEntry,
    TResult Function(String data)? addData,
    TResult Function(String data)? updateData,
    TResult Function(String data)? deleteData,
    required TResult orElse(),
  }) {
    if (loadEntry != null) {
      return loadEntry(data);
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

abstract class _LoadEntry implements TaskEvent {
  const factory _LoadEntry({required final String data}) = _$_LoadEntry;

  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadEntryCopyWith<_$_LoadEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddDataCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory _$$_AddDataCopyWith(
          _$_AddData value, $Res Function(_$_AddData) then) =
      __$$_AddDataCopyWithImpl<$Res>;
  @override
  $Res call({String data});
}

/// @nodoc
class __$$_AddDataCopyWithImpl<$Res> extends _$TaskEventCopyWithImpl<$Res>
    implements _$$_AddDataCopyWith<$Res> {
  __$$_AddDataCopyWithImpl(_$_AddData _value, $Res Function(_$_AddData) _then)
      : super(_value, (v) => _then(v as _$_AddData));

  @override
  _$_AddData get _value => super._value as _$_AddData;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_AddData(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddData implements _AddData {
  const _$_AddData({required this.data});

  @override
  final String data;

  @override
  String toString() {
    return 'TaskEvent.addData(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddData &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_AddDataCopyWith<_$_AddData> get copyWith =>
      __$$_AddDataCopyWithImpl<_$_AddData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) loadTask,
    required TResult Function(String data) closeTask,
    required TResult Function(String data) loadEntry,
    required TResult Function(String data) addData,
    required TResult Function(String data) updateData,
    required TResult Function(String data) deleteData,
  }) {
    return addData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String data)? loadTask,
    TResult Function(String data)? closeTask,
    TResult Function(String data)? loadEntry,
    TResult Function(String data)? addData,
    TResult Function(String data)? updateData,
    TResult Function(String data)? deleteData,
  }) {
    return addData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? loadTask,
    TResult Function(String data)? closeTask,
    TResult Function(String data)? loadEntry,
    TResult Function(String data)? addData,
    TResult Function(String data)? updateData,
    TResult Function(String data)? deleteData,
    required TResult orElse(),
  }) {
    if (addData != null) {
      return addData(data);
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

abstract class _AddData implements TaskEvent {
  const factory _AddData({required final String data}) = _$_AddData;

  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$_AddDataCopyWith<_$_AddData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateDataCopyWith<$Res>
    implements $TaskEventCopyWith<$Res> {
  factory _$$_UpdateDataCopyWith(
          _$_UpdateData value, $Res Function(_$_UpdateData) then) =
      __$$_UpdateDataCopyWithImpl<$Res>;
  @override
  $Res call({String data});
}

/// @nodoc
class __$$_UpdateDataCopyWithImpl<$Res> extends _$TaskEventCopyWithImpl<$Res>
    implements _$$_UpdateDataCopyWith<$Res> {
  __$$_UpdateDataCopyWithImpl(
      _$_UpdateData _value, $Res Function(_$_UpdateData) _then)
      : super(_value, (v) => _then(v as _$_UpdateData));

  @override
  _$_UpdateData get _value => super._value as _$_UpdateData;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_UpdateData(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateData implements _UpdateData {
  const _$_UpdateData({required this.data});

  @override
  final String data;

  @override
  String toString() {
    return 'TaskEvent.updateData(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateData &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateDataCopyWith<_$_UpdateData> get copyWith =>
      __$$_UpdateDataCopyWithImpl<_$_UpdateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) loadTask,
    required TResult Function(String data) closeTask,
    required TResult Function(String data) loadEntry,
    required TResult Function(String data) addData,
    required TResult Function(String data) updateData,
    required TResult Function(String data) deleteData,
  }) {
    return updateData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String data)? loadTask,
    TResult Function(String data)? closeTask,
    TResult Function(String data)? loadEntry,
    TResult Function(String data)? addData,
    TResult Function(String data)? updateData,
    TResult Function(String data)? deleteData,
  }) {
    return updateData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? loadTask,
    TResult Function(String data)? closeTask,
    TResult Function(String data)? loadEntry,
    TResult Function(String data)? addData,
    TResult Function(String data)? updateData,
    TResult Function(String data)? deleteData,
    required TResult orElse(),
  }) {
    if (updateData != null) {
      return updateData(data);
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

abstract class _UpdateData implements TaskEvent {
  const factory _UpdateData({required final String data}) = _$_UpdateData;

  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateDataCopyWith<_$_UpdateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteDataCopyWith<$Res>
    implements $TaskEventCopyWith<$Res> {
  factory _$$_DeleteDataCopyWith(
          _$_DeleteData value, $Res Function(_$_DeleteData) then) =
      __$$_DeleteDataCopyWithImpl<$Res>;
  @override
  $Res call({String data});
}

/// @nodoc
class __$$_DeleteDataCopyWithImpl<$Res> extends _$TaskEventCopyWithImpl<$Res>
    implements _$$_DeleteDataCopyWith<$Res> {
  __$$_DeleteDataCopyWithImpl(
      _$_DeleteData _value, $Res Function(_$_DeleteData) _then)
      : super(_value, (v) => _then(v as _$_DeleteData));

  @override
  _$_DeleteData get _value => super._value as _$_DeleteData;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_DeleteData(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteData implements _DeleteData {
  const _$_DeleteData({required this.data});

  @override
  final String data;

  @override
  String toString() {
    return 'TaskEvent.deleteData(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteData &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_DeleteDataCopyWith<_$_DeleteData> get copyWith =>
      __$$_DeleteDataCopyWithImpl<_$_DeleteData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) loadTask,
    required TResult Function(String data) closeTask,
    required TResult Function(String data) loadEntry,
    required TResult Function(String data) addData,
    required TResult Function(String data) updateData,
    required TResult Function(String data) deleteData,
  }) {
    return deleteData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String data)? loadTask,
    TResult Function(String data)? closeTask,
    TResult Function(String data)? loadEntry,
    TResult Function(String data)? addData,
    TResult Function(String data)? updateData,
    TResult Function(String data)? deleteData,
  }) {
    return deleteData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? loadTask,
    TResult Function(String data)? closeTask,
    TResult Function(String data)? loadEntry,
    TResult Function(String data)? addData,
    TResult Function(String data)? updateData,
    TResult Function(String data)? deleteData,
    required TResult orElse(),
  }) {
    if (deleteData != null) {
      return deleteData(data);
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

abstract class _DeleteData implements TaskEvent {
  const factory _DeleteData({required final String data}) = _$_DeleteData;

  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteDataCopyWith<_$_DeleteData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskState {
  String get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) initial,
    required TResult Function(String data) taskLoaded,
    required TResult Function(String data) entryLoaded,
    required TResult Function(String data) entryUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String data)? initial,
    TResult Function(String data)? taskLoaded,
    TResult Function(String data)? entryLoaded,
    TResult Function(String data)? entryUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? initial,
    TResult Function(String data)? taskLoaded,
    TResult Function(String data)? entryLoaded,
    TResult Function(String data)? entryUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TaskLoaded value) taskLoaded,
    required TResult Function(_EntryLoaded value) entryLoaded,
    required TResult Function(_EntryUpdated value) entryUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TaskLoaded value)? taskLoaded,
    TResult Function(_EntryLoaded value)? entryLoaded,
    TResult Function(_EntryUpdated value)? entryUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TaskLoaded value)? taskLoaded,
    TResult Function(_EntryLoaded value)? entryLoaded,
    TResult Function(_EntryUpdated value)? entryUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskStateCopyWith<TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res>;
  $Res call({String data});
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res> implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  final TaskState _value;
  // ignore: unused_field
  final $Res Function(TaskState) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $TaskStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call({String data});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$TaskStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_Initial(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.data = "Initial"});

  @override
  @JsonKey()
  final String data;

  @override
  String toString() {
    return 'TaskState.initial(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) initial,
    required TResult Function(String data) taskLoaded,
    required TResult Function(String data) entryLoaded,
    required TResult Function(String data) entryUpdated,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String data)? initial,
    TResult Function(String data)? taskLoaded,
    TResult Function(String data)? entryLoaded,
    TResult Function(String data)? entryUpdated,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? initial,
    TResult Function(String data)? taskLoaded,
    TResult Function(String data)? entryLoaded,
    TResult Function(String data)? entryUpdated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TaskLoaded value) taskLoaded,
    required TResult Function(_EntryLoaded value) entryLoaded,
    required TResult Function(_EntryUpdated value) entryUpdated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TaskLoaded value)? taskLoaded,
    TResult Function(_EntryLoaded value)? entryLoaded,
    TResult Function(_EntryUpdated value)? entryUpdated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TaskLoaded value)? taskLoaded,
    TResult Function(_EntryLoaded value)? entryLoaded,
    TResult Function(_EntryUpdated value)? entryUpdated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TaskState {
  const factory _Initial({final String data}) = _$_Initial;

  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TaskLoadedCopyWith<$Res>
    implements $TaskStateCopyWith<$Res> {
  factory _$$_TaskLoadedCopyWith(
          _$_TaskLoaded value, $Res Function(_$_TaskLoaded) then) =
      __$$_TaskLoadedCopyWithImpl<$Res>;
  @override
  $Res call({String data});
}

/// @nodoc
class __$$_TaskLoadedCopyWithImpl<$Res> extends _$TaskStateCopyWithImpl<$Res>
    implements _$$_TaskLoadedCopyWith<$Res> {
  __$$_TaskLoadedCopyWithImpl(
      _$_TaskLoaded _value, $Res Function(_$_TaskLoaded) _then)
      : super(_value, (v) => _then(v as _$_TaskLoaded));

  @override
  _$_TaskLoaded get _value => super._value as _$_TaskLoaded;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_TaskLoaded(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TaskLoaded implements _TaskLoaded {
  const _$_TaskLoaded({this.data = "Task Loaded"});

  @override
  @JsonKey()
  final String data;

  @override
  String toString() {
    return 'TaskState.taskLoaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskLoaded &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_TaskLoadedCopyWith<_$_TaskLoaded> get copyWith =>
      __$$_TaskLoadedCopyWithImpl<_$_TaskLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) initial,
    required TResult Function(String data) taskLoaded,
    required TResult Function(String data) entryLoaded,
    required TResult Function(String data) entryUpdated,
  }) {
    return taskLoaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String data)? initial,
    TResult Function(String data)? taskLoaded,
    TResult Function(String data)? entryLoaded,
    TResult Function(String data)? entryUpdated,
  }) {
    return taskLoaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? initial,
    TResult Function(String data)? taskLoaded,
    TResult Function(String data)? entryLoaded,
    TResult Function(String data)? entryUpdated,
    required TResult orElse(),
  }) {
    if (taskLoaded != null) {
      return taskLoaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TaskLoaded value) taskLoaded,
    required TResult Function(_EntryLoaded value) entryLoaded,
    required TResult Function(_EntryUpdated value) entryUpdated,
  }) {
    return taskLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TaskLoaded value)? taskLoaded,
    TResult Function(_EntryLoaded value)? entryLoaded,
    TResult Function(_EntryUpdated value)? entryUpdated,
  }) {
    return taskLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TaskLoaded value)? taskLoaded,
    TResult Function(_EntryLoaded value)? entryLoaded,
    TResult Function(_EntryUpdated value)? entryUpdated,
    required TResult orElse(),
  }) {
    if (taskLoaded != null) {
      return taskLoaded(this);
    }
    return orElse();
  }
}

abstract class _TaskLoaded implements TaskState {
  const factory _TaskLoaded({final String data}) = _$_TaskLoaded;

  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$_TaskLoadedCopyWith<_$_TaskLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EntryLoadedCopyWith<$Res>
    implements $TaskStateCopyWith<$Res> {
  factory _$$_EntryLoadedCopyWith(
          _$_EntryLoaded value, $Res Function(_$_EntryLoaded) then) =
      __$$_EntryLoadedCopyWithImpl<$Res>;
  @override
  $Res call({String data});
}

/// @nodoc
class __$$_EntryLoadedCopyWithImpl<$Res> extends _$TaskStateCopyWithImpl<$Res>
    implements _$$_EntryLoadedCopyWith<$Res> {
  __$$_EntryLoadedCopyWithImpl(
      _$_EntryLoaded _value, $Res Function(_$_EntryLoaded) _then)
      : super(_value, (v) => _then(v as _$_EntryLoaded));

  @override
  _$_EntryLoaded get _value => super._value as _$_EntryLoaded;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_EntryLoaded(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EntryLoaded implements _EntryLoaded {
  const _$_EntryLoaded({this.data = "Entry Loaded"});

  @override
  @JsonKey()
  final String data;

  @override
  String toString() {
    return 'TaskState.entryLoaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntryLoaded &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_EntryLoadedCopyWith<_$_EntryLoaded> get copyWith =>
      __$$_EntryLoadedCopyWithImpl<_$_EntryLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) initial,
    required TResult Function(String data) taskLoaded,
    required TResult Function(String data) entryLoaded,
    required TResult Function(String data) entryUpdated,
  }) {
    return entryLoaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String data)? initial,
    TResult Function(String data)? taskLoaded,
    TResult Function(String data)? entryLoaded,
    TResult Function(String data)? entryUpdated,
  }) {
    return entryLoaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? initial,
    TResult Function(String data)? taskLoaded,
    TResult Function(String data)? entryLoaded,
    TResult Function(String data)? entryUpdated,
    required TResult orElse(),
  }) {
    if (entryLoaded != null) {
      return entryLoaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TaskLoaded value) taskLoaded,
    required TResult Function(_EntryLoaded value) entryLoaded,
    required TResult Function(_EntryUpdated value) entryUpdated,
  }) {
    return entryLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TaskLoaded value)? taskLoaded,
    TResult Function(_EntryLoaded value)? entryLoaded,
    TResult Function(_EntryUpdated value)? entryUpdated,
  }) {
    return entryLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TaskLoaded value)? taskLoaded,
    TResult Function(_EntryLoaded value)? entryLoaded,
    TResult Function(_EntryUpdated value)? entryUpdated,
    required TResult orElse(),
  }) {
    if (entryLoaded != null) {
      return entryLoaded(this);
    }
    return orElse();
  }
}

abstract class _EntryLoaded implements TaskState {
  const factory _EntryLoaded({final String data}) = _$_EntryLoaded;

  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$_EntryLoadedCopyWith<_$_EntryLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EntryUpdatedCopyWith<$Res>
    implements $TaskStateCopyWith<$Res> {
  factory _$$_EntryUpdatedCopyWith(
          _$_EntryUpdated value, $Res Function(_$_EntryUpdated) then) =
      __$$_EntryUpdatedCopyWithImpl<$Res>;
  @override
  $Res call({String data});
}

/// @nodoc
class __$$_EntryUpdatedCopyWithImpl<$Res> extends _$TaskStateCopyWithImpl<$Res>
    implements _$$_EntryUpdatedCopyWith<$Res> {
  __$$_EntryUpdatedCopyWithImpl(
      _$_EntryUpdated _value, $Res Function(_$_EntryUpdated) _then)
      : super(_value, (v) => _then(v as _$_EntryUpdated));

  @override
  _$_EntryUpdated get _value => super._value as _$_EntryUpdated;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_EntryUpdated(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EntryUpdated implements _EntryUpdated {
  const _$_EntryUpdated({this.data = "Entry Updated"});

  @override
  @JsonKey()
  final String data;

  @override
  String toString() {
    return 'TaskState.entryUpdated(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntryUpdated &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_EntryUpdatedCopyWith<_$_EntryUpdated> get copyWith =>
      __$$_EntryUpdatedCopyWithImpl<_$_EntryUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) initial,
    required TResult Function(String data) taskLoaded,
    required TResult Function(String data) entryLoaded,
    required TResult Function(String data) entryUpdated,
  }) {
    return entryUpdated(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String data)? initial,
    TResult Function(String data)? taskLoaded,
    TResult Function(String data)? entryLoaded,
    TResult Function(String data)? entryUpdated,
  }) {
    return entryUpdated?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? initial,
    TResult Function(String data)? taskLoaded,
    TResult Function(String data)? entryLoaded,
    TResult Function(String data)? entryUpdated,
    required TResult orElse(),
  }) {
    if (entryUpdated != null) {
      return entryUpdated(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TaskLoaded value) taskLoaded,
    required TResult Function(_EntryLoaded value) entryLoaded,
    required TResult Function(_EntryUpdated value) entryUpdated,
  }) {
    return entryUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TaskLoaded value)? taskLoaded,
    TResult Function(_EntryLoaded value)? entryLoaded,
    TResult Function(_EntryUpdated value)? entryUpdated,
  }) {
    return entryUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TaskLoaded value)? taskLoaded,
    TResult Function(_EntryLoaded value)? entryLoaded,
    TResult Function(_EntryUpdated value)? entryUpdated,
    required TResult orElse(),
  }) {
    if (entryUpdated != null) {
      return entryUpdated(this);
    }
    return orElse();
  }
}

abstract class _EntryUpdated implements TaskState {
  const factory _EntryUpdated({final String data}) = _$_EntryUpdated;

  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$_EntryUpdatedCopyWith<_$_EntryUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}
