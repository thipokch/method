// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Task _$TaskFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'completion':
      return CompletionTask.fromJson(json);
    case 'instruction':
      return InstructionTask.fromJson(json);
    case 'question':
      return QuestionTask.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Task',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Task {
  bool get isOptional => throw _privateConstructorUsedError;
  @TaskIdentifierConverter()
  TaskIdentifier get taskIdentifier => throw _privateConstructorUsedError;
  String get buttonText => throw _privateConstructorUsedError;
  bool get showAppBar => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isOptional,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            String buttonText,
            bool showAppBar,
            String title,
            String text,
            String assetPath)
        completion,
    required TResult Function(
            String title,
            String text,
            bool isOptional,
            String buttonText,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            bool canGoBack,
            bool showProgress,
            bool showAppBar)
        instruction,
    required TResult Function(
            bool isOptional,
            String buttonText,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            bool showAppBar,
            String title,
            String text,
            @JsonKey(ignore: true) Widget content,
            AnswerFormat answerFormat)
        question,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            bool isOptional,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            String buttonText,
            bool showAppBar,
            String title,
            String text,
            String assetPath)?
        completion,
    TResult Function(
            String title,
            String text,
            bool isOptional,
            String buttonText,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            bool canGoBack,
            bool showProgress,
            bool showAppBar)?
        instruction,
    TResult Function(
            bool isOptional,
            String buttonText,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            bool showAppBar,
            String title,
            String text,
            @JsonKey(ignore: true) Widget content,
            AnswerFormat answerFormat)?
        question,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isOptional,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            String buttonText,
            bool showAppBar,
            String title,
            String text,
            String assetPath)?
        completion,
    TResult Function(
            String title,
            String text,
            bool isOptional,
            String buttonText,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            bool canGoBack,
            bool showProgress,
            bool showAppBar)?
        instruction,
    TResult Function(
            bool isOptional,
            String buttonText,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            bool showAppBar,
            String title,
            String text,
            @JsonKey(ignore: true) Widget content,
            AnswerFormat answerFormat)?
        question,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompletionTask value) completion,
    required TResult Function(InstructionTask value) instruction,
    required TResult Function(QuestionTask value) question,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CompletionTask value)? completion,
    TResult Function(InstructionTask value)? instruction,
    TResult Function(QuestionTask value)? question,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompletionTask value)? completion,
    TResult Function(InstructionTask value)? instruction,
    TResult Function(QuestionTask value)? question,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res>;
  $Res call(
      {bool isOptional,
      @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
      String buttonText,
      bool showAppBar,
      String title,
      String text});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res> implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  final Task _value;
  // ignore: unused_field
  final $Res Function(Task) _then;

  @override
  $Res call({
    Object? isOptional = freezed,
    Object? taskIdentifier = freezed,
    Object? buttonText = freezed,
    Object? showAppBar = freezed,
    Object? title = freezed,
    Object? text = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$$CompletionTaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$CompletionTaskCopyWith(
          _$CompletionTask value, $Res Function(_$CompletionTask) then) =
      __$$CompletionTaskCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isOptional,
      @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
      String buttonText,
      bool showAppBar,
      String title,
      String text,
      String assetPath});
}

/// @nodoc
class __$$CompletionTaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$$CompletionTaskCopyWith<$Res> {
  __$$CompletionTaskCopyWithImpl(
      _$CompletionTask _value, $Res Function(_$CompletionTask) _then)
      : super(_value, (v) => _then(v as _$CompletionTask));

