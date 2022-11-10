// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'present.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Presentation _$PresentationFromJson(Map<String, dynamic> json) {
  return _Presentation.fromJson(json);
}

/// @nodoc
mixin _$Presentation {
  double get seed => throw _privateConstructorUsedError;
  @ColorConverter()
  Color get primary => throw _privateConstructorUsedError;
  @ColorConverter()
  Color get secondary => throw _privateConstructorUsedError;
  @ColorConverter()
  Color get tertiary => throw _privateConstructorUsedError;
  @ColorConverter()
  Color get neutral => throw _privateConstructorUsedError;
  @ColorConverter()
  Color get neutralVariant => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PresentationCopyWith<Presentation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresentationCopyWith<$Res> {
  factory $PresentationCopyWith(
          Presentation value, $Res Function(Presentation) then) =
      _$PresentationCopyWithImpl<$Res>;
  $Res call(
      {double seed,
      @ColorConverter() Color primary,
      @ColorConverter() Color secondary,
      @ColorConverter() Color tertiary,
      @ColorConverter() Color neutral,
      @ColorConverter() Color neutralVariant});
}

/// @nodoc
class _$PresentationCopyWithImpl<$Res> implements $PresentationCopyWith<$Res> {
  _$PresentationCopyWithImpl(this._value, this._then);

  final Presentation _value;
  // ignore: unused_field
  final $Res Function(Presentation) _then;

  @override
  $Res call({
    Object? seed = freezed,
    Object? primary = freezed,
    Object? secondary = freezed,
    Object? tertiary = freezed,
    Object? neutral = freezed,
    Object? neutralVariant = freezed,
  }) {
    return _then(_value.copyWith(
      seed: seed == freezed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as double,
      primary: primary == freezed
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as Color,
      secondary: secondary == freezed
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as Color,
      tertiary: tertiary == freezed
          ? _value.tertiary
          : tertiary // ignore: cast_nullable_to_non_nullable
              as Color,
      neutral: neutral == freezed
          ? _value.neutral
          : neutral // ignore: cast_nullable_to_non_nullable
              as Color,
      neutralVariant: neutralVariant == freezed
          ? _value.neutralVariant
          : neutralVariant // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
abstract class _$$_PresentationCopyWith<$Res>
    implements $PresentationCopyWith<$Res> {
  factory _$$_PresentationCopyWith(
          _$_Presentation value, $Res Function(_$_Presentation) then) =
      __$$_PresentationCopyWithImpl<$Res>;
  @override
  $Res call(
      {double seed,
      @ColorConverter() Color primary,
      @ColorConverter() Color secondary,
      @ColorConverter() Color tertiary,
      @ColorConverter() Color neutral,
      @ColorConverter() Color neutralVariant});
}

/// @nodoc
class __$$_PresentationCopyWithImpl<$Res>
    extends _$PresentationCopyWithImpl<$Res>
    implements _$$_PresentationCopyWith<$Res> {
  __$$_PresentationCopyWithImpl(
      _$_Presentation _value, $Res Function(_$_Presentation) _then)
      : super(_value, (v) => _then(v as _$_Presentation));

  @override
  _$_Presentation get _value => super._value as _$_Presentation;

  @override
  $Res call({
    Object? seed = freezed,
    Object? primary = freezed,
    Object? secondary = freezed,
    Object? tertiary = freezed,
    Object? neutral = freezed,
    Object? neutralVariant = freezed,
  }) {
    return _then(_$_Presentation(
      seed: seed == freezed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as double,
      primary: primary == freezed
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as Color,
      secondary: secondary == freezed
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as Color,
      tertiary: tertiary == freezed
          ? _value.tertiary
          : tertiary // ignore: cast_nullable_to_non_nullable
              as Color,
      neutral: neutral == freezed
          ? _value.neutral
          : neutral // ignore: cast_nullable_to_non_nullable
              as Color,
      neutralVariant: neutralVariant == freezed
          ? _value.neutralVariant
          : neutralVariant // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Presentation extends _Presentation {
  const _$_Presentation(
      {required this.seed,
      @ColorConverter() required this.primary,
      @ColorConverter() required this.secondary,
      @ColorConverter() required this.tertiary,
      @ColorConverter() required this.neutral,
      @ColorConverter() required this.neutralVariant})
      : super._();

  factory _$_Presentation.fromJson(Map<String, dynamic> json) =>
      _$$_PresentationFromJson(json);

  @override
  final double seed;
  @override
  @ColorConverter()
  final Color primary;
  @override
  @ColorConverter()
  final Color secondary;
  @override
  @ColorConverter()
  final Color tertiary;
  @override
  @ColorConverter()
  final Color neutral;
  @override
  @ColorConverter()
  final Color neutralVariant;

  @override
  String toString() {
    return 'Presentation(seed: $seed, primary: $primary, secondary: $secondary, tertiary: $tertiary, neutral: $neutral, neutralVariant: $neutralVariant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Presentation &&
            const DeepCollectionEquality().equals(other.seed, seed) &&
            const DeepCollectionEquality().equals(other.primary, primary) &&
            const DeepCollectionEquality().equals(other.secondary, secondary) &&
            const DeepCollectionEquality().equals(other.tertiary, tertiary) &&
            const DeepCollectionEquality().equals(other.neutral, neutral) &&
            const DeepCollectionEquality()
                .equals(other.neutralVariant, neutralVariant));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(seed),
      const DeepCollectionEquality().hash(primary),
      const DeepCollectionEquality().hash(secondary),
      const DeepCollectionEquality().hash(tertiary),
      const DeepCollectionEquality().hash(neutral),
      const DeepCollectionEquality().hash(neutralVariant));

  @JsonKey(ignore: true)
  @override
  _$$_PresentationCopyWith<_$_Presentation> get copyWith =>
      __$$_PresentationCopyWithImpl<_$_Presentation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PresentationToJson(
      this,
    );
  }
}

abstract class _Presentation extends Presentation {
  const factory _Presentation(
      {required final double seed,
      @ColorConverter() required final Color primary,
      @ColorConverter() required final Color secondary,
      @ColorConverter() required final Color tertiary,
      @ColorConverter() required final Color neutral,
      @ColorConverter() required final Color neutralVariant}) = _$_Presentation;
  const _Presentation._() : super._();

  factory _Presentation.fromJson(Map<String, dynamic> json) =
      _$_Presentation.fromJson;

  @override
  double get seed;
  @override
  @ColorConverter()
  Color get primary;
  @override
  @ColorConverter()
  Color get secondary;
  @override
  @ColorConverter()
  Color get tertiary;
  @override
  @ColorConverter()
  Color get neutral;
  @override
  @ColorConverter()
  Color get neutralVariant;
  @override
  @JsonKey(ignore: true)
  _$$_PresentationCopyWith<_$_Presentation> get copyWith =>
      throw _privateConstructorUsedError;
}
