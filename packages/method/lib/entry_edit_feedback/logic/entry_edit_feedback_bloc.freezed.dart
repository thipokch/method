// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entry_edit_feedback_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EntryEditFeedbackEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String taskId) startTask,
    required TResult Function(String entryId) startEntry,
    required TResult Function() stop,
    required TResult Function(int index) selectRating,
    required TResult Function(String text) updateNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String taskId)? startTask,
    TResult Function(String entryId)? startEntry,
    TResult Function()? stop,
    TResult Function(int index)? selectRating,
    TResult Function(String text)? updateNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String taskId)? startTask,
    TResult Function(String entryId)? startEntry,
    TResult Function()? stop,
    TResult Function(int index)? selectRating,
    TResult Function(String text)? updateNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_StartEntry value) startEntry,
    required TResult Function(_Stop value) stop,
    required TResult Function(_SelectRating value) selectRating,
    required TResult Function(_UpdateNote value) updateNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartTask value)? startTask,
    TResult Function(_StartEntry value)? startEntry,
    TResult Function(_Stop value)? stop,
    TResult Function(_SelectRating value)? selectRating,
    TResult Function(_UpdateNote value)? updateNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTask value)? startTask,
    TResult Function(_StartEntry value)? startEntry,
    TResult Function(_Stop value)? stop,
    TResult Function(_SelectRating value)? selectRating,
    TResult Function(_UpdateNote value)? updateNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryEditFeedbackEventCopyWith<$Res> {
  factory $EntryEditFeedbackEventCopyWith(EntryEditFeedbackEvent value,
          $Res Function(EntryEditFeedbackEvent) then) =
      _$EntryEditFeedbackEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EntryEditFeedbackEventCopyWithImpl<$Res>
    implements $EntryEditFeedbackEventCopyWith<$Res> {
  _$EntryEditFeedbackEventCopyWithImpl(this._value, this._then);

  final EntryEditFeedbackEvent _value;
  // ignore: unused_field
  final $Res Function(EntryEditFeedbackEvent) _then;
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
    extends _$EntryEditFeedbackEventCopyWithImpl<$Res>
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

class _$_StartTask extends _StartTask with EntryEditBase_StartTask {
  const _$_StartTask({required this.taskId}) : super._();

  @override
  final String taskId;

  @override
  String toString() {
    return 'EntryEditFeedbackEvent.startTask(taskId: $taskId)';
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
    required TResult Function() stop,
    required TResult Function(int index) selectRating,
    required TResult Function(String text) updateNote,
  }) {
    return startTask(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String taskId)? startTask,
    TResult Function(String entryId)? startEntry,
    TResult Function()? stop,
    TResult Function(int index)? selectRating,
    TResult Function(String text)? updateNote,
  }) {
    return startTask?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String taskId)? startTask,
    TResult Function(String entryId)? startEntry,
    TResult Function()? stop,
    TResult Function(int index)? selectRating,
    TResult Function(String text)? updateNote,
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
    required TResult Function(_Stop value) stop,
    required TResult Function(_SelectRating value) selectRating,
    required TResult Function(_UpdateNote value) updateNote,
  }) {
    return startTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartTask value)? startTask,
    TResult Function(_StartEntry value)? startEntry,
    TResult Function(_Stop value)? stop,
    TResult Function(_SelectRating value)? selectRating,
    TResult Function(_UpdateNote value)? updateNote,
  }) {
    return startTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTask value)? startTask,
    TResult Function(_StartEntry value)? startEntry,
    TResult Function(_Stop value)? stop,
    TResult Function(_SelectRating value)? selectRating,
    TResult Function(_UpdateNote value)? updateNote,
    required TResult orElse(),
  }) {
    if (startTask != null) {
      return startTask(this);
    }
    return orElse();
  }
}

