// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'multi_double.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MultiDouble _$MultiDoubleFromJson(Map<String, dynamic> json) {
  return _MultiDouble.fromJson(json);
}

/// @nodoc
mixin _$MultiDouble {
  String get text => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultiDoubleCopyWith<MultiDouble> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiDoubleCopyWith<$Res> {
  factory $MultiDoubleCopyWith(
          MultiDouble value, $Res Function(MultiDouble) then) =
      _$MultiDoubleCopyWithImpl<$Res>;
  $Res call({String text, double value});
}

/// @nodoc
class _$MultiDoubleCopyWithImpl<$Res> implements $MultiDoubleCopyWith<$Res> {
  _$MultiDoubleCopyWithImpl(this._value, this._then);

  final MultiDouble _value;
  // ignore: unused_field
  final $Res Function(MultiDouble) _then;

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
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_MultiDoubleCopyWith<$Res>
    implements $MultiDoubleCopyWith<$Res> {
  factory _$$_MultiDoubleCopyWith(
          _$_MultiDouble value, $Res Function(_$_MultiDouble) then) =
      __$$_MultiDoubleCopyWithImpl<$Res>;
  @override
  $Res call({String text, double value});
}

/// @nodoc
class __$$_MultiDoubleCopyWithImpl<$Res> extends _$MultiDoubleCopyWithImpl<$Res>
    implements _$$_MultiDoubleCopyWith<$Res> {
  __$$_MultiDoubleCopyWithImpl(
      _$_MultiDouble _value, $Res Function(_$_MultiDouble) _then)
      : super(_value, (v) => _then(v as _$_MultiDouble));

  @override
  _$_MultiDouble get _value => super._value as _$_MultiDouble;

  @override
  $Res call({
    Object? text = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_MultiDouble(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MultiDouble implements _MultiDouble {
  const _$_MultiDouble({required this.text, required this.value});

  factory _$_MultiDouble.fromJson(Map<String, dynamic> json) =>
      _$$_MultiDoubleFromJson(json);

  @override
  final String text;
  @override
  final double value;

  @override
  String toString() {
    return 'MultiDouble(text: $text, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MultiDouble &&
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
  _$$_MultiDoubleCopyWith<_$_MultiDouble> get copyWith =>
      __$$_MultiDoubleCopyWithImpl<_$_MultiDouble>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MultiDoubleToJson(
      this,
    );
  }
}

abstract class _MultiDouble implements MultiDouble {
  const factory _MultiDouble(
      {required final String text,
      required final double value}) = _$_MultiDouble;

  factory _MultiDouble.fromJson(Map<String, dynamic> json) =
      _$_MultiDouble.fromJson;

  @override
  String get text;
  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$_MultiDoubleCopyWith<_$_MultiDouble> get copyWith =>
      throw _privateConstructorUsedError;
}
