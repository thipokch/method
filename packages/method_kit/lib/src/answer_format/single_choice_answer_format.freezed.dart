// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'single_choice_answer_format.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SingleChoiceAnswerFormat _$SingleChoiceAnswerFormatFromJson(
    Map<String, dynamic> json) {
  return _SingleChoiceAnswerFormat.fromJson(json);
}

/// @nodoc
mixin _$SingleChoiceAnswerFormat {
  List<TextChoice> get textChoices => throw _privateConstructorUsedError;
  TextChoice? get defaultSelection => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleChoiceAnswerFormatCopyWith<SingleChoiceAnswerFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleChoiceAnswerFormatCopyWith<$Res> {
  factory $SingleChoiceAnswerFormatCopyWith(SingleChoiceAnswerFormat value,
          $Res Function(SingleChoiceAnswerFormat) then) =
      _$SingleChoiceAnswerFormatCopyWithImpl<$Res>;
  $Res call({List<TextChoice> textChoices, TextChoice? defaultSelection});

  $TextChoiceCopyWith<$Res>? get defaultSelection;
}

/// @nodoc
class _$SingleChoiceAnswerFormatCopyWithImpl<$Res>
    implements $SingleChoiceAnswerFormatCopyWith<$Res> {
  _$SingleChoiceAnswerFormatCopyWithImpl(this._value, this._then);

  final SingleChoiceAnswerFormat _value;
  // ignore: unused_field
  final $Res Function(SingleChoiceAnswerFormat) _then;

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
              as TextChoice?,
    ));
  }

  @override
  $TextChoiceCopyWith<$Res>? get defaultSelection {
    if (_value.defaultSelection == null) {
      return null;
    }

    return $TextChoiceCopyWith<$Res>(_value.defaultSelection!, (value) {
      return _then(_value.copyWith(defaultSelection: value));
    });
  }
}

/// @nodoc
abstract class _$$_SingleChoiceAnswerFormatCopyWith<$Res>
    implements $SingleChoiceAnswerFormatCopyWith<$Res> {
  factory _$$_SingleChoiceAnswerFormatCopyWith(
          _$_SingleChoiceAnswerFormat value,
          $Res Function(_$_SingleChoiceAnswerFormat) then) =
      __$$_SingleChoiceAnswerFormatCopyWithImpl<$Res>;
  @override
  $Res call({List<TextChoice> textChoices, TextChoice? defaultSelection});

  @override
  $TextChoiceCopyWith<$Res>? get defaultSelection;
}

/// @nodoc
class __$$_SingleChoiceAnswerFormatCopyWithImpl<$Res>
    extends _$SingleChoiceAnswerFormatCopyWithImpl<$Res>
    implements _$$_SingleChoiceAnswerFormatCopyWith<$Res> {
  __$$_SingleChoiceAnswerFormatCopyWithImpl(_$_SingleChoiceAnswerFormat _value,
      $Res Function(_$_SingleChoiceAnswerFormat) _then)
      : super(_value, (v) => _then(v as _$_SingleChoiceAnswerFormat));

  @override
  _$_SingleChoiceAnswerFormat get _value =>
      super._value as _$_SingleChoiceAnswerFormat;

  @override
  $Res call({
    Object? textChoices = freezed,
    Object? defaultSelection = freezed,
  }) {
    return _then(_$_SingleChoiceAnswerFormat(
      textChoices: textChoices == freezed
          ? _value._textChoices
          : textChoices // ignore: cast_nullable_to_non_nullable
              as List<TextChoice>,
      defaultSelection: defaultSelection == freezed
          ? _value.defaultSelection
          : defaultSelection // ignore: cast_nullable_to_non_nullable
              as TextChoice?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SingleChoiceAnswerFormat implements _SingleChoiceAnswerFormat {
  const _$_SingleChoiceAnswerFormat(
      {required final List<TextChoice> textChoices, this.defaultSelection})
      : _textChoices = textChoices;

  factory _$_SingleChoiceAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$$_SingleChoiceAnswerFormatFromJson(json);

  final List<TextChoice> _textChoices;
  @override
  List<TextChoice> get textChoices {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_textChoices);
  }

  @override
  final TextChoice? defaultSelection;

  @override
  String toString() {
    return 'SingleChoiceAnswerFormat(textChoices: $textChoices, defaultSelection: $defaultSelection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SingleChoiceAnswerFormat &&
            const DeepCollectionEquality()
                .equals(other._textChoices, _textChoices) &&
            const DeepCollectionEquality()
                .equals(other.defaultSelection, defaultSelection));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_textChoices),
      const DeepCollectionEquality().hash(defaultSelection));

  @JsonKey(ignore: true)
  @override
  _$$_SingleChoiceAnswerFormatCopyWith<_$_SingleChoiceAnswerFormat>
      get copyWith => __$$_SingleChoiceAnswerFormatCopyWithImpl<
          _$_SingleChoiceAnswerFormat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SingleChoiceAnswerFormatToJson(
      this,
    );
  }
}

abstract class _SingleChoiceAnswerFormat implements SingleChoiceAnswerFormat {
  const factory _SingleChoiceAnswerFormat(
      {required final List<TextChoice> textChoices,
      final TextChoice? defaultSelection}) = _$_SingleChoiceAnswerFormat;

  factory _SingleChoiceAnswerFormat.fromJson(Map<String, dynamic> json) =
      _$_SingleChoiceAnswerFormat.fromJson;

  @override
  List<TextChoice> get textChoices;
  @override
  TextChoice? get defaultSelection;
  @override
  @JsonKey(ignore: true)
  _$$_SingleChoiceAnswerFormatCopyWith<_$_SingleChoiceAnswerFormat>
      get copyWith => throw _privateConstructorUsedError;
}