abstract class _StartTask extends EntryEditFeedbackEvent
    implements EntryEditBase_StartTask {
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
    extends _$EntryEditFeedbackEventCopyWithImpl<$Res>
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

class _$_StartEntry extends _StartEntry with EntryEditBase_StartEntry {
  const _$_StartEntry({required this.entryId}) : super._();

  @override
  final String entryId;

  @override
  String toString() {
    return 'EntryEditFeedbackEvent.startEntry(entryId: $entryId)';
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
    required TResult Function() stop,
    required TResult Function(int index) selectRating,
    required TResult Function(String text) updateNote,
  }) {
    return startEntry(entryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String taskId)? startTask,
    TResult Function(String entryId)? startEntry,
    TResult Function()? stop,
    TResult Function(int index)? selectRating,
    TResult Function(String text)? updateNote,
  }) {
    return startEntry?.call(entryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String taskId)? startTask,
    TResult Function(String entryId)? startEntry,
    TResult Function()? stop,
    TResult Function(int index)? selectRating,
    TResult Function(String text)? updateNote,
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
    required TResult Function(_Stop value) stop,
    required TResult Function(_SelectRating value) selectRating,
    required TResult Function(_UpdateNote value) updateNote,
  }) {
    return startEntry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartTask value)? startTask,
    TResult Function(_StartEntry value)? startEntry,
    TResult Function(_Stop value)? stop,
    TResult Function(_SelectRating value)? selectRating,
    TResult Function(_UpdateNote value)? updateNote,
  }) {
    return startEntry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTask value)? startTask,
    TResult Function(_StartEntry value)? startEntry,
    TResult Function(_Stop value)? stop,
    TResult Function(_SelectRating value)? selectRating,
    TResult Function(_UpdateNote value)? updateNote,
    required TResult orElse(),
  }) {
    if (startEntry != null) {
      return startEntry(this);
    }
    return orElse();
  }
}

abstract class _StartEntry extends EntryEditFeedbackEvent
    implements EntryEditBase_StartEntry {
  const factory _StartEntry({required final String entryId}) = _$_StartEntry;
  const _StartEntry._() : super._();

  String get entryId;
  @JsonKey(ignore: true)
  _$$_StartEntryCopyWith<_$_StartEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StopCopyWith<$Res> {
  factory _$$_StopCopyWith(_$_Stop value, $Res Function(_$_Stop) then) =
      __$$_StopCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StopCopyWithImpl<$Res>
    extends _$EntryEditFeedbackEventCopyWithImpl<$Res>
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
    return 'EntryEditFeedbackEvent.stop()';
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
    required TResult Function(String taskId) startTask,
    required TResult Function(String entryId) startEntry,
    required TResult Function() stop,
    required TResult Function(int index) selectRating,
    required TResult Function(String text) updateNote,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String taskId)? startTask,
    TResult Function(String entryId)? startEntry,
    TResult Function()? stop,
    TResult Function(int index)? selectRating,
    TResult Function(String text)? updateNote,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String taskId)? startTask,
    TResult Function(String entryId)? startEntry,
    TResult Function()? stop,
    TResult Function(int index)? selectRating,
    TResult Function(String text)? updateNote,
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
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_StartEntry value) startEntry,
    required TResult Function(_Stop value) stop,
    required TResult Function(_SelectRating value) selectRating,
    required TResult Function(_UpdateNote value) updateNote,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartTask value)? startTask,
    TResult Function(_StartEntry value)? startEntry,
    TResult Function(_Stop value)? stop,
    TResult Function(_SelectRating value)? selectRating,
    TResult Function(_UpdateNote value)? updateNote,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTask value)? startTask,
    TResult Function(_StartEntry value)? startEntry,
    TResult Function(_Stop value)? stop,
    TResult Function(_SelectRating value)? selectRating,
    TResult Function(_UpdateNote value)? updateNote,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class _Stop extends EntryEditFeedbackEvent {
  const factory _Stop() = _$_Stop;
  const _Stop._() : super._();
}

