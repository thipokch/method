// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_step.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionTask _$QuestionTaskFromJson(Map<String, dynamic> json) {
  return _QuestionTask.fromJson(json);
}

/// @nodoc
mixin _$QuestionTask {
  bool get isOptional => throw _privateConstructorUsedError;
  String get buttonText => throw _privateConstructorUsedError;
  TaskIdentifier get taskIdentifier => throw _privateConstructorUsedError;
  bool get showAppBar => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get text =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(ignore: true)
  Widget get content => throw _privateConstructorUsedError;
  AnswerFormat get answerFormat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionTaskCopyWith<QuestionTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionTaskCopyWith<$Res> {
  factory $QuestionTaskCopyWith(
          QuestionTask value, $Res Function(QuestionTask) then) =
      _$QuestionTaskCopyWithImpl<$Res>;
  $Res call(
      {bool isOptional,
      String buttonText,
      TaskIdentifier taskIdentifier,
      bool showAppBar,
      String title,
      String text,
      @JsonKey(ignore: true) Widget content,
      AnswerFormat answerFormat});

  $TaskIdentifierCopyWith<$Res> get taskIdentifier;
}

/// @nodoc
class _$QuestionTaskCopyWithImpl<$Res> implements $QuestionTaskCopyWith<$Res> {
  _$QuestionTaskCopyWithImpl(this._value, this._then);

  final QuestionTask _value;
  // ignore: unused_field
  final $Res Function(QuestionTask) _then;

  @override
  $Res call({
    Object? isOptional = freezed,
    Object? buttonText = freezed,
    Object? taskIdentifier = freezed,
    Object? showAppBar = freezed,
    Object? title = freezed,
    Object? text = freezed,
    Object? content = freezed,
    Object? answerFormat = freezed,
  }) {
    return _then(_value.copyWith(
      isOptional: isOptional == freezed
          ? _value.isOptional
          : isOptional // ignore: cast_nullable_to_non_nullable
              as bool,
      buttonText: buttonText == freezed
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as String,
      taskIdentifier: taskIdentifier == freezed
          ? _value.taskIdentifier
          : taskIdentifier // ignore: cast_nullable_to_non_nullable
              as TaskIdentifier,
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
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Widget,
      answerFormat: answerFormat == freezed
          ? _value.answerFormat
          : answerFormat // ignore: cast_nullable_to_non_nullable
              as AnswerFormat,
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
abstract class _$$_QuestionTaskCopyWith<$Res>
    implements $QuestionTaskCopyWith<$Res> {
  factory _$$_QuestionTaskCopyWith(
          _$_QuestionTask value, $Res Function(_$_QuestionTask) then) =
      __$$_QuestionTaskCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isOptional,
      String buttonText,
      TaskIdentifier taskIdentifier,
      bool showAppBar,
      String title,
      String text,
      @JsonKey(ignore: true) Widget content,
      AnswerFormat answerFormat});

  @override
  $TaskIdentifierCopyWith<$Res> get taskIdentifier;
}

/// @nodoc
class __$$_QuestionTaskCopyWithImpl<$Res>
    extends _$QuestionTaskCopyWithImpl<$Res>
    implements _$$_QuestionTaskCopyWith<$Res> {
  __$$_QuestionTaskCopyWithImpl(
      _$_QuestionTask _value, $Res Function(_$_QuestionTask) _then)
      : super(_value, (v) => _then(v as _$_QuestionTask));

  @override
  _$_QuestionTask get _value => super._value as _$_QuestionTask;

  @override
  $Res call({
    Object? isOptional = freezed,
    Object? buttonText = freezed,
    Object? taskIdentifier = freezed,
    Object? showAppBar = freezed,
    Object? title = freezed,
    Object? text = freezed,
    Object? content = freezed,
    Object? answerFormat = freezed,
  }) {
    return _then(_$_QuestionTask(
      isOptional: isOptional == freezed
          ? _value.isOptional
          : isOptional // ignore: cast_nullable_to_non_nullable
              as bool,
      buttonText: buttonText == freezed
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as String,
      taskIdentifier: taskIdentifier == freezed
          ? _value.taskIdentifier
          : taskIdentifier // ignore: cast_nullable_to_non_nullable
              as TaskIdentifier,
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
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Widget,
      answerFormat: answerFormat == freezed
          ? _value.answerFormat
          : answerFormat // ignore: cast_nullable_to_non_nullable
              as AnswerFormat,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_QuestionTask extends _QuestionTask {
  const _$_QuestionTask(
      {this.isOptional = false,
      this.buttonText = 'Next',
      required this.taskIdentifier,
      this.showAppBar = true,
      this.title = '',
      this.text = '',
      @JsonKey(ignore: true) this.content = const SizedBox.shrink(),
      required this.answerFormat})
      : super._();

  factory _$_QuestionTask.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionTaskFromJson(json);

  @override
  @JsonKey()
  final bool isOptional;
  @override
  @JsonKey()
  final String buttonText;
  @override
  final TaskIdentifier taskIdentifier;
  @override
  @JsonKey()
  final bool showAppBar;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String text;
// ignore: invalid_annotation_target
  @override
  @JsonKey(ignore: true)
  final Widget content;
  @override
  final AnswerFormat answerFormat;

  @override
  String toString() {
    return 'QuestionTask(isOptional: $isOptional, buttonText: $buttonText, taskIdentifier: $taskIdentifier, showAppBar: $showAppBar, title: $title, text: $text, content: $content, answerFormat: $answerFormat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionTask &&
            const DeepCollectionEquality()
                .equals(other.isOptional, isOptional) &&
            const DeepCollectionEquality()
                .equals(other.buttonText, buttonText) &&
            const DeepCollectionEquality()
                .equals(other.taskIdentifier, taskIdentifier) &&
            const DeepCollectionEquality()
                .equals(other.showAppBar, showAppBar) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality()
                .equals(other.answerFormat, answerFormat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isOptional),
      const DeepCollectionEquality().hash(buttonText),
      const DeepCollectionEquality().hash(taskIdentifier),
      const DeepCollectionEquality().hash(showAppBar),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(answerFormat));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionTaskCopyWith<_$_QuestionTask> get copyWith =>
      __$$_QuestionTaskCopyWithImpl<_$_QuestionTask>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionTaskToJson(
      this,
    );
  }
}

abstract class _QuestionTask extends QuestionTask {
  const factory _QuestionTask(
      {final bool isOptional,
      final String buttonText,
      required final TaskIdentifier taskIdentifier,
      final bool showAppBar,
      final String title,
      final String text,
      @JsonKey(ignore: true) final Widget content,
      required final AnswerFormat answerFormat}) = _$_QuestionTask;
  const _QuestionTask._() : super._();

  factory _QuestionTask.fromJson(Map<String, dynamic> json) =
      _$_QuestionTask.fromJson;

  @override
  bool get isOptional;
  @override
  String get buttonText;
  @override
  TaskIdentifier get taskIdentifier;
  @override
  bool get showAppBar;
  @override
  String get title;
  @override
  String get text;
  @override // ignore: invalid_annotation_target
  @JsonKey(ignore: true)
  Widget get content;
  @override
  AnswerFormat get answerFormat;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionTaskCopyWith<_$_QuestionTask> get copyWith =>
      throw _privateConstructorUsedError;
}
