// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'completion_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompletionTask _$CompletionTaskFromJson(Map<String, dynamic> json) {
  return _CompletionTask.fromJson(json);
}

/// @nodoc
mixin _$CompletionTask {
  bool get isOptional => throw _privateConstructorUsedError;
  TaskIdentifier get taskIdentifier => throw _privateConstructorUsedError;
  String get buttonText => throw _privateConstructorUsedError;
  bool get showAppBar => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get assetPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompletionTaskCopyWith<CompletionTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletionTaskCopyWith<$Res> {
  factory $CompletionTaskCopyWith(
          CompletionTask value, $Res Function(CompletionTask) then) =
      _$CompletionTaskCopyWithImpl<$Res>;
  $Res call(
      {bool isOptional,
      TaskIdentifier taskIdentifier,
      String buttonText,
      bool showAppBar,
      String title,
      String text,
      String assetPath});

  $TaskIdentifierCopyWith<$Res> get taskIdentifier;
}

/// @nodoc
class _$CompletionTaskCopyWithImpl<$Res>
    implements $CompletionTaskCopyWith<$Res> {
  _$CompletionTaskCopyWithImpl(this._value, this._then);

  final CompletionTask _value;
  // ignore: unused_field
  final $Res Function(CompletionTask) _then;

  @override
  $Res call({
    Object? isOptional = freezed,
    Object? taskIdentifier = freezed,
    Object? buttonText = freezed,
    Object? showAppBar = freezed,
    Object? title = freezed,
    Object? text = freezed,
    Object? assetPath = freezed,
  }) {
    return _then(_value.copyWith(
      isOptional: isOptional == freezed
          ? _value.isOptional
          : isOptional // ignore: cast_nullable_to_non_nullable
              as bool,
      taskIdentifier: taskIdentifier == freezed
          ? _value.taskIdentifier
          : taskIdentifier // ignore: cast_nullable_to_non_nullable
              as TaskIdentifier,
      buttonText: buttonText == freezed
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as String,
      showAppBar: showAppBar == freezed
          ? _value.showAppBar
          : showAppBar // ignore: cast_nullable_to_non_nullable
              as bool,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      assetPath: assetPath == freezed
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $TaskIdentifierCopyWith<$Res> get taskIdentifier {
    return $TaskIdentifierCopyWith<$Res>(_value.taskIdentifier, (value) {
      return _then(_value.copyWith(taskIdentifier: value));
    });
  }
}

/// @nodoc
abstract class _$$_CompletionTaskCopyWith<$Res>
    implements $CompletionTaskCopyWith<$Res> {
  factory _$$_CompletionTaskCopyWith(
          _$_CompletionTask value, $Res Function(_$_CompletionTask) then) =
      __$$_CompletionTaskCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isOptional,
      TaskIdentifier taskIdentifier,
      String buttonText,
      bool showAppBar,
      String title,
      String text,
      String assetPath});

  @override
  $TaskIdentifierCopyWith<$Res> get taskIdentifier;
}

/// @nodoc
class __$$_CompletionTaskCopyWithImpl<$Res>
    extends _$CompletionTaskCopyWithImpl<$Res>
    implements _$$_CompletionTaskCopyWith<$Res> {
  __$$_CompletionTaskCopyWithImpl(
      _$_CompletionTask _value, $Res Function(_$_CompletionTask) _then)
      : super(_value, (v) => _then(v as _$_CompletionTask));

  @override
  _$_CompletionTask get _value => super._value as _$_CompletionTask;

  @override
  $Res call({
    Object? isOptional = freezed,
    Object? taskIdentifier = freezed,
    Object? buttonText = freezed,
    Object? showAppBar = freezed,
    Object? title = freezed,
    Object? text = freezed,
    Object? assetPath = freezed,
  }) {
    return _then(_$_CompletionTask(
      isOptional: isOptional == freezed
          ? _value.isOptional
          : isOptional // ignore: cast_nullable_to_non_nullable
              as bool,
      taskIdentifier: taskIdentifier == freezed
          ? _value.taskIdentifier
          : taskIdentifier // ignore: cast_nullable_to_non_nullable
              as TaskIdentifier,
      buttonText: buttonText == freezed
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as String,
      showAppBar: showAppBar == freezed
          ? _value.showAppBar
          : showAppBar // ignore: cast_nullable_to_non_nullable
              as bool,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      assetPath: assetPath == freezed
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CompletionTask extends _CompletionTask {
  const _$_CompletionTask(
      {this.isOptional = false,
      required this.taskIdentifier,
      this.buttonText = 'End Exercise',
      this.showAppBar = true,
      required this.title,
      required this.text,
      this.assetPath = ''})
      : super._();

  factory _$_CompletionTask.fromJson(Map<String, dynamic> json) =>
      _$$_CompletionTaskFromJson(json);

  @override
  @JsonKey()
  final bool isOptional;
  @override
  final TaskIdentifier taskIdentifier;
  @override
  @JsonKey()
  final String buttonText;
  @override
  @JsonKey()
  final bool showAppBar;
  @override
  final String title;
  @override
  final String text;
  @override
  @JsonKey()
  final String assetPath;

  @override
  String toString() {
    return 'CompletionTask(isOptional: $isOptional, taskIdentifier: $taskIdentifier, buttonText: $buttonText, showAppBar: $showAppBar, title: $title, text: $text, assetPath: $assetPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompletionTask &&
            const DeepCollectionEquality()
                .equals(other.isOptional, isOptional) &&
            const DeepCollectionEquality()
                .equals(other.taskIdentifier, taskIdentifier) &&
            const DeepCollectionEquality()
                .equals(other.buttonText, buttonText) &&
            const DeepCollectionEquality()
                .equals(other.showAppBar, showAppBar) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.assetPath, assetPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isOptional),
      const DeepCollectionEquality().hash(taskIdentifier),
      const DeepCollectionEquality().hash(buttonText),
      const DeepCollectionEquality().hash(showAppBar),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(assetPath));

  @JsonKey(ignore: true)
  @override
  _$$_CompletionTaskCopyWith<_$_CompletionTask> get copyWith =>
      __$$_CompletionTaskCopyWithImpl<_$_CompletionTask>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompletionTaskToJson(
      this,
    );
  }
}

abstract class _CompletionTask extends CompletionTask {
  const factory _CompletionTask(
      {final bool isOptional,
      required final TaskIdentifier taskIdentifier,
      final String buttonText,
      final bool showAppBar,
      required final String title,
      required final String text,
      final String assetPath}) = _$_CompletionTask;
  const _CompletionTask._() : super._();

  factory _CompletionTask.fromJson(Map<String, dynamic> json) =
      _$_CompletionTask.fromJson;

  @override
  bool get isOptional;
  @override
  TaskIdentifier get taskIdentifier;
  @override
  String get buttonText;
  @override
  bool get showAppBar;
  @override
  String get title;
  @override
  String get text;
  @override
  String get assetPath;
  @override
  @JsonKey(ignore: true)
  _$$_CompletionTaskCopyWith<_$_CompletionTask> get copyWith =>
      throw _privateConstructorUsedError;
}
