// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entry_edit_converge_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EntryEditConvergeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)
        start,
    required TResult Function() stop,
    required TResult Function(int index) selectLabel,
    required TResult Function(String text) updateNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)?
        start,
    TResult Function()? stop,
    TResult Function(int index)? selectLabel,
    TResult Function(String text)? updateNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)?
        start,
    TResult Function()? stop,
    TResult Function(int index)? selectLabel,
    TResult Function(String text)? updateNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Stop value) stop,
    required TResult Function(_SelectLabel value) selectLabel,
    required TResult Function(_UpdateNote value) updateNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Stop value)? stop,
    TResult Function(_SelectLabel value)? selectLabel,
    TResult Function(_UpdateNote value)? updateNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Stop value)? stop,
    TResult Function(_SelectLabel value)? selectLabel,
    TResult Function(_UpdateNote value)? updateNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryEditConvergeEventCopyWith<$Res> {
  factory $EntryEditConvergeEventCopyWith(EntryEditConvergeEvent value,
          $Res Function(EntryEditConvergeEvent) then) =
      _$EntryEditConvergeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EntryEditConvergeEventCopyWithImpl<$Res>
    implements $EntryEditConvergeEventCopyWith<$Res> {
  _$EntryEditConvergeEventCopyWithImpl(this._value, this._then);

  final EntryEditConvergeEvent _value;
  // ignore: unused_field
  final $Res Function(EntryEditConvergeEvent) _then;
}

/// @nodoc
abstract class _$$_StartCopyWith<$Res> {
  factory _$$_StartCopyWith(_$_Start value, $Res Function(_$_Start) then) =
      __$$_StartCopyWithImpl<$Res>;
  $Res call({BuiltDefinition<TaskDefinition, EntryDefinition> definitions});
}

/// @nodoc
class __$$_StartCopyWithImpl<$Res>
    extends _$EntryEditConvergeEventCopyWithImpl<$Res>
    implements _$$_StartCopyWith<$Res> {
  __$$_StartCopyWithImpl(_$_Start _value, $Res Function(_$_Start) _then)
      : super(_value, (v) => _then(v as _$_Start));

  @override
  _$_Start get _value => super._value as _$_Start;

  @override
  $Res call({
    Object? definitions = freezed,
  }) {
    return _then(_$_Start(
      definitions: definitions == freezed
          ? _value.definitions
          : definitions // ignore: cast_nullable_to_non_nullable
              as BuiltDefinition<TaskDefinition, EntryDefinition>,
    ));
  }
}

/// @nodoc

class _$_Start extends _Start
    with EntryEditBase_Start<BuiltDefinition<TaskDefinition, EntryDefinition>> {
  const _$_Start({required this.definitions}) : super._();

  @override
  final BuiltDefinition<TaskDefinition, EntryDefinition> definitions;

  @override
  String toString() {
    return 'EntryEditConvergeEvent.start(definitions: $definitions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Start &&
            const DeepCollectionEquality()
                .equals(other.definitions, definitions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(definitions));

  @JsonKey(ignore: true)
  @override
  _$$_StartCopyWith<_$_Start> get copyWith =>
      __$$_StartCopyWithImpl<_$_Start>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)
        start,
    required TResult Function() stop,
    required TResult Function(int index) selectLabel,
    required TResult Function(String text) updateNote,
  }) {
    return start(definitions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)?
        start,
    TResult Function()? stop,
    TResult Function(int index)? selectLabel,
    TResult Function(String text)? updateNote,
  }) {
    return start?.call(definitions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)?
        start,
    TResult Function()? stop,
    TResult Function(int index)? selectLabel,
    TResult Function(String text)? updateNote,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(definitions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Stop value) stop,
    required TResult Function(_SelectLabel value) selectLabel,
    required TResult Function(_UpdateNote value) updateNote,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Stop value)? stop,
    TResult Function(_SelectLabel value)? selectLabel,
    TResult Function(_UpdateNote value)? updateNote,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Stop value)? stop,
    TResult Function(_SelectLabel value)? selectLabel,
    TResult Function(_UpdateNote value)? updateNote,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _Start extends EntryEditConvergeEvent
    implements
        EntryEditBase_Start<BuiltDefinition<TaskDefinition, EntryDefinition>> {
  const factory _Start(
      {required final BuiltDefinition<TaskDefinition, EntryDefinition>
          definitions}) = _$_Start;
  const _Start._() : super._();

  BuiltDefinition<TaskDefinition, EntryDefinition> get definitions;
  @JsonKey(ignore: true)
  _$$_StartCopyWith<_$_Start> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StopCopyWith<$Res> {
  factory _$$_StopCopyWith(_$_Stop value, $Res Function(_$_Stop) then) =
      __$$_StopCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StopCopyWithImpl<$Res>
    extends _$EntryEditConvergeEventCopyWithImpl<$Res>
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
    return 'EntryEditConvergeEvent.stop()';
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
    required TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)
        start,
    required TResult Function() stop,
    required TResult Function(int index) selectLabel,
    required TResult Function(String text) updateNote,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)?
        start,
    TResult Function()? stop,
    TResult Function(int index)? selectLabel,
    TResult Function(String text)? updateNote,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)?
        start,
    TResult Function()? stop,
    TResult Function(int index)? selectLabel,
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
    required TResult Function(_Start value) start,
    required TResult Function(_Stop value) stop,
    required TResult Function(_SelectLabel value) selectLabel,
    required TResult Function(_UpdateNote value) updateNote,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Stop value)? stop,
    TResult Function(_SelectLabel value)? selectLabel,
    TResult Function(_UpdateNote value)? updateNote,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Stop value)? stop,
    TResult Function(_SelectLabel value)? selectLabel,
    TResult Function(_UpdateNote value)? updateNote,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class _Stop extends EntryEditConvergeEvent {
  const factory _Stop() = _$_Stop;
  const _Stop._() : super._();
}

