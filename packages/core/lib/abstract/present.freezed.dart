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

/// @nodoc
mixin _$Presentation {
  double get seed => throw _privateConstructorUsedError;
  Color get colorLighter => throw _privateConstructorUsedError;
  Color get colorLight => throw _privateConstructorUsedError;
  Color get colorDark => throw _privateConstructorUsedError;
  Color get colorDarker => throw _privateConstructorUsedError;

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
      Color colorLighter,
      Color colorLight,
      Color colorDark,
      Color colorDarker});
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
    Object? colorLighter = freezed,
    Object? colorLight = freezed,
    Object? colorDark = freezed,
    Object? colorDarker = freezed,
  }) {
    return _then(_value.copyWith(
      seed: seed == freezed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as double,
      colorLighter: colorLighter == freezed
          ? _value.colorLighter
          : colorLighter // ignore: cast_nullable_to_non_nullable
              as Color,
      colorLight: colorLight == freezed
          ? _value.colorLight
          : colorLight // ignore: cast_nullable_to_non_nullable
              as Color,
      colorDark: colorDark == freezed
          ? _value.colorDark
          : colorDark // ignore: cast_nullable_to_non_nullable
              as Color,
      colorDarker: colorDarker == freezed
          ? _value.colorDarker
          : colorDarker // ignore: cast_nullable_to_non_nullable
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
      Color colorLighter,
      Color colorLight,
      Color colorDark,
      Color colorDarker});
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
    Object? colorLighter = freezed,
    Object? colorLight = freezed,
    Object? colorDark = freezed,
    Object? colorDarker = freezed,
  }) {
    return _then(_$_Presentation(
      seed: seed == freezed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as double,
      colorLighter: colorLighter == freezed
          ? _value.colorLighter
          : colorLighter // ignore: cast_nullable_to_non_nullable
              as Color,
      colorLight: colorLight == freezed
          ? _value.colorLight
          : colorLight // ignore: cast_nullable_to_non_nullable
              as Color,
      colorDark: colorDark == freezed
          ? _value.colorDark
          : colorDark // ignore: cast_nullable_to_non_nullable
              as Color,
      colorDarker: colorDarker == freezed
          ? _value.colorDarker
          : colorDarker // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_Presentation implements _Presentation {
  const _$_Presentation(
      {required this.seed,
      required this.colorLighter,
      required this.colorLight,
      required this.colorDark,
      required this.colorDarker});

  @override
  final double seed;
  @override
  final Color colorLighter;
  @override
  final Color colorLight;
  @override
  final Color colorDark;
  @override
  final Color colorDarker;

  @override
  String toString() {
    return 'Presentation(seed: $seed, colorLighter: $colorLighter, colorLight: $colorLight, colorDark: $colorDark, colorDarker: $colorDarker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Presentation &&
            const DeepCollectionEquality().equals(other.seed, seed) &&
            const DeepCollectionEquality()
                .equals(other.colorLighter, colorLighter) &&
            const DeepCollectionEquality()
                .equals(other.colorLight, colorLight) &&
            const DeepCollectionEquality().equals(other.colorDark, colorDark) &&
            const DeepCollectionEquality()
                .equals(other.colorDarker, colorDarker));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(seed),
      const DeepCollectionEquality().hash(colorLighter),
      const DeepCollectionEquality().hash(colorLight),
      const DeepCollectionEquality().hash(colorDark),
      const DeepCollectionEquality().hash(colorDarker));

  @JsonKey(ignore: true)
  @override
  _$$_PresentationCopyWith<_$_Presentation> get copyWith =>
      __$$_PresentationCopyWithImpl<_$_Presentation>(this, _$identity);
}

abstract class _Presentation implements Presentation {
  const factory _Presentation(
      {required final double seed,
      required final Color colorLighter,
      required final Color colorLight,
      required final Color colorDark,
      required final Color colorDarker}) = _$_Presentation;

  @override
  double get seed;
  @override
  Color get colorLighter;
  @override
  Color get colorLight;
  @override
  Color get colorDark;
  @override
  Color get colorDarker;
  @override
  @JsonKey(ignore: true)
  _$$_PresentationCopyWith<_$_Presentation> get copyWith =>
      throw _privateConstructorUsedError;
}