/// @nodoc
abstract class _$$_SelectRatingCopyWith<$Res> {
  factory _$$_SelectRatingCopyWith(
          _$_SelectRating value, $Res Function(_$_SelectRating) then) =
      __$$_SelectRatingCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$$_SelectRatingCopyWithImpl<$Res>
    extends _$EntryEditFeedbackEventCopyWithImpl<$Res>
    implements _$$_SelectRatingCopyWith<$Res> {
  __$$_SelectRatingCopyWithImpl(
      _$_SelectRating _value, $Res Function(_$_SelectRating) _then)
      : super(_value, (v) => _then(v as _$_SelectRating));

  @override
  _$_SelectRating get _value => super._value as _$_SelectRating;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$_SelectRating(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectRating extends _SelectRating {
  const _$_SelectRating({required this.index}) : super._();

  @override
  final int index;

  @override
  String toString() {
    return 'EntryEditFeedbackEvent.selectRating(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectRating &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$_SelectRatingCopyWith<_$_SelectRating> get copyWith =>
      __$$_SelectRatingCopyWithImpl<_$_SelectRating>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String taskId) startTask,
    required TResult Function(String entryId) startEntry,
    required TResult Function() stop,
    required TResult Function(int index) selectRating,
    required TResult Function(String text) updateNote,
  }) {
    return selectRating(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String taskId)? startTask,
    TResult Function(String entryId)? startEntry,
    TResult Function()? stop,
    TResult Function(int index)? selectRating,
    TResult Function(String text)? updateNote,
  }) {
    return selectRating?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String taskId)? startTask,
    TResult Function(String entryId)? startEntry,
    TResult Function()? stop,
    TResult Function(int index)? selectRating,
    TResult Function(String text)? updateNote,
    required TResult orElse(),
  }) {
    if (selectRating != null) {
      return selectRating(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_StartEntry value) startEntry,
    required TResult Function(_Stop value) stop,
    required TResult Function(_SelectRating value) selectRating,
    required TResult Function(_UpdateNote value) updateNote,
  }) {
    return selectRating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartTask value)? startTask,
    TResult Function(_StartEntry value)? startEntry,
    TResult Function(_Stop value)? stop,
    TResult Function(_SelectRating value)? selectRating,
    TResult Function(_UpdateNote value)? updateNote,
  }) {
    return selectRating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTask value)? startTask,
    TResult Function(_StartEntry value)? startEntry,
    TResult Function(_Stop value)? stop,
    TResult Function(_SelectRating value)? selectRating,
    TResult Function(_UpdateNote value)? updateNote,
    required TResult orElse(),
  }) {
    if (selectRating != null) {
      return selectRating(this);
    }
    return orElse();
  }
}

abstract class _SelectRating extends EntryEditFeedbackEvent {
  const factory _SelectRating({required final int index}) = _$_SelectRating;
  const _SelectRating._() : super._();

  int get index;
  @JsonKey(ignore: true)
  _$$_SelectRatingCopyWith<_$_SelectRating> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateNoteCopyWith<$Res> {
  factory _$$_UpdateNoteCopyWith(
          _$_UpdateNote value, $Res Function(_$_UpdateNote) then) =
      __$$_UpdateNoteCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class __$$_UpdateNoteCopyWithImpl<$Res>
    extends _$EntryEditFeedbackEventCopyWithImpl<$Res>
    implements _$$_UpdateNoteCopyWith<$Res> {
  __$$_UpdateNoteCopyWithImpl(
      _$_UpdateNote _value, $Res Function(_$_UpdateNote) _then)
      : super(_value, (v) => _then(v as _$_UpdateNote));

  @override
  _$_UpdateNote get _value => super._value as _$_UpdateNote;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_$_UpdateNote(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateNote extends _UpdateNote {
  const _$_UpdateNote({required this.text}) : super._();

  @override
  final String text;

  @override
  String toString() {
    return 'EntryEditFeedbackEvent.updateNote(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateNote &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateNoteCopyWith<_$_UpdateNote> get copyWith =>
      __$$_UpdateNoteCopyWithImpl<_$_UpdateNote>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String taskId) startTask,
    required TResult Function(String entryId) startEntry,
    required TResult Function() stop,
    required TResult Function(int index) selectRating,
    required TResult Function(String text) updateNote,
  }) {
    return updateNote(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String taskId)? startTask,
    TResult Function(String entryId)? startEntry,
    TResult Function()? stop,
    TResult Function(int index)? selectRating,
    TResult Function(String text)? updateNote,
  }) {
    return updateNote?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String taskId)? startTask,
    TResult Function(String entryId)? startEntry,
    TResult Function()? stop,
    TResult Function(int index)? selectRating,
    TResult Function(String text)? updateNote,
    required TResult orElse(),
  }) {
    if (updateNote != null) {
      return updateNote(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_StartEntry value) startEntry,
    required TResult Function(_Stop value) stop,
    required TResult Function(_SelectRating value) selectRating,
    required TResult Function(_UpdateNote value) updateNote,
  }) {
    return updateNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartTask value)? startTask,
    TResult Function(_StartEntry value)? startEntry,
    TResult Function(_Stop value)? stop,
    TResult Function(_SelectRating value)? selectRating,
    TResult Function(_UpdateNote value)? updateNote,
  }) {
    return updateNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTask value)? startTask,
    TResult Function(_StartEntry value)? startEntry,
    TResult Function(_Stop value)? stop,
    TResult Function(_SelectRating value)? selectRating,
    TResult Function(_UpdateNote value)? updateNote,
    required TResult orElse(),
  }) {
    if (updateNote != null) {
      return updateNote(this);
    }
    return orElse();
  }
}