  @override
  _$CompletionTask get _value => super._value as _$CompletionTask;

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
    return _then(_$CompletionTask(
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
@JsonSerializable()
class _$CompletionTask extends CompletionTask {
  const _$CompletionTask(
      {this.isOptional = false,
      @TaskIdentifierConverter() required this.taskIdentifier,
      this.buttonText = 'End Exercise',
      this.showAppBar = true,
      required this.title,
      required this.text,
      this.assetPath = '',
      final String? $type})
      : $type = $type ?? 'completion',
        super._();

  factory _$CompletionTask.fromJson(Map<String, dynamic> json) =>
      _$$CompletionTaskFromJson(json);

  @override
  @JsonKey()
  final bool isOptional;
  @override
  @TaskIdentifierConverter()
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

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Task.completion(isOptional: $isOptional, taskIdentifier: $taskIdentifier, buttonText: $buttonText, showAppBar: $showAppBar, title: $title, text: $text, assetPath: $assetPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletionTask &&
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
  _$$CompletionTaskCopyWith<_$CompletionTask> get copyWith =>
      __$$CompletionTaskCopyWithImpl<_$CompletionTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isOptional,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            String buttonText,
            bool showAppBar,
            String title,
            String text,
            String assetPath)
        completion,
    required TResult Function(
            String title,
            String text,
            bool isOptional,
            String buttonText,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            bool canGoBack,
            bool showProgress,
            bool showAppBar)
        instruction,
    required TResult Function(
            bool isOptional,
            String buttonText,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            bool showAppBar,
            String title,
            String text,
            @JsonKey(ignore: true) Widget content,
            AnswerFormat answerFormat)
        question,
  }) {
    return completion(isOptional, taskIdentifier, buttonText, showAppBar, title,
        text, assetPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            bool isOptional,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            String buttonText,
            bool showAppBar,
            String title,
            String text,
            String assetPath)?
        completion,
    TResult Function(
            String title,
            String text,
            bool isOptional,
            String buttonText,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            bool canGoBack,
            bool showProgress,
            bool showAppBar)?
        instruction,
    TResult Function(
            bool isOptional,
            String buttonText,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            bool showAppBar,
            String title,
            String text,
            @JsonKey(ignore: true) Widget content,
            AnswerFormat answerFormat)?
        question,
  }) {
    return completion?.call(isOptional, taskIdentifier, buttonText, showAppBar,
        title, text, assetPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isOptional,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            String buttonText,
            bool showAppBar,
            String title,
            String text,
            String assetPath)?
        completion,
    TResult Function(
            String title,
            String text,
            bool isOptional,
            String buttonText,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            bool canGoBack,
            bool showProgress,
            bool showAppBar)?
        instruction,
    TResult Function(
            bool isOptional,
            String buttonText,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            bool showAppBar,
            String title,
            String text,
            @JsonKey(ignore: true) Widget content,
            AnswerFormat answerFormat)?
        question,
    required TResult orElse(),
  }) {
    if (completion != null) {
      return completion(isOptional, taskIdentifier, buttonText, showAppBar,
          title, text, assetPath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompletionTask value) completion,
    required TResult Function(InstructionTask value) instruction,
    required TResult Function(QuestionTask value) question,
  }) {
    return completion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CompletionTask value)? completion,
    TResult Function(InstructionTask value)? instruction,
    TResult Function(QuestionTask value)? question,
  }) {
    return completion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompletionTask value)? completion,
    TResult Function(InstructionTask value)? instruction,
    TResult Function(QuestionTask value)? question,
    required TResult orElse(),
  }) {
    if (completion != null) {
      return completion(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletionTaskToJson(
      this,
    );
  }
}

abstract class CompletionTask extends Task {
  const factory CompletionTask(
      {final bool isOptional,
      @TaskIdentifierConverter() required final TaskIdentifier taskIdentifier,
      final String buttonText,
      final bool showAppBar,
      required final String title,
      required final String text,
      final String assetPath}) = _$CompletionTask;
  const CompletionTask._() : super._();

  factory CompletionTask.fromJson(Map<String, dynamic> json) =
      _$CompletionTask.fromJson;

  @override
  bool get isOptional;
  @override
  @TaskIdentifierConverter()
  TaskIdentifier get taskIdentifier;
  @override
  String get buttonText;
  @override
  bool get showAppBar;
  @override
  String get title;
  @override
  String get text;
  String get assetPath;
  @override
  @JsonKey(ignore: true)
  _$$CompletionTaskCopyWith<_$CompletionTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InstructionTaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$InstructionTaskCopyWith(
          _$InstructionTask value, $Res Function(_$InstructionTask) then) =
      __$$InstructionTaskCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String text,
      bool isOptional,
      String buttonText,
      @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
      bool canGoBack,
      bool showProgress,
      bool showAppBar});
}

