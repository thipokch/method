// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'scale_answer_format.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScaleAnswerFormat _$ScaleAnswerFormatFromJson(Map<String, dynamic> json) {
  return _ScaleAnswerFormat.fromJson(json);
}

/// @nodoc
mixin _$ScaleAnswerFormat {
  double get maximumValue => throw _privateConstructorUsedError;
  double get minimumValue => throw _privateConstructorUsedError;
  double get defaultValue => throw _privateConstructorUsedError;
  double get step => throw _privateConstructorUsedError;
  String get maximumValueDescription => throw _privateConstructorUsedError;
  String get minimumValueDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScaleAnswerFormatCopyWith<ScaleAnswerFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScaleAnswerFormatCopyWith<$Res> {
  factory $ScaleAnswerFormatCopyWith(
          ScaleAnswerFormat value, $Res Function(ScaleAnswerFormat) then) =
      _$ScaleAnswerFormatCopyWithImpl<$Res>;
  $Res call(
      {double maximumValue,
      double minimumValue,
      double defaultValue,
      double step,
      String maximumValueDescription,
      String minimumValueDescription});
}

/// @nodoc
class _$ScaleAnswerFormatCopyWithImpl<$Res>
    implements $ScaleAnswerFormatCopyWith<$Res> {
  _$ScaleAnswerFormatCopyWithImpl(this._value, this._then);

  final ScaleAnswerFormat _value;
  // ignore: unused_field
  final $Res Function(ScaleAnswerFormat) _then;

  @override
  $Res call({
    Object? maximumValue = freezed,
    Object? minimumValue = freezed,
    Object? defaultValue = freezed,
    Object? step = freezed,
    Object? maximumValueDescription = freezed,
    Object? minimumValueDescription = freezed,
  }) {
    return _then(_value.copyWith(
      maximumValue: maximumValue == freezed
          ? _value.maximumValue
          : maximumValue // ignore: cast_nullable_to_non_nullable
              as double,
      minimumValue: minimumValue == freezed
          ? _value.minimumValue
          : minimumValue // ignore: cast_nullable_to_non_nullable
              as double,
      defaultValue: defaultValue == freezed
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as double,
      step: step == freezed
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as double,
      maximumValueDescription: maximumValueDescription == freezed
          ? _value.maximumValueDescription
          : maximumValueDescription // ignore: cast_nullable_to_non_nullable
              as String,
      minimumValueDescription: minimumValueDescription == freezed
          ? _value.minimumValueDescription
          : minimumValueDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ScaleAnswerFormatCopyWith<$Res>
    implements $ScaleAnswerFormatCopyWith<$Res> {
  factory _$$_ScaleAnswerFormatCopyWith(_$_ScaleAnswerFormat value,
          $Res Function(_$_ScaleAnswerFormat) then) =
      __$$_ScaleAnswerFormatCopyWithImpl<$Res>;
  @override
  $Res call(
      {double maximumValue,
      double minimumValue,
      double defaultValue,
      double step,
      String maximumValueDescription,
      String minimumValueDescription});
}

/// @nodoc
class __$$_ScaleAnswerFormatCopyWithImpl<$Res>
    extends _$ScaleAnswerFormatCopyWithImpl<$Res>
    implements _$$_ScaleAnswerFormatCopyWith<$Res> {
  __$$_ScaleAnswerFormatCopyWithImpl(
      _$_ScaleAnswerFormat _value, $Res Function(_$_ScaleAnswerFormat) _then)
      : super(_value, (v) => _then(v as _$_ScaleAnswerFormat));

  @override
  _$_ScaleAnswerFormat get _value => super._value as _$_ScaleAnswerFormat;

  @override
  $Res call({
    Object? maximumValue = freezed,
    Object? minimumValue = freezed,
    Object? defaultValue = freezed,
    Object? step = freezed,
    Object? maximumValueDescription = freezed,
    Object? minimumValueDescription = freezed,
  }) {
    return _then(_$_ScaleAnswerFormat(
      maximumValue: maximumValue == freezed
          ? _value.maximumValue
          : maximumValue // ignore: cast_nullable_to_non_nullable
              as double,
      minimumValue: minimumValue == freezed
          ? _value.minimumValue
          : minimumValue // ignore: cast_nullable_to_non_nullable
              as double,
      defaultValue: defaultValue == freezed
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as double,
      step: step == freezed
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as double,
      maximumValueDescription: maximumValueDescription == freezed
          ? _value.maximumValueDescription
          : maximumValueDescription // ignore: cast_nullable_to_non_nullable
              as String,
      minimumValueDescription: minimumValueDescription == freezed
          ? _value.minimumValueDescription
          : minimumValueDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScaleAnswerFormat implements _ScaleAnswerFormat {
  const _$_ScaleAnswerFormat(
      {required this.maximumValue,
      required this.minimumValue,
      required this.defaultValue,
      required this.step,
      this.maximumValueDescription = '',
      this.minimumValueDescription = ''});

  factory _$_ScaleAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$$_ScaleAnswerFormatFromJson(json);

  @override
  final double maximumValue;
  @override
  final double minimumValue;
  @override
  final double defaultValue;
  @override
  final double step;
  @override
  @JsonKey()
  final String maximumValueDescription;
  @override
  @JsonKey()
  final String minimumValueDescription;

  @override
  String toString() {
    return 'ScaleAnswerFormat(maximumValue: $maximumValue, minimumValue: $minimumValue, defaultValue: $defaultValue, step: $step, maximumValueDescription: $maximumValueDescription, minimumValueDescription: $minimumValueDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScaleAnswerFormat &&
            const DeepCollectionEquality()
                .equals(other.maximumValue, maximumValue) &&
            const DeepCollectionEquality()
                .equals(other.minimumValue, minimumValue) &&
            const DeepCollectionEquality()
                .equals(other.defaultValue, defaultValue) &&
            const DeepCollectionEquality().equals(other.step, step) &&
            const DeepCollectionEquality().equals(
                other.maximumValueDescription, maximumValueDescription) &&
            const DeepCollectionEquality().equals(
                other.minimumValueDescription, minimumValueDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(maximumValue),
      const DeepCollectionEquality().hash(minimumValue),
      const DeepCollectionEquality().hash(defaultValue),
      const DeepCollectionEquality().hash(step),
      const DeepCollectionEquality().hash(maximumValueDescription),
      const DeepCollectionEquality().hash(minimumValueDescription));

  @JsonKey(ignore: true)
  @override
  _$$_ScaleAnswerFormatCopyWith<_$_ScaleAnswerFormat> get copyWith =>
      __$$_ScaleAnswerFormatCopyWithImpl<_$_ScaleAnswerFormat>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScaleAnswerFormatToJson(
      this,
    );
  }
}

abstract class _ScaleAnswerFormat implements ScaleAnswerFormat {
  const factory _ScaleAnswerFormat(
      {required final double maximumValue,
      required final double minimumValue,
      required final double defaultValue,
      required final double step,
      final String maximumValueDescription,
      final String minimumValueDescription}) = _$_ScaleAnswerFormat;

  factory _ScaleAnswerFormat.fromJson(Map<String, dynamic> json) =
      _$_ScaleAnswerFormat.fromJson;

  @override
  double get maximumValue;
  @override
  double get minimumValue;
  @override
  double get defaultValue;
  @override
  double get step;
  @override
  String get maximumValueDescription;
  @override
  String get minimumValueDescription;
  @override
  @JsonKey(ignore: true)
  _$$_ScaleAnswerFormatCopyWith<_$_ScaleAnswerFormat> get copyWith =>
      throw _privateConstructorUsedError;
}
