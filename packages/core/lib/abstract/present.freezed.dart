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
  Color get colorA => throw _privateConstructorUsedError;
  Color get colorB => throw _privateConstructorUsedError;
  Color get colorC => throw _privateConstructorUsedError;
  Color get colorD => throw _privateConstructorUsedError;

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
      {double seed, Color colorA, Color colorB, Color colorC, Color colorD});
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
    Object? colorA = freezed,
    Object? colorB = freezed,
    Object? colorC = freezed,
    Object? colorD = freezed,
  }) {
    return _then(_value.copyWith(
      seed: seed == freezed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as double,
      colorA: colorA == freezed
          ? _value.colorA
          : colorA // ignore: cast_nullable_to_non_nullable
              as Color,
      colorB: colorB == freezed
          ? _value.colorB
          : colorB // ignore: cast_nullable_to_non_nullable
              as Color,
      colorC: colorC == freezed
          ? _value.colorC
          : colorC // ignore: cast_nullable_to_non_nullable
              as Color,
      colorD: colorD == freezed
          ? _value.colorD
          : colorD // ignore: cast_nullable_to_non_nullable
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
      {double seed, Color colorA, Color colorB, Color colorC, Color colorD});
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
    Object? colorA = freezed,
    Object? colorB = freezed,
    Object? colorC = freezed,
    Object? colorD = freezed,
  }) {
    return _then(_$_Presentation(
      seed: seed == freezed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as double,
      colorA: colorA == freezed
          ? _value.colorA
          : colorA // ignore: cast_nullable_to_non_nullable
              as Color,
      colorB: colorB == freezed
          ? _value.colorB
          : colorB // ignore: cast_nullable_to_non_nullable
              as Color,
      colorC: colorC == freezed
          ? _value.colorC
          : colorC // ignore: cast_nullable_to_non_nullable
              as Color,
      colorD: colorD == freezed
          ? _value.colorD
          : colorD // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_Presentation implements _Presentation {
  const _$_Presentation(
      {required this.seed,
      required this.colorA,
      required this.colorB,
      required this.colorC,
      required this.colorD});

  @override
  final double seed;
  @override
  final Color colorA;
  @override
  final Color colorB;
  @override
  final Color colorC;
  @override
  final Color colorD;

  @override
  String toString() {
    return 'Presentation(seed: $seed, colorA: $colorA, colorB: $colorB, colorC: $colorC, colorD: $colorD)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Presentation &&
            const DeepCollectionEquality().equals(other.seed, seed) &&
            const DeepCollectionEquality().equals(other.colorA, colorA) &&
            const DeepCollectionEquality().equals(other.colorB, colorB) &&
            const DeepCollectionEquality().equals(other.colorC, colorC) &&
            const DeepCollectionEquality().equals(other.colorD, colorD));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(seed),
      const DeepCollectionEquality().hash(colorA),
      const DeepCollectionEquality().hash(colorB),
      const DeepCollectionEquality().hash(colorC),
      const DeepCollectionEquality().hash(colorD));

  @JsonKey(ignore: true)
  @override
  _$$_PresentationCopyWith<_$_Presentation> get copyWith =>
      __$$_PresentationCopyWithImpl<_$_Presentation>(this, _$identity);
}

abstract class _Presentation implements Presentation {
  const factory _Presentation(
      {required final double seed,
      required final Color colorA,
      required final Color colorB,
      required final Color colorC,
      required final Color colorD}) = _$_Presentation;

  @override
  double get seed;
  @override
  Color get colorA;
  @override
  Color get colorB;
  @override
  Color get colorC;
  @override
  Color get colorD;
  @override
  @JsonKey(ignore: true)
  _$$_PresentationCopyWith<_$_Presentation> get copyWith =>
      throw _privateConstructorUsedError;
}