/// @nodoc
abstract class _$$_SelectLabelCopyWith<$Res> {
  factory _$$_SelectLabelCopyWith(
          _$_SelectLabel value, $Res Function(_$_SelectLabel) then) =
      __$$_SelectLabelCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$$_SelectLabelCopyWithImpl<$Res>
    extends _$EntryEditConvergeEventCopyWithImpl<$Res>
    implements _$$_SelectLabelCopyWith<$Res> {
  __$$_SelectLabelCopyWithImpl(
      _$_SelectLabel _value, $Res Function(_$_SelectLabel) _then)
      : super(_value, (v) => _then(v as _$_SelectLabel));

  @override
  _$_SelectLabel get _value => super._value as _$_SelectLabel;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$_SelectLabel(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectLabel extends _SelectLabel {
  const _$_SelectLabel({required this.index}) : super._();

  @override
  final int index;

  @override
  String toString() {
    return 'EntryEditConvergeEvent.selectLabel(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectLabel &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$_SelectLabelCopyWith<_$_SelectLabel> get copyWith =>
      __$$_SelectLabelCopyWithImpl<_$_SelectLabel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)
        start,
    required TResult Function() stop,
    required TResult Function(int index) selectLabel,
    required TResult Function(String text) updateNote,
  }) {
    return selectLabel(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)?
        start,
    TResult Function()? stop,
    TResult Function(int index)? selectLabel,
    TResult Function(String text)? updateNote,
  }) {
    return selectLabel?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)?
        start,
    TResult Function()? stop,
    TResult Function(int index)? selectLabel,
    TResult Function(String text)? updateNote,
    required TResult orElse(),
  }) {
    if (selectLabel != null) {
      return selectLabel(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Stop value) stop,
    required TResult Function(_SelectLabel value) selectLabel,
    required TResult Function(_UpdateNote value) updateNote,
  }) {
    return selectLabel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Stop value)? stop,
    TResult Function(_SelectLabel value)? selectLabel,
    TResult Function(_UpdateNote value)? updateNote,
  }) {
    return selectLabel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Stop value)? stop,
    TResult Function(_SelectLabel value)? selectLabel,
    TResult Function(_UpdateNote value)? updateNote,
    required TResult orElse(),
  }) {
    if (selectLabel != null) {
      return selectLabel(this);
    }
    return orElse();
  }
}

abstract class _SelectLabel extends EntryEditConvergeEvent {
  const factory _SelectLabel({required final int index}) = _$_SelectLabel;
  const _SelectLabel._() : super._();