abstract class _UpdateNote extends EntryEditFeedbackEvent {
  const factory _UpdateNote({required final String text}) = _$_UpdateNote;
  const _UpdateNote._() : super._();

  String get text;
  @JsonKey(ignore: true)
  _$$_UpdateNoteCopyWith<_$_UpdateNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EntryEditFeedbackState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Entry entry) started,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Entry entry)? started,
    TResult Function(Object error, StackTrace stackTrace)? errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Entry entry)? started,
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
abstract class $EntryEditFeedbackStateCopyWith<$Res> {
  factory $EntryEditFeedbackStateCopyWith(EntryEditFeedbackState value,
          $Res Function(EntryEditFeedbackState) then) =
      _$EntryEditFeedbackStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EntryEditFeedbackStateCopyWithImpl<$Res>
    implements $EntryEditFeedbackStateCopyWith<$Res> {
  _$EntryEditFeedbackStateCopyWithImpl(this._value, this._then);

  final EntryEditFeedbackState _value;
  // ignore: unused_field
  final $Res Function(EntryEditFeedbackState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$EntryEditFeedbackStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial extends _Initial with EntryEditBase_Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'EntryEditFeedbackState.initial()';
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
    required TResult Function(Entry entry) started,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Entry entry)? started,
    TResult Function(Object error, StackTrace stackTrace)? errored,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Entry entry)? started,
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

abstract class _Initial extends EntryEditFeedbackState
    implements EntryEditBase_Initial {
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
class __$$_StartedCopyWithImpl<$Res>
    extends _$EntryEditFeedbackStateCopyWithImpl<$Res>
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

class _$_Started extends _Started with EntryEditBase_Started {
  const _$_Started({required this.entry}) : super._();

  @override
  final Entry entry;

  @override
  String toString() {
    return 'EntryEditFeedbackState.started(entry: $entry)';
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
    required TResult Function() initial,
    required TResult Function(Entry entry) started,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) {
    return started(entry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Entry entry)? started,
    TResult Function(Object error, StackTrace stackTrace)? errored,
  }) {
    return started?.call(entry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
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

abstract class _Started extends EntryEditFeedbackState
    implements EntryEditBase_Started {
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
class __$$_ErroredCopyWithImpl<$Res>
    extends _$EntryEditFeedbackStateCopyWithImpl<$Res>
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

class _$_Errored extends _Errored with EntryEditBase_Errored {
  const _$_Errored({required this.error, required this.stackTrace}) : super._();

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'EntryEditFeedbackState.errored(error: $error, stackTrace: $stackTrace)';
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
    required TResult Function(Entry entry) started,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) {
    return errored(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Entry entry)? started,
    TResult Function(Object error, StackTrace stackTrace)? errored,
  }) {
    return errored?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
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

abstract class _Errored extends EntryEditFeedbackState
    implements EntryEditBase_Errored {
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
