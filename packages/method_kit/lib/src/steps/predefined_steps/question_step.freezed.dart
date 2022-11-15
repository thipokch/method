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

QuestionStep _$QuestionStepFromJson(Map<String, dynamic> json) {
  return _QuestionStep.fromJson(json);
}

/// @nodoc
mixin _$QuestionStep {
  bool get isOptional => throw _privateConstructorUsedError;
  String get buttonText => throw _privateConstructorUsedError;
  StepIdentifier get stepIdentifier => throw _privateConstructorUsedError;
  bool get showAppBar => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get text =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(ignore: true)
  Widget get content => throw _privateConstructorUsedError;
  AnswerFormat get answerFormat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionStepCopyWith<QuestionStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionStepCopyWith<$Res> {
  factory $QuestionStepCopyWith(
          QuestionStep value, $Res Function(QuestionStep) then) =
      _$QuestionStepCopyWithImpl<$Res>;
  $Res call(
      {bool isOptional,
      String buttonText,
      StepIdentifier stepIdentifier,
      bool showAppBar,
      String title,
      String text,
      @JsonKey(ignore: true) Widget content,
      AnswerFormat answerFormat});

  $StepIdentifierCopyWith<$Res> get stepIdentifier;
}

/// @nodoc
class _$QuestionStepCopyWithImpl<$Res> implements $QuestionStepCopyWith<$Res> {
  _$QuestionStepCopyWithImpl(this._value, this._then);

  final QuestionStep _value;
  // ignore: unused_field
  final $Res Function(QuestionStep) _then;

  @override
  $Res call({
    Object? isOptional = freezed,
    Object? buttonText = freezed,
    Object? stepIdentifier = freezed,
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
      stepIdentifier: stepIdentifier == freezed
          ? _value.stepIdentifier
          : stepIdentifier // ignore: cast_nullable_to_non_nullable
              as StepIdentifier,
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
  $StepIdentifierCopyWith<$Res> get stepIdentifier {
    return $StepIdentifierCopyWith<$Res>(_value.stepIdentifier, (value) {
      return _then(_value.copyWith(stepIdentifier: value));
    });
  }
}

/// @nodoc
abstract class _$$_QuestionStepCopyWith<$Res>
    implements $QuestionStepCopyWith<$Res> {
  factory _$$_QuestionStepCopyWith(
          _$_QuestionStep value, $Res Function(_$_QuestionStep) then) =
      __$$_QuestionStepCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isOptional,
      String buttonText,
      StepIdentifier stepIdentifier,
      bool showAppBar,
      String title,
      String text,
      @JsonKey(ignore: true) Widget content,
      AnswerFormat answerFormat});

  @override
  $StepIdentifierCopyWith<$Res> get stepIdentifier;
}

/// @nodoc
class __$$_QuestionStepCopyWithImpl<$Res>
    extends _$QuestionStepCopyWithImpl<$Res>
    implements _$$_QuestionStepCopyWith<$Res> {
  __$$_QuestionStepCopyWithImpl(
      _$_QuestionStep _value, $Res Function(_$_QuestionStep) _then)
      : super(_value, (v) => _then(v as _$_QuestionStep));

  @override
  _$_QuestionStep get _value => super._value as _$_QuestionStep;

  @override
  $Res call({
    Object? isOptional = freezed,
    Object? buttonText = freezed,
    Object? stepIdentifier = freezed,
    Object? showAppBar = freezed,
    Object? title = freezed,
    Object? text = freezed,
    Object? content = freezed,
    Object? answerFormat = freezed,
  }) {
    return _then(_$_QuestionStep(
      isOptional: isOptional == freezed
          ? _value.isOptional
          : isOptional // ignore: cast_nullable_to_non_nullable
              as bool,
      buttonText: buttonText == freezed
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as String,
      stepIdentifier: stepIdentifier == freezed
          ? _value.stepIdentifier
          : stepIdentifier // ignore: cast_nullable_to_non_nullable
              as StepIdentifier,
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
class _$_QuestionStep extends _QuestionStep {
  const _$_QuestionStep(
      {this.isOptional = false,
      this.buttonText = 'Next',
      required this.stepIdentifier,
      this.showAppBar = true,
      this.title = '',
      this.text = '',
      @JsonKey(ignore: true) this.content = const SizedBox.shrink(),
      required this.answerFormat})
      : super._();

  factory _$_QuestionStep.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionStepFromJson(json);

  @override
  @JsonKey()
  final bool isOptional;
  @override
  @JsonKey()
  final String buttonText;
  @override
  final StepIdentifier stepIdentifier;
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
    return 'QuestionStep(isOptional: $isOptional, buttonText: $buttonText, stepIdentifier: $stepIdentifier, showAppBar: $showAppBar, title: $title, text: $text, content: $content, answerFormat: $answerFormat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionStep &&
            const DeepCollectionEquality()
                .equals(other.isOptional, isOptional) &&
            const DeepCollectionEquality()
                .equals(other.buttonText, buttonText) &&
            const DeepCollectionEquality()
                .equals(other.stepIdentifier, stepIdentifier) &&
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
      const DeepCollectionEquality().hash(stepIdentifier),
      const DeepCollectionEquality().hash(showAppBar),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(answerFormat));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionStepCopyWith<_$_QuestionStep> get copyWith =>
      __$$_QuestionStepCopyWithImpl<_$_QuestionStep>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionStepToJson(
      this,
    );
  }
}

abstract class _QuestionStep extends QuestionStep {
  const factory _QuestionStep(
      {final bool isOptional,
      final String buttonText,
      required final StepIdentifier stepIdentifier,
      final bool showAppBar,
      final String title,
      final String text,
      @JsonKey(ignore: true) final Widget content,
      required final AnswerFormat answerFormat}) = _$_QuestionStep;
  const _QuestionStep._() : super._();

  factory _QuestionStep.fromJson(Map<String, dynamic> json) =
      _$_QuestionStep.fromJson;

  @override
  bool get isOptional;
  @override
  String get buttonText;
  @override
  StepIdentifier get stepIdentifier;
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
  _$$_QuestionStepCopyWith<_$_QuestionStep> get copyWith =>
      throw _privateConstructorUsedError;
}