  int get index;
  @JsonKey(ignore: true)
  _$$_SelectLabelCopyWith<_$_SelectLabel> get copyWith =>
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
    extends _$EntryEditConvergeEventCopyWithImpl<$Res>
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
    return 'EntryEditConvergeEvent.updateNote(text: $text)';
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
    required TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)
        start,
    required TResult Function() stop,
    required TResult Function(int index) selectLabel,
    required TResult Function(String text) updateNote,
  }) {
    return updateNote(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)?
        start,
    TResult Function()? stop,
    TResult Function(int index)? selectLabel,
    TResult Function(String text)? updateNote,
  }) {
    return updateNote?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)?
        start,
    TResult Function()? stop,
    TResult Function(int index)? selectLabel,
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
    required TResult Function(_Start value) start,
    required TResult Function(_Stop value) stop,
    required TResult Function(_SelectLabel value) selectLabel,
    required TResult Function(_UpdateNote value) updateNote,
  }) {
    return updateNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Stop value)? stop,
    TResult Function(_SelectLabel value)? selectLabel,
    TResult Function(_UpdateNote value)? updateNote,
  }) {
    return updateNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Stop value)? stop,
    TResult Function(_SelectLabel value)? selectLabel,
    TResult Function(_UpdateNote value)? updateNote,
    required TResult orElse(),
  }) {
    if (updateNote != null) {
      return updateNote(this);
    }
    return orElse();
  }
}

abstract class _UpdateNote extends EntryEditConvergeEvent {
  const factory _UpdateNote({required final String text}) = _$_UpdateNote;
  const _UpdateNote._() : super._();

  String get text;
  @JsonKey(ignore: true)
  _$$_UpdateNoteCopyWith<_$_UpdateNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EntryEditConvergeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)
        started,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)?
        started,
    TResult Function(Object error, StackTrace stackTrace)? errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)?
        started,
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
abstract class $EntryEditConvergeStateCopyWith<$Res> {
  factory $EntryEditConvergeStateCopyWith(EntryEditConvergeState value,
          $Res Function(EntryEditConvergeState) then) =
      _$EntryEditConvergeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EntryEditConvergeStateCopyWithImpl<$Res>
    implements $EntryEditConvergeStateCopyWith<$Res> {
  _$EntryEditConvergeStateCopyWithImpl(this._value, this._then);

  final EntryEditConvergeState _value;
  // ignore: unused_field
  final $Res Function(EntryEditConvergeState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$EntryEditConvergeStateCopyWithImpl<$Res>
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
    return 'EntryEditConvergeState.initial()';
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
    required TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)
        started,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)?
        started,
    TResult Function(Object error, StackTrace stackTrace)? errored,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)?
        started,
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

abstract class _Initial extends EntryEditConvergeState
    implements EntryEditBase_Initial {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  $Res call({BuiltDefinition<TaskDefinition, EntryDefinition> definitions});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$EntryEditConvergeStateCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;

  @override
  $Res call({
    Object? definitions = freezed,
  }) {
    return _then(_$_Started(
      definitions: definitions == freezed
          ? _value.definitions
          : definitions // ignore: cast_nullable_to_non_nullable
              as BuiltDefinition<TaskDefinition, EntryDefinition>,
    ));
  }
}

/// @nodoc

class _$_Started extends _Started
    with
        EntryEditBase_Started<
            BuiltDefinition<TaskDefinition, EntryDefinition>> {
  const _$_Started({required this.definitions}) : super._();

  @override
  final BuiltDefinition<TaskDefinition, EntryDefinition> definitions;

  @override
  String toString() {
    return 'EntryEditConvergeState.started(definitions: $definitions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            const DeepCollectionEquality()
                .equals(other.definitions, definitions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(definitions));

  @JsonKey(ignore: true)
  @override
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)
        started,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) {
    return started(definitions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)?
        started,
    TResult Function(Object error, StackTrace stackTrace)? errored,
  }) {
    return started?.call(definitions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)?
        started,
    TResult Function(Object error, StackTrace stackTrace)? errored,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(definitions);
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

abstract class _Started extends EntryEditConvergeState
    implements
        EntryEditBase_Started<
            BuiltDefinition<TaskDefinition, EntryDefinition>> {
  const factory _Started(
      {required final BuiltDefinition<TaskDefinition, EntryDefinition>
          definitions}) = _$_Started;
  const _Started._() : super._();

  BuiltDefinition<TaskDefinition, EntryDefinition> get definitions;
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
    extends _$EntryEditConvergeStateCopyWithImpl<$Res>
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
    return 'EntryEditConvergeState.errored(error: $error, stackTrace: $stackTrace)';
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
    required TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)
        started,
    required TResult Function(Object error, StackTrace stackTrace) errored,
  }) {
    return errored(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)?
        started,
    TResult Function(Object error, StackTrace stackTrace)? errored,
  }) {
    return errored?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            BuiltDefinition<TaskDefinition, EntryDefinition> definitions)?
        started,
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

abstract class _Errored extends EntryEditConvergeState
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
