// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'multiple_choice_answer_format.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MultipleChoiceAnswerFormat _$MultipleChoiceAnswerFormatFromJson(
    Map<String, dynamic> json) {
  return _MultipleChoiceAnswerFormat.fromJson(json);
}

/// @nodoc
mixin _$MultipleChoiceAnswerFormat {
  List<TextChoice> get textChoices =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(defaultValue: [])
  List<TextChoice> get defaultSelection => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultipleChoiceAnswerFormatCopyWith<MultipleChoiceAnswerFormat>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultipleChoiceAnswerFormatCopyWith<$Res> {
  factory $MultipleChoiceAnswerFormatCopyWith(MultipleChoiceAnswerFormat value,
          $Res Function(MultipleChoiceAnswerFormat) then) =
      _$MultipleChoiceAnswerFormatCopyWithImpl<$Res>;
  $Res call(
      {List<TextChoice> textChoices,
      @JsonKey(defaultValue: []) List<TextChoice> defaultSelection});
}

/// @nodoc
class _$MultipleChoiceAnswerFormatCopyWithImpl<$Res>
    implements $MultipleChoiceAnswerFormatCopyWith<$Res> {
  _$MultipleChoiceAnswerFormatCopyWithImpl(this._value, this._then);

  final MultipleChoiceAnswerFormat _value;
  // ignore: unused_field
  final $Res Function(MultipleChoiceAnswerFormat) _then;

  @override
  $Res call({
    Object? textChoices = freezed,
    Object? defaultSelection = freezed,
  }) {
    return _then(_value.copyWith(
      textChoices: textChoices == freezed
          ? _value.textChoices
          : textChoices // ignore: cast_nullable_to_non_nullable
              as List<TextChoice>,
      defaultSelection: defaultSelection == freezed
          ? _value.defaultSelection
          : defaultSelection // ignore: cast_nullable_to_non_nullable
              as List<TextChoice>,
    ));
  }
}

/// @nodoc
abstract class _$$_MultipleChoiceAnswerFormatCopyWith<$Res>
    implements $MultipleChoiceAnswerFormatCopyWith<$Res> {
  factory _$$_MultipleChoiceAnswerFormatCopyWith(
          _$_MultipleChoiceAnswerFormat value,
          $Res Function(_$_MultipleChoiceAnswerFormat) then) =
      __$$_MultipleChoiceAnswerFormatCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<TextChoice> textChoices,
      @JsonKey(defaultValue: []) List<TextChoice> defaultSelection});
}

/// @nodoc
class __$$_MultipleChoiceAnswerFormatCopyWithImpl<$Res>
    extends _$MultipleChoiceAnswerFormatCopyWithImpl<$Res>
    implements _$$_MultipleChoiceAnswerFormatCopyWith<$Res> {
  __$$_MultipleChoiceAnswerFormatCopyWithImpl(
      _$_MultipleChoiceAnswerFormat _value,
      $Res Function(_$_MultipleChoiceAnswerFormat) _then)
      : super(_value, (v) => _then(v as _$_MultipleChoiceAnswerFormat));

  @override
  _$_MultipleChoiceAnswerFormat get _value =>
      super._value as _$_MultipleChoiceAnswerFormat;

  @override
  $Res call({
    Object? textChoices = freezed,
    Object? defaultSelection = freezed,
  }) {
    return _then(_$_MultipleChoiceAnswerFormat(
      textChoices: textChoices == freezed
          ? _value._textChoices
          : textChoices // ignore: cast_nullable_to_non_nullable
              as List<TextChoice>,
      defaultSelection: defaultSelection == freezed
          ? _value._defaultSelection
          : defaultSelection // ignore: cast_nullable_to_non_nullable
              as List<TextChoice>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_MultipleChoiceAnswerFormat implements _MultipleChoiceAnswerFormat {
  const _$_MultipleChoiceAnswerFormat(
      {required final List<TextChoice> textChoices,
      @JsonKey(defaultValue: [])
          final List<TextChoice> defaultSelection = const []})
      : _textChoices = textChoices,
        _defaultSelection = defaultSelection;

  factory _$_MultipleChoiceAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$$_MultipleChoiceAnswerFormatFromJson(json);

  final List<TextChoice> _textChoices;
  @override
  List<TextChoice> get textChoices {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_textChoices);
  }

// ignore: invalid_annotation_target
  final List<TextChoice> _defaultSelection;
// ignore: invalid_annotation_target
  @override
  @JsonKey(defaultValue: [])
  List<TextChoice> get defaultSelection {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_defaultSelection);
  }

  @override
  String toString() {
    return 'MultipleChoiceAnswerFormat(textChoices: $textChoices, defaultSelection: $defaultSelection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MultipleChoiceAnswerFormat &&
            const DeepCollectionEquality()
                .equals(other._textChoices, _textChoices) &&
            const DeepCollectionEquality()
                .equals(other._defaultSelection, _defaultSelection));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_textChoices),
      const DeepCollectionEquality().hash(_defaultSelection));

  @JsonKey(ignore: true)
  @override
  _$$_MultipleChoiceAnswerFormatCopyWith<_$_MultipleChoiceAnswerFormat>
      get copyWith => __$$_MultipleChoiceAnswerFormatCopyWithImpl<
          _$_MultipleChoiceAnswerFormat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MultipleChoiceAnswerFormatToJson(
      this,
    );
  }
}

abstract class _MultipleChoiceAnswerFormat
    implements MultipleChoiceAnswerFormat {
  const factory _MultipleChoiceAnswerFormat(
          {required final List<TextChoice> textChoices,
          @JsonKey(defaultValue: []) final List<TextChoice> defaultSelection}) =
      _$_MultipleChoiceAnswerFormat;

  factory _MultipleChoiceAnswerFormat.fromJson(Map<String, dynamic> json) =
      _$_MultipleChoiceAnswerFormat.fromJson;

  @override
  List<TextChoice> get textChoices;
  @override // ignore: invalid_annotation_target
  @JsonKey(defaultValue: [])
  List<TextChoice> get defaultSelection;
  @override
  @JsonKey(ignore: true)
  _$$_MultipleChoiceAnswerFormatCopyWith<_$_MultipleChoiceAnswerFormat>
      get copyWith => throw _privateConstructorUsedError;
}
