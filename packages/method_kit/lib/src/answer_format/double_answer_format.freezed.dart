// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'double_answer_format.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DoubleAnswerFormat _$DoubleAnswerFormatFromJson(Map<String, dynamic> json) {
  return _DoubleAnswerFormat.fromJson(json);
}

/// @nodoc
mixin _$DoubleAnswerFormat {
  double? get defaultValue => throw _privateConstructorUsedError;
  String get hint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoubleAnswerFormatCopyWith<DoubleAnswerFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoubleAnswerFormatCopyWith<$Res> {
  factory $DoubleAnswerFormatCopyWith(
          DoubleAnswerFormat value, $Res Function(DoubleAnswerFormat) then) =
      _$DoubleAnswerFormatCopyWithImpl<$Res>;
  $Res call({double? defaultValue, String hint});
}

/// @nodoc
class _$DoubleAnswerFormatCopyWithImpl<$Res>
    implements $DoubleAnswerFormatCopyWith<$Res> {
  _$DoubleAnswerFormatCopyWithImpl(this._value, this._then);

  final DoubleAnswerFormat _value;
  // ignore: unused_field
  final $Res Function(DoubleAnswerFormat) _then;

  @override
  $Res call({
    Object? defaultValue = freezed,
    Object? hint = freezed,
  }) {
    return _then(_value.copyWith(
      defaultValue: defaultValue == freezed
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as double?,
      hint: hint == freezed
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DoubleAnswerFormatCopyWith<$Res>
    implements $DoubleAnswerFormatCopyWith<$Res> {
  factory _$$_DoubleAnswerFormatCopyWith(_$_DoubleAnswerFormat value,
          $Res Function(_$_DoubleAnswerFormat) then) =
      __$$_DoubleAnswerFormatCopyWithImpl<$Res>;
  @override
  $Res call({double? defaultValue, String hint});
}

/// @nodoc
class __$$_DoubleAnswerFormatCopyWithImpl<$Res>
    extends _$DoubleAnswerFormatCopyWithImpl<$Res>
    implements _$$_DoubleAnswerFormatCopyWith<$Res> {
  __$$_DoubleAnswerFormatCopyWithImpl(
      _$_DoubleAnswerFormat _value, $Res Function(_$_DoubleAnswerFormat) _then)
      : super(_value, (v) => _then(v as _$_DoubleAnswerFormat));

  @override
  _$_DoubleAnswerFormat get _value => super._value as _$_DoubleAnswerFormat;

  @override
  $Res call({
    Object? defaultValue = freezed,
    Object? hint = freezed,
  }) {
    return _then(_$_DoubleAnswerFormat(
      defaultValue: defaultValue == freezed
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as double?,
      hint: hint == freezed
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DoubleAnswerFormat implements _DoubleAnswerFormat {
  const _$_DoubleAnswerFormat({this.defaultValue, this.hint = ''});

  factory _$_DoubleAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$$_DoubleAnswerFormatFromJson(json);

  @override
  final double? defaultValue;
  @override
  @JsonKey()
  final String hint;

  @override
  String toString() {
    return 'DoubleAnswerFormat(defaultValue: $defaultValue, hint: $hint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DoubleAnswerFormat &&
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
  _$$_DoubleAnswerFormatCopyWith<_$_DoubleAnswerFormat> get copyWith =>
      __$$_DoubleAnswerFormatCopyWithImpl<_$_DoubleAnswerFormat>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DoubleAnswerFormatToJson(
      this,
    );
  }
}

abstract class _DoubleAnswerFormat implements DoubleAnswerFormat {
  const factory _DoubleAnswerFormat(
      {final double? defaultValue, final String hint}) = _$_DoubleAnswerFormat;

  factory _DoubleAnswerFormat.fromJson(Map<String, dynamic> json) =
      _$_DoubleAnswerFormat.fromJson;

  @override
  double? get defaultValue;
  @override
  String get hint;
  @override
  @JsonKey(ignore: true)
  _$$_DoubleAnswerFormatCopyWith<_$_DoubleAnswerFormat> get copyWith =>
      throw _privateConstructorUsedError;
}
