// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'text_answer_format.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TextAnswerFormat _$TextAnswerFormatFromJson(Map<String, dynamic> json) {
  return _TextAnswerFormat.fromJson(json);
}

/// @nodoc
mixin _$TextAnswerFormat {
  int? get maxLines => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get hint => throw _privateConstructorUsedError;

  /// Regular expression by which the text gets validated
  /// default: '^(?!\s*$).+' that checks if the entered text is empty
  /// to allow any type of an answer including an empty one;
  /// set it explicitly to null.
// @JsonKey(defaultValue: '^(?!\s*\$).+')
// @Default('^(?!\s*\$).+')
  @JsonKey(defaultValue: '')
  String get validationRegEx => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextAnswerFormatCopyWith<TextAnswerFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextAnswerFormatCopyWith<$Res> {
  factory $TextAnswerFormatCopyWith(
          TextAnswerFormat value, $Res Function(TextAnswerFormat) then) =
      _$TextAnswerFormatCopyWithImpl<$Res>;
  $Res call(
      {int? maxLines,
      @JsonKey(defaultValue: '') String hint,
      @JsonKey(defaultValue: '') String validationRegEx});
}

/// @nodoc
class _$TextAnswerFormatCopyWithImpl<$Res>
    implements $TextAnswerFormatCopyWith<$Res> {
  _$TextAnswerFormatCopyWithImpl(this._value, this._then);

  final TextAnswerFormat _value;
  // ignore: unused_field
  final $Res Function(TextAnswerFormat) _then;

  @override
  $Res call({
    Object? maxLines = freezed,
    Object? hint = freezed,
    Object? validationRegEx = freezed,
  }) {
    return _then(_value.copyWith(
      maxLines: maxLines == freezed
          ? _value.maxLines
          : maxLines // ignore: cast_nullable_to_non_nullable
              as int?,
      hint: hint == freezed
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String,
      validationRegEx: validationRegEx == freezed
          ? _value.validationRegEx
          : validationRegEx // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TextAnswerFormatCopyWith<$Res>
    implements $TextAnswerFormatCopyWith<$Res> {
  factory _$$_TextAnswerFormatCopyWith(
          _$_TextAnswerFormat value, $Res Function(_$_TextAnswerFormat) then) =
      __$$_TextAnswerFormatCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? maxLines,
      @JsonKey(defaultValue: '') String hint,
      @JsonKey(defaultValue: '') String validationRegEx});
}

/// @nodoc
class __$$_TextAnswerFormatCopyWithImpl<$Res>
    extends _$TextAnswerFormatCopyWithImpl<$Res>
    implements _$$_TextAnswerFormatCopyWith<$Res> {
  __$$_TextAnswerFormatCopyWithImpl(
      _$_TextAnswerFormat _value, $Res Function(_$_TextAnswerFormat) _then)
      : super(_value, (v) => _then(v as _$_TextAnswerFormat));

  @override
  _$_TextAnswerFormat get _value => super._value as _$_TextAnswerFormat;

  @override
  $Res call({
    Object? maxLines = freezed,
    Object? hint = freezed,
    Object? validationRegEx = freezed,
  }) {
    return _then(_$_TextAnswerFormat(
      maxLines: maxLines == freezed
          ? _value.maxLines
          : maxLines // ignore: cast_nullable_to_non_nullable
              as int?,
      hint: hint == freezed
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String,
      validationRegEx: validationRegEx == freezed
          ? _value.validationRegEx
          : validationRegEx // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TextAnswerFormat implements _TextAnswerFormat {
  const _$_TextAnswerFormat(
      {this.maxLines,
      @JsonKey(defaultValue: '') this.hint = '',
      @JsonKey(defaultValue: '') this.validationRegEx = ''});

  factory _$_TextAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$$_TextAnswerFormatFromJson(json);

  @override
  final int? maxLines;
  @override
  @JsonKey(defaultValue: '')
  final String hint;

  /// Regular expression by which the text gets validated
  /// default: '^(?!\s*$).+' that checks if the entered text is empty
  /// to allow any type of an answer including an empty one;
  /// set it explicitly to null.
// @JsonKey(defaultValue: '^(?!\s*\$).+')
// @Default('^(?!\s*\$).+')
  @override
  @JsonKey(defaultValue: '')
  final String validationRegEx;

  @override
  String toString() {
    return 'TextAnswerFormat(maxLines: $maxLines, hint: $hint, validationRegEx: $validationRegEx)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextAnswerFormat &&
            const DeepCollectionEquality().equals(other.maxLines, maxLines) &&
            const DeepCollectionEquality().equals(other.hint, hint) &&
            const DeepCollectionEquality()
                .equals(other.validationRegEx, validationRegEx));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(maxLines),
      const DeepCollectionEquality().hash(hint),
      const DeepCollectionEquality().hash(validationRegEx));

  @JsonKey(ignore: true)
  @override
  _$$_TextAnswerFormatCopyWith<_$_TextAnswerFormat> get copyWith =>
      __$$_TextAnswerFormatCopyWithImpl<_$_TextAnswerFormat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TextAnswerFormatToJson(
      this,
    );
  }
}

abstract class _TextAnswerFormat implements TextAnswerFormat {
  const factory _TextAnswerFormat(
          {final int? maxLines,
          @JsonKey(defaultValue: '') final String hint,
          @JsonKey(defaultValue: '') final String validationRegEx}) =
      _$_TextAnswerFormat;

  factory _TextAnswerFormat.fromJson(Map<String, dynamic> json) =
      _$_TextAnswerFormat.fromJson;

  @override
  int? get maxLines;
  @override
  @JsonKey(defaultValue: '')
  String get hint;
  @override

  /// Regular expression by which the text gets validated
  /// default: '^(?!\s*$).+' that checks if the entered text is empty
  /// to allow any type of an answer including an empty one;
  /// set it explicitly to null.
// @JsonKey(defaultValue: '^(?!\s*\$).+')
// @Default('^(?!\s*\$).+')
  @JsonKey(defaultValue: '')
  String get validationRegEx;
  @override
  @JsonKey(ignore: true)
  _$$_TextAnswerFormatCopyWith<_$_TextAnswerFormat> get copyWith =>
      throw _privateConstructorUsedError;
}
