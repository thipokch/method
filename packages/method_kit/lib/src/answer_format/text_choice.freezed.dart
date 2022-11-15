// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'text_choice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TextChoice _$TextChoiceFromJson(Map<String, dynamic> json) {
  return _TextChoice.fromJson(json);
}

/// @nodoc
mixin _$TextChoice {
  String get text => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextChoiceCopyWith<TextChoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextChoiceCopyWith<$Res> {
  factory $TextChoiceCopyWith(
          TextChoice value, $Res Function(TextChoice) then) =
      _$TextChoiceCopyWithImpl<$Res>;
  $Res call({String text, String value});
}

/// @nodoc
class _$TextChoiceCopyWithImpl<$Res> implements $TextChoiceCopyWith<$Res> {
  _$TextChoiceCopyWithImpl(this._value, this._then);

  final TextChoice _value;
  // ignore: unused_field
  final $Res Function(TextChoice) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TextChoiceCopyWith<$Res>
    implements $TextChoiceCopyWith<$Res> {
  factory _$$_TextChoiceCopyWith(
          _$_TextChoice value, $Res Function(_$_TextChoice) then) =
      __$$_TextChoiceCopyWithImpl<$Res>;
  @override
  $Res call({String text, String value});
}

/// @nodoc
class __$$_TextChoiceCopyWithImpl<$Res> extends _$TextChoiceCopyWithImpl<$Res>
    implements _$$_TextChoiceCopyWith<$Res> {
  __$$_TextChoiceCopyWithImpl(
      _$_TextChoice _value, $Res Function(_$_TextChoice) _then)
      : super(_value, (v) => _then(v as _$_TextChoice));

  @override
  _$_TextChoice get _value => super._value as _$_TextChoice;

  @override
  $Res call({
    Object? text = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_TextChoice(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TextChoice extends _TextChoice {
  const _$_TextChoice({required this.text, required this.value}) : super._();

  factory _$_TextChoice.fromJson(Map<String, dynamic> json) =>
      _$$_TextChoiceFromJson(json);

  @override
  final String text;
  @override
  final String value;

  @override
  String toString() {
    return 'TextChoice(text: $text, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextChoice &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_TextChoiceCopyWith<_$_TextChoice> get copyWith =>
      __$$_TextChoiceCopyWithImpl<_$_TextChoice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TextChoiceToJson(
      this,
    );
  }
}

abstract class _TextChoice extends TextChoice {
  const factory _TextChoice(
      {required final String text,
      required final String value}) = _$_TextChoice;
  const _TextChoice._() : super._();

  factory _TextChoice.fromJson(Map<String, dynamic> json) =
      _$_TextChoice.fromJson;

  @override
  String get text;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_TextChoiceCopyWith<_$_TextChoice> get copyWith =>
      throw _privateConstructorUsedError;
}
