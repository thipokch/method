// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'integer_answer_format.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IntegerAnswerFormat _$IntegerAnswerFormatFromJson(Map<String, dynamic> json) {
  return _IntegerAnswerFormat.fromJson(json);
}

/// @nodoc
mixin _$IntegerAnswerFormat {
  int? get defaultValue => throw _privateConstructorUsedError;
  String get hint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntegerAnswerFormatCopyWith<IntegerAnswerFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntegerAnswerFormatCopyWith<$Res> {
  factory $IntegerAnswerFormatCopyWith(
          IntegerAnswerFormat value, $Res Function(IntegerAnswerFormat) then) =
      _$IntegerAnswerFormatCopyWithImpl<$Res>;
  $Res call({int? defaultValue, String hint});
}

/// @nodoc
class _$IntegerAnswerFormatCopyWithImpl<$Res>
    implements $IntegerAnswerFormatCopyWith<$Res> {
  _$IntegerAnswerFormatCopyWithImpl(this._value, this._then);

  final IntegerAnswerFormat _value;
  // ignore: unused_field
  final $Res Function(IntegerAnswerFormat) _then;

  @override
  $Res call({
    Object? defaultValue = freezed,
    Object? hint = freezed,
  }) {
    return _then(_value.copyWith(
      defaultValue: defaultValue == freezed
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as int?,
      hint: hint == freezed
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_IntegerAnswerFormatCopyWith<$Res>
    implements $IntegerAnswerFormatCopyWith<$Res> {
  factory _$$_IntegerAnswerFormatCopyWith(_$_IntegerAnswerFormat value,
          $Res Function(_$_IntegerAnswerFormat) then) =
      __$$_IntegerAnswerFormatCopyWithImpl<$Res>;
  @override
  $Res call({int? defaultValue, String hint});
}

/// @nodoc
class __$$_IntegerAnswerFormatCopyWithImpl<$Res>
    extends _$IntegerAnswerFormatCopyWithImpl<$Res>
    implements _$$_IntegerAnswerFormatCopyWith<$Res> {
  __$$_IntegerAnswerFormatCopyWithImpl(_$_IntegerAnswerFormat _value,
      $Res Function(_$_IntegerAnswerFormat) _then)
      : super(_value, (v) => _then(v as _$_IntegerAnswerFormat));

  @override
  _$_IntegerAnswerFormat get _value => super._value as _$_IntegerAnswerFormat;

  @override
  $Res call({
    Object? defaultValue = freezed,
    Object? hint = freezed,
  }) {
    return _then(_$_IntegerAnswerFormat(
      defaultValue: defaultValue == freezed
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as int?,
      hint: hint == freezed
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IntegerAnswerFormat implements _IntegerAnswerFormat {
  const _$_IntegerAnswerFormat({this.defaultValue, this.hint = ''});

  factory _$_IntegerAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$$_IntegerAnswerFormatFromJson(json);

  @override
  final int? defaultValue;
  @override
  @JsonKey()
  final String hint;

  @override
  String toString() {
    return 'IntegerAnswerFormat(defaultValue: $defaultValue, hint: $hint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IntegerAnswerFormat &&
            const DeepCollectionEquality()
                .equals(other.defaultValue, defaultValue) &&
            const DeepCollectionEquality().equals(other.hint, hint));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(defaultValue),
      const DeepCollectionEquality().hash(hint));

  @JsonKey(ignore: true)
  @override
  _$$_IntegerAnswerFormatCopyWith<_$_IntegerAnswerFormat> get copyWith =>
      __$$_IntegerAnswerFormatCopyWithImpl<_$_IntegerAnswerFormat>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IntegerAnswerFormatToJson(
      this,
    );
  }
}

abstract class _IntegerAnswerFormat implements IntegerAnswerFormat {
  const factory _IntegerAnswerFormat(
      {final int? defaultValue, final String hint}) = _$_IntegerAnswerFormat;

  factory _IntegerAnswerFormat.fromJson(Map<String, dynamic> json) =
      _$_IntegerAnswerFormat.fromJson;

  @override
  int? get defaultValue;
  @override
  String get hint;
  @override
  @JsonKey(ignore: true)
  _$$_IntegerAnswerFormatCopyWith<_$_IntegerAnswerFormat> get copyWith =>
      throw _privateConstructorUsedError;
}
