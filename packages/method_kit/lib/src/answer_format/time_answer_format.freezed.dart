// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'time_answer_format.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeAnswerFormat _$TimeAnswerFormatFromJson(Map<String, dynamic> json) {
  return _TimeAnswerFormat.fromJson(json);
}

/// @nodoc
mixin _$TimeAnswerFormat {
  @_TimeOfDayJsonConverter()
  TimeOfDay? get defaultValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeAnswerFormatCopyWith<TimeAnswerFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeAnswerFormatCopyWith<$Res> {
  factory $TimeAnswerFormatCopyWith(
          TimeAnswerFormat value, $Res Function(TimeAnswerFormat) then) =
      _$TimeAnswerFormatCopyWithImpl<$Res>;
  $Res call({@_TimeOfDayJsonConverter() TimeOfDay? defaultValue});
}

/// @nodoc
class _$TimeAnswerFormatCopyWithImpl<$Res>
    implements $TimeAnswerFormatCopyWith<$Res> {
  _$TimeAnswerFormatCopyWithImpl(this._value, this._then);

  final TimeAnswerFormat _value;
  // ignore: unused_field
  final $Res Function(TimeAnswerFormat) _then;

  @override
  $Res call({
    Object? defaultValue = freezed,
  }) {
    return _then(_value.copyWith(
      defaultValue: defaultValue == freezed
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
    ));
  }
}

/// @nodoc
abstract class _$$_TimeAnswerFormatCopyWith<$Res>
    implements $TimeAnswerFormatCopyWith<$Res> {
  factory _$$_TimeAnswerFormatCopyWith(
          _$_TimeAnswerFormat value, $Res Function(_$_TimeAnswerFormat) then) =
      __$$_TimeAnswerFormatCopyWithImpl<$Res>;
  @override
  $Res call({@_TimeOfDayJsonConverter() TimeOfDay? defaultValue});
}

/// @nodoc
class __$$_TimeAnswerFormatCopyWithImpl<$Res>
    extends _$TimeAnswerFormatCopyWithImpl<$Res>
    implements _$$_TimeAnswerFormatCopyWith<$Res> {
  __$$_TimeAnswerFormatCopyWithImpl(
      _$_TimeAnswerFormat _value, $Res Function(_$_TimeAnswerFormat) _then)
      : super(_value, (v) => _then(v as _$_TimeAnswerFormat));

  @override
  _$_TimeAnswerFormat get _value => super._value as _$_TimeAnswerFormat;

  @override
  $Res call({
    Object? defaultValue = freezed,
  }) {
    return _then(_$_TimeAnswerFormat(
      defaultValue: defaultValue == freezed
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimeAnswerFormat implements _TimeAnswerFormat {
  const _$_TimeAnswerFormat({@_TimeOfDayJsonConverter() this.defaultValue});

  factory _$_TimeAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$$_TimeAnswerFormatFromJson(json);

  @override
  @_TimeOfDayJsonConverter()
  final TimeOfDay? defaultValue;

  @override
  String toString() {
    return 'TimeAnswerFormat(defaultValue: $defaultValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeAnswerFormat &&
            const DeepCollectionEquality()
                .equals(other.defaultValue, defaultValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(defaultValue));

  @JsonKey(ignore: true)
  @override
  _$$_TimeAnswerFormatCopyWith<_$_TimeAnswerFormat> get copyWith =>
      __$$_TimeAnswerFormatCopyWithImpl<_$_TimeAnswerFormat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeAnswerFormatToJson(
      this,
    );
  }
}

abstract class _TimeAnswerFormat implements TimeAnswerFormat {
  const factory _TimeAnswerFormat(
          {@_TimeOfDayJsonConverter() final TimeOfDay? defaultValue}) =
      _$_TimeAnswerFormat;

  factory _TimeAnswerFormat.fromJson(Map<String, dynamic> json) =
      _$_TimeAnswerFormat.fromJson;

  @override
  @_TimeOfDayJsonConverter()
  TimeOfDay? get defaultValue;
  @override
  @JsonKey(ignore: true)
  _$$_TimeAnswerFormatCopyWith<_$_TimeAnswerFormat> get copyWith =>
      throw _privateConstructorUsedError;
}
