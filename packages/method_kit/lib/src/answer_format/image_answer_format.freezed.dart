// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_answer_format.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageAnswerFormat _$ImageAnswerFormatFromJson(Map<String, dynamic> json) {
  return _ImageAnswerFormat.fromJson(json);
}

/// @nodoc
mixin _$ImageAnswerFormat {
  String? get defaultValue => throw _privateConstructorUsedError;
  String get buttonText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageAnswerFormatCopyWith<ImageAnswerFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageAnswerFormatCopyWith<$Res> {
  factory $ImageAnswerFormatCopyWith(
          ImageAnswerFormat value, $Res Function(ImageAnswerFormat) then) =
      _$ImageAnswerFormatCopyWithImpl<$Res>;
  $Res call({String? defaultValue, String buttonText});
}

/// @nodoc
class _$ImageAnswerFormatCopyWithImpl<$Res>
    implements $ImageAnswerFormatCopyWith<$Res> {
  _$ImageAnswerFormatCopyWithImpl(this._value, this._then);

  final ImageAnswerFormat _value;
  // ignore: unused_field
  final $Res Function(ImageAnswerFormat) _then;

  @override
  $Res call({
    Object? defaultValue = freezed,
    Object? buttonText = freezed,
  }) {
    return _then(_value.copyWith(
      defaultValue: defaultValue == freezed
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as String?,
      buttonText: buttonText == freezed
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ImageAnswerFormatCopyWith<$Res>
    implements $ImageAnswerFormatCopyWith<$Res> {
  factory _$$_ImageAnswerFormatCopyWith(_$_ImageAnswerFormat value,
          $Res Function(_$_ImageAnswerFormat) then) =
      __$$_ImageAnswerFormatCopyWithImpl<$Res>;
  @override
  $Res call({String? defaultValue, String buttonText});
}

/// @nodoc
class __$$_ImageAnswerFormatCopyWithImpl<$Res>
    extends _$ImageAnswerFormatCopyWithImpl<$Res>
    implements _$$_ImageAnswerFormatCopyWith<$Res> {
  __$$_ImageAnswerFormatCopyWithImpl(
      _$_ImageAnswerFormat _value, $Res Function(_$_ImageAnswerFormat) _then)
      : super(_value, (v) => _then(v as _$_ImageAnswerFormat));

  @override
  _$_ImageAnswerFormat get _value => super._value as _$_ImageAnswerFormat;

  @override
  $Res call({
    Object? defaultValue = freezed,
    Object? buttonText = freezed,
  }) {
    return _then(_$_ImageAnswerFormat(
      defaultValue: defaultValue == freezed
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as String?,
      buttonText: buttonText == freezed
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageAnswerFormat implements _ImageAnswerFormat {
  const _$_ImageAnswerFormat({this.defaultValue, this.buttonText = 'Image: '});

  factory _$_ImageAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$$_ImageAnswerFormatFromJson(json);

  @override
  final String? defaultValue;
  @override
  @JsonKey()
  final String buttonText;

  @override
  String toString() {
    return 'ImageAnswerFormat(defaultValue: $defaultValue, buttonText: $buttonText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageAnswerFormat &&
            const DeepCollectionEquality()
                .equals(other.defaultValue, defaultValue) &&
            const DeepCollectionEquality()
                .equals(other.buttonText, buttonText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(defaultValue),
      const DeepCollectionEquality().hash(buttonText));

  @JsonKey(ignore: true)
  @override
  _$$_ImageAnswerFormatCopyWith<_$_ImageAnswerFormat> get copyWith =>
      __$$_ImageAnswerFormatCopyWithImpl<_$_ImageAnswerFormat>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageAnswerFormatToJson(
      this,
    );
  }
}

abstract class _ImageAnswerFormat implements ImageAnswerFormat {
  const factory _ImageAnswerFormat(
      {final String? defaultValue,
      final String buttonText}) = _$_ImageAnswerFormat;

  factory _ImageAnswerFormat.fromJson(Map<String, dynamic> json) =
      _$_ImageAnswerFormat.fromJson;

  @override
  String? get defaultValue;
  @override
  String get buttonText;
  @override
  @JsonKey(ignore: true)
  _$$_ImageAnswerFormatCopyWith<_$_ImageAnswerFormat> get copyWith =>
      throw _privateConstructorUsedError;
}
