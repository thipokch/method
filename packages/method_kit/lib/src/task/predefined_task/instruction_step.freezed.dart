// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'instruction_step.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InstructionTask _$InstructionTaskFromJson(Map<String, dynamic> json) {
  return _InstructionTask.fromJson(json);
}

/// @nodoc
mixin _$InstructionTask {
  String get title => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  bool get isOptional => throw _privateConstructorUsedError;
  String get buttonText => throw _privateConstructorUsedError;
  TaskIdentifier get taskIdentifier => throw _privateConstructorUsedError;
  bool get canGoBack => throw _privateConstructorUsedError;
  bool get showProgress => throw _privateConstructorUsedError;
  bool get showAppBar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstructionTaskCopyWith<InstructionTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstructionTaskCopyWith<$Res> {
  factory $InstructionTaskCopyWith(
          InstructionTask value, $Res Function(InstructionTask) then) =
      _$InstructionTaskCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String text,
      bool isOptional,
      String buttonText,
      TaskIdentifier taskIdentifier,
      bool canGoBack,
      bool showProgress,
      bool showAppBar});

  $TaskIdentifierCopyWith<$Res> get taskIdentifier;
}

/// @nodoc
class _$InstructionTaskCopyWithImpl<$Res>
    implements $InstructionTaskCopyWith<$Res> {
  _$InstructionTaskCopyWithImpl(this._value, this._then);

  final InstructionTask _value;
  // ignore: unused_field
  final $Res Function(InstructionTask) _then;

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
    return _then(_value.copyWith(
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

  @override
  $TaskIdentifierCopyWith<$Res> get taskIdentifier {
    return $TaskIdentifierCopyWith<$Res>(_value.taskIdentifier, (value) {
      return _then(_value.copyWith(taskIdentifier: value));
    });
  }
}

/// @nodoc
abstract class _$$_InstructionTaskCopyWith<$Res>
    implements $InstructionTaskCopyWith<$Res> {
  factory _$$_InstructionTaskCopyWith(
          _$_InstructionTask value, $Res Function(_$_InstructionTask) then) =
      __$$_InstructionTaskCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String text,
      bool isOptional,
      String buttonText,
      TaskIdentifier taskIdentifier,
      bool canGoBack,
      bool showProgress,
      bool showAppBar});

  @override
  $TaskIdentifierCopyWith<$Res> get taskIdentifier;
}

/// @nodoc
class __$$_InstructionTaskCopyWithImpl<$Res>
    extends _$InstructionTaskCopyWithImpl<$Res>
    implements _$$_InstructionTaskCopyWith<$Res> {
  __$$_InstructionTaskCopyWithImpl(
      _$_InstructionTask _value, $Res Function(_$_InstructionTask) _then)
      : super(_value, (v) => _then(v as _$_InstructionTask));

  @override
  _$_InstructionTask get _value => super._value as _$_InstructionTask;

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
    return _then(_$_InstructionTask(
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

@JsonSerializable(explicitToJson: true)
class _$_InstructionTask extends _InstructionTask {
  const _$_InstructionTask(
      {required this.title,
      required this.text,
      this.isOptional = false,
      this.buttonText = 'Next',
      required this.taskIdentifier,
      this.canGoBack = false,
      this.showProgress = false,
      this.showAppBar = true})
      : super._();

  factory _$_InstructionTask.fromJson(Map<String, dynamic> json) =>
      _$$_InstructionTaskFromJson(json);

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

  @override
  String toString() {
    return 'InstructionTask(title: $title, text: $text, isOptional: $isOptional, buttonText: $buttonText, taskIdentifier: $taskIdentifier, canGoBack: $canGoBack, showProgress: $showProgress, showAppBar: $showAppBar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InstructionTask &&
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
  _$$_InstructionTaskCopyWith<_$_InstructionTask> get copyWith =>
      __$$_InstructionTaskCopyWithImpl<_$_InstructionTask>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstructionTaskToJson(
      this,
    );
  }
}

abstract class _InstructionTask extends InstructionTask {
  const factory _InstructionTask(
      {required final String title,
      required final String text,
      final bool isOptional,
      final String buttonText,
      required final TaskIdentifier taskIdentifier,
      final bool canGoBack,
      final bool showProgress,
      final bool showAppBar}) = _$_InstructionTask;
  const _InstructionTask._() : super._();

  factory _InstructionTask.fromJson(Map<String, dynamic> json) =
      _$_InstructionTask.fromJson;

  @override
  String get title;
  @override
  String get text;
  @override
  bool get isOptional;
  @override
  String get buttonText;
  @override
  TaskIdentifier get taskIdentifier;
  @override
  bool get canGoBack;
  @override
  bool get showProgress;
  @override
  bool get showAppBar;
  @override
  @JsonKey(ignore: true)
  _$$_InstructionTaskCopyWith<_$_InstructionTask> get copyWith =>
      throw _privateConstructorUsedError;
}