/// @nodoc
class __$$InstructionTaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$$InstructionTaskCopyWith<$Res> {
  __$$InstructionTaskCopyWithImpl(
      _$InstructionTask _value, $Res Function(_$InstructionTask) _then)
      : super(_value, (v) => _then(v as _$InstructionTask));

  @override
  _$InstructionTask get _value => super._value as _$InstructionTask;

  @override
  $Res call({
    Object? title = freezed,
    Object? text = freezed,
    Object? isOptional = freezed,
    Object? buttonText = freezed,
    Object? taskIdentifier = freezed,
    Object? canGoBack = freezed,
    Object? showProgress = freezed,
    Object? showAppBar = freezed,
  }) {
    return _then(_$InstructionTask(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
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
      canGoBack: canGoBack == freezed
          ? _value.canGoBack
          : canGoBack // ignore: cast_nullable_to_non_nullable
              as bool,
      showProgress: showProgress == freezed
          ? _value.showProgress
          : showProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      showAppBar: showAppBar == freezed
          ? _value.showAppBar
          : showAppBar // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InstructionTask extends InstructionTask {
  const _$InstructionTask(
      {required this.title,
      required this.text,
      this.isOptional = false,
      this.buttonText = 'Next',
      @TaskIdentifierConverter() required this.taskIdentifier,
      this.canGoBack = false,
      this.showProgress = false,
      this.showAppBar = true,
      final String? $type})
      : $type = $type ?? 'instruction',
        super._();

  factory _$InstructionTask.fromJson(Map<String, dynamic> json) =>
      _$$InstructionTaskFromJson(json);

  @override
  final String title;
  @override
  final String text;
  @override
  @JsonKey()
  final bool isOptional;
  @override
  @JsonKey()
  final String buttonText;
  @override
  @TaskIdentifierConverter()
  final TaskIdentifier taskIdentifier;
  @override
  @JsonKey()
  final bool canGoBack;
  @override
  @JsonKey()
  final bool showProgress;
  @override
  @JsonKey()
  final bool showAppBar;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Task.instruction(title: $title, text: $text, isOptional: $isOptional, buttonText: $buttonText, taskIdentifier: $taskIdentifier, canGoBack: $canGoBack, showProgress: $showProgress, showAppBar: $showAppBar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstructionTask &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality()
                .equals(other.isOptional, isOptional) &&
            const DeepCollectionEquality()
                .equals(other.buttonText, buttonText) &&
            const DeepCollectionEquality()
                .equals(other.taskIdentifier, taskIdentifier) &&
            const DeepCollectionEquality().equals(other.canGoBack, canGoBack) &&
            const DeepCollectionEquality()
                .equals(other.showProgress, showProgress) &&
            const DeepCollectionEquality()
                .equals(other.showAppBar, showAppBar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(isOptional),
      const DeepCollectionEquality().hash(buttonText),
      const DeepCollectionEquality().hash(taskIdentifier),
      const DeepCollectionEquality().hash(canGoBack),
      const DeepCollectionEquality().hash(showProgress),
      const DeepCollectionEquality().hash(showAppBar));

  @JsonKey(ignore: true)
  @override
  _$$InstructionTaskCopyWith<_$InstructionTask> get copyWith =>
      __$$InstructionTaskCopyWithImpl<_$InstructionTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isOptional,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            String buttonText,
            bool showAppBar,
            String title,
            String text,
            String assetPath)
        completion,
    required TResult Function(
            String title,
            String text,
            bool isOptional,
            String buttonText,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            bool canGoBack,
            bool showProgress,
            bool showAppBar)
        instruction,
    required TResult Function(
            bool isOptional,
            String buttonText,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            bool showAppBar,
            String title,
            String text,
            @JsonKey(ignore: true) Widget content,
            AnswerFormat answerFormat)
        question,
  }) {
    return instruction(title, text, isOptional, buttonText, taskIdentifier,
        canGoBack, showProgress, showAppBar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            bool isOptional,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            String buttonText,
            bool showAppBar,
            String title,
            String text,
            String assetPath)?
        completion,
    TResult Function(
            String title,
            String text,
            bool isOptional,
            String buttonText,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            bool canGoBack,
            bool showProgress,
            bool showAppBar)?
        instruction,
    TResult Function(
            bool isOptional,
            String buttonText,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            bool showAppBar,
            String title,
            String text,
            @JsonKey(ignore: true) Widget content,
            AnswerFormat answerFormat)?
        question,
  }) {
    return instruction?.call(title, text, isOptional, buttonText,
        taskIdentifier, canGoBack, showProgress, showAppBar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isOptional,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            String buttonText,
            bool showAppBar,
            String title,
            String text,
            String assetPath)?
        completion,
    TResult Function(
            String title,
            String text,
            bool isOptional,
            String buttonText,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            bool canGoBack,
            bool showProgress,
            bool showAppBar)?
        instruction,
    TResult Function(
            bool isOptional,
            String buttonText,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            bool showAppBar,
            String title,
            String text,
            @JsonKey(ignore: true) Widget content,
            AnswerFormat answerFormat)?
        question,
    required TResult orElse(),
  }) {
    if (instruction != null) {
      return instruction(title, text, isOptional, buttonText, taskIdentifier,
          canGoBack, showProgress, showAppBar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompletionTask value) completion,
    required TResult Function(InstructionTask value) instruction,
    required TResult Function(QuestionTask value) question,
  }) {
    return instruction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CompletionTask value)? completion,
    TResult Function(InstructionTask value)? instruction,
    TResult Function(QuestionTask value)? question,
  }) {
    return instruction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompletionTask value)? completion,
    TResult Function(InstructionTask value)? instruction,
    TResult Function(QuestionTask value)? question,
    required TResult orElse(),
  }) {
    if (instruction != null) {
      return instruction(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InstructionTaskToJson(
      this,
    );
  }
}

abstract class InstructionTask extends Task {
  const factory InstructionTask(
      {required final String title,
      required final String text,
      final bool isOptional,
      final String buttonText,
      @TaskIdentifierConverter() required final TaskIdentifier taskIdentifier,
      final bool canGoBack,
      final bool showProgress,
      final bool showAppBar}) = _$InstructionTask;
  const InstructionTask._() : super._();

  factory InstructionTask.fromJson(Map<String, dynamic> json) =
      _$InstructionTask.fromJson;

  @override
  String get title;
  @override
  String get text;
  @override
  bool get isOptional;
  @override
  String get buttonText;
  @override
  @TaskIdentifierConverter()
  TaskIdentifier get taskIdentifier;
  bool get canGoBack;
  bool get showProgress;
  @override
  bool get showAppBar;
  @override
  @JsonKey(ignore: true)
  _$$InstructionTaskCopyWith<_$InstructionTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuestionTaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$QuestionTaskCopyWith(
          _$QuestionTask value, $Res Function(_$QuestionTask) then) =
      __$$QuestionTaskCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isOptional,
      String buttonText,
      @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
      bool showAppBar,
      String title,
      String text,
      @JsonKey(ignore: true) Widget content,
      AnswerFormat answerFormat});

  $AnswerFormatCopyWith<$Res> get answerFormat;
}

