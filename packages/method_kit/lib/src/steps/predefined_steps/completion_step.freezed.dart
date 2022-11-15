// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'completion_step.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompletionStep _$CompletionStepFromJson(Map<String, dynamic> json) {
  return _CompletionStep.fromJson(json);
}

/// @nodoc
mixin _$CompletionStep {
  bool get isOptional => throw _privateConstructorUsedError;
  StepIdentifier get stepIdentifier => throw _privateConstructorUsedError;
  String get buttonText => throw _privateConstructorUsedError;
  bool get showAppBar => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get assetPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompletionStepCopyWith<CompletionStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletionStepCopyWith<$Res> {
  factory $CompletionStepCopyWith(
          CompletionStep value, $Res Function(CompletionStep) then) =
      _$CompletionStepCopyWithImpl<$Res>;
  $Res call(
      {bool isOptional,
      StepIdentifier stepIdentifier,
      String buttonText,
      bool showAppBar,
      String title,
      String text,
      String assetPath});

  $StepIdentifierCopyWith<$Res> get stepIdentifier;
}

/// @nodoc
class _$CompletionStepCopyWithImpl<$Res>
    implements $CompletionStepCopyWith<$Res> {
  _$CompletionStepCopyWithImpl(this._value, this._then);

  final CompletionStep _value;
  // ignore: unused_field
  final $Res Function(CompletionStep) _then;

  @override
  $Res call({
    Object? isOptional = freezed,
    Object? stepIdentifier = freezed,
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
      stepIdentifier: stepIdentifier == freezed
          ? _value.stepIdentifier
          : stepIdentifier // ignore: cast_nullable_to_non_nullable
              as StepIdentifier,
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
  $StepIdentifierCopyWith<$Res> get stepIdentifier {
    return $StepIdentifierCopyWith<$Res>(_value.stepIdentifier, (value) {
      return _then(_value.copyWith(stepIdentifier: value));
    });
  }
}

/// @nodoc
abstract class _$$_CompletionStepCopyWith<$Res>
    implements $CompletionStepCopyWith<$Res> {
  factory _$$_CompletionStepCopyWith(
          _$_CompletionStep value, $Res Function(_$_CompletionStep) then) =
      __$$_CompletionStepCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isOptional,
      StepIdentifier stepIdentifier,
      String buttonText,
      bool showAppBar,
      String title,
      String text,
      String assetPath});

  @override
  $StepIdentifierCopyWith<$Res> get stepIdentifier;
}

/// @nodoc
class __$$_CompletionStepCopyWithImpl<$Res>
    extends _$CompletionStepCopyWithImpl<$Res>
    implements _$$_CompletionStepCopyWith<$Res> {
  __$$_CompletionStepCopyWithImpl(
      _$_CompletionStep _value, $Res Function(_$_CompletionStep) _then)
      : super(_value, (v) => _then(v as _$_CompletionStep));

  @override
  _$_CompletionStep get _value => super._value as _$_CompletionStep;

  @override
  $Res call({
    Object? isOptional = freezed,
    Object? stepIdentifier = freezed,
    Object? buttonText = freezed,
    Object? showAppBar = freezed,
    Object? title = freezed,
    Object? text = freezed,
    Object? assetPath = freezed,
  }) {
    return _then(_$_CompletionStep(
      isOptional: isOptional == freezed
          ? _value.isOptional
          : isOptional // ignore: cast_nullable_to_non_nullable
              as bool,
      stepIdentifier: stepIdentifier == freezed
          ? _value.stepIdentifier
          : stepIdentifier // ignore: cast_nullable_to_non_nullable
              as StepIdentifier,
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
class _$_CompletionStep extends _CompletionStep {
  const _$_CompletionStep(
      {this.isOptional = false,
      required this.stepIdentifier,
      this.buttonText = 'End Survey',
      this.showAppBar = true,
      required this.title,
      required this.text,
      this.assetPath = ''})
      : super._();

  factory _$_CompletionStep.fromJson(Map<String, dynamic> json) =>
      _$$_CompletionStepFromJson(json);

  @override
  @JsonKey()
  final bool isOptional;
  @override
  final StepIdentifier stepIdentifier;
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
    return 'CompletionStep(isOptional: $isOptional, stepIdentifier: $stepIdentifier, buttonText: $buttonText, showAppBar: $showAppBar, title: $title, text: $text, assetPath: $assetPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompletionStep &&
            const DeepCollectionEquality()
                .equals(other.isOptional, isOptional) &&
            const DeepCollectionEquality()
                .equals(other.stepIdentifier, stepIdentifier) &&
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
      const DeepCollectionEquality().hash(stepIdentifier),
      const DeepCollectionEquality().hash(buttonText),
      const DeepCollectionEquality().hash(showAppBar),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(assetPath));

  @JsonKey(ignore: true)
  @override
  _$$_CompletionStepCopyWith<_$_CompletionStep> get copyWith =>
      __$$_CompletionStepCopyWithImpl<_$_CompletionStep>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompletionStepToJson(
      this,
    );
  }
}

abstract class _CompletionStep extends CompletionStep {
  const factory _CompletionStep(
      {final bool isOptional,
      required final StepIdentifier stepIdentifier,
      final String buttonText,
      final bool showAppBar,
      required final String title,
      required final String text,
      final String assetPath}) = _$_CompletionStep;
  const _CompletionStep._() : super._();

  factory _CompletionStep.fromJson(Map<String, dynamic> json) =
      _$_CompletionStep.fromJson;

  @override
  bool get isOptional;
  @override
  StepIdentifier get stepIdentifier;
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
  _$$_CompletionStepCopyWith<_$_CompletionStep> get copyWith =>
      throw _privateConstructorUsedError;
}