/// @nodoc
class __$$QuestionTaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$$QuestionTaskCopyWith<$Res> {
  __$$QuestionTaskCopyWithImpl(
      _$QuestionTask _value, $Res Function(_$QuestionTask) _then)
      : super(_value, (v) => _then(v as _$QuestionTask));

  @override
  _$QuestionTask get _value => super._value as _$QuestionTask;

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
    return _then(_$QuestionTask(
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
  $AnswerFormatCopyWith<$Res> get answerFormat {
    return $AnswerFormatCopyWith<$Res>(_value.answerFormat, (value) {
      return _then(_value.copyWith(answerFormat: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionTask extends QuestionTask {
  const _$QuestionTask(
      {this.isOptional = false,
      this.buttonText = 'Next',
      @TaskIdentifierConverter() required this.taskIdentifier,
      this.showAppBar = true,
      this.title = '',
      this.text = '',
      @JsonKey(ignore: true) this.content = const SizedBox.shrink(),
      required this.answerFormat,
      final String? $type})
      : $type = $type ?? 'question',
        super._();

  factory _$QuestionTask.fromJson(Map<String, dynamic> json) =>
      _$$QuestionTaskFromJson(json);

  @override
  @JsonKey()
  final bool isOptional;
  @override
  @JsonKey()
  final String buttonText;
  @override
  @TaskIdentifierConverter()
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

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Task.question(isOptional: $isOptional, buttonText: $buttonText, taskIdentifier: $taskIdentifier, showAppBar: $showAppBar, title: $title, text: $text, content: $content, answerFormat: $answerFormat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionTask &&
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
  _$$QuestionTaskCopyWith<_$QuestionTask> get copyWith =>
      __$$QuestionTaskCopyWithImpl<_$QuestionTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isOptional,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            String buttonText,
            bool showAppBar,
            String title,
            String text,
            String assetPath)
        completion,
    required TResult Function(
            String title,
            String text,
            bool isOptional,
            String buttonText,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            bool canGoBack,
            bool showProgress,
            bool showAppBar)
        instruction,
    required TResult Function(
            bool isOptional,
            String buttonText,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            bool showAppBar,
            String title,
            String text,
            @JsonKey(ignore: true) Widget content,
            AnswerFormat answerFormat)
        question,
  }) {
    return question(isOptional, buttonText, taskIdentifier, showAppBar, title,
        text, content, answerFormat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            bool isOptional,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            String buttonText,
            bool showAppBar,
            String title,
            String text,
            String assetPath)?
        completion,
    TResult Function(
            String title,
            String text,
            bool isOptional,
            String buttonText,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            bool canGoBack,
            bool showProgress,
            bool showAppBar)?
        instruction,
    TResult Function(
            bool isOptional,
            String buttonText,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            bool showAppBar,
            String title,
            String text,
            @JsonKey(ignore: true) Widget content,
            AnswerFormat answerFormat)?
        question,
  }) {
    return question?.call(isOptional, buttonText, taskIdentifier, showAppBar,
        title, text, content, answerFormat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isOptional,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            String buttonText,
            bool showAppBar,
            String title,
            String text,
            String assetPath)?
        completion,
    TResult Function(
            String title,
            String text,
            bool isOptional,
            String buttonText,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            bool canGoBack,
            bool showProgress,
            bool showAppBar)?
        instruction,
    TResult Function(
            bool isOptional,
            String buttonText,
            @TaskIdentifierConverter() TaskIdentifier taskIdentifier,
            bool showAppBar,
            String title,
            String text,
            @JsonKey(ignore: true) Widget content,
            AnswerFormat answerFormat)?
        question,
    required TResult orElse(),
  }) {
    if (question != null) {
      return question(isOptional, buttonText, taskIdentifier, showAppBar, title,
          text, content, answerFormat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompletionTask value) completion,
    required TResult Function(InstructionTask value) instruction,
    required TResult Function(QuestionTask value) question,
  }) {
    return question(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CompletionTask value)? completion,
    TResult Function(InstructionTask value)? instruction,
    TResult Function(QuestionTask value)? question,
  }) {
    return question?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompletionTask value)? completion,
    TResult Function(InstructionTask value)? instruction,
    TResult Function(QuestionTask value)? question,
    required TResult orElse(),
  }) {
    if (question != null) {
      return question(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionTaskToJson(
      this,
    );
  }
}

abstract class QuestionTask extends Task {
  const factory QuestionTask(
      {final bool isOptional,
      final String buttonText,
      @TaskIdentifierConverter() required final TaskIdentifier taskIdentifier,
      final bool showAppBar,
      final String title,
      final String text,
      @JsonKey(ignore: true) final Widget content,
      required final AnswerFormat answerFormat}) = _$QuestionTask;
  const QuestionTask._() : super._();

  factory QuestionTask.fromJson(Map<String, dynamic> json) =
      _$QuestionTask.fromJson;

  @override
  bool get isOptional;
  @override
  String get buttonText;
  @override
  @TaskIdentifierConverter()
  TaskIdentifier get taskIdentifier;
  @override
  bool get showAppBar;
  @override
  String get title;
  @override
  String get text; // ignore: invalid_annotation_target
  @JsonKey(ignore: true)
  Widget get content;
  AnswerFormat get answerFormat;
  @override
  @JsonKey(ignore: true)
  _$$QuestionTaskCopyWith<_$QuestionTask> get copyWith =>
      throw _privateConstructorUsedError;
}
