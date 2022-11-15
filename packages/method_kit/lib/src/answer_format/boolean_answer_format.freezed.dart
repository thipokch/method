// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'boolean_answer_format.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BooleanAnswerFormat _$BooleanAnswerFormatFromJson(Map<String, dynamic> json) {
  return _BooleanAnswerFormat.fromJson(json);
}

/// @nodoc
mixin _$BooleanAnswerFormat {
  String get positiveAnswer => throw _privateConstructorUsedError;
  String get negativeAnswer => throw _privateConstructorUsedError;
  BooleanResult get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BooleanAnswerFormatCopyWith<BooleanAnswerFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooleanAnswerFormatCopyWith<$Res> {
  factory $BooleanAnswerFormatCopyWith(
          BooleanAnswerFormat value, $Res Function(BooleanAnswerFormat) then) =
      _$BooleanAnswerFormatCopyWithImpl<$Res>;
  $Res call(
      {String positiveAnswer, String negativeAnswer, BooleanResult result});
}

/// @nodoc
class _$BooleanAnswerFormatCopyWithImpl<$Res>
    implements $BooleanAnswerFormatCopyWith<$Res> {
  _$BooleanAnswerFormatCopyWithImpl(this._value, this._then);

  final BooleanAnswerFormat _value;
  // ignore: unused_field
  final $Res Function(BooleanAnswerFormat) _then;

  @override
  $Res call({
    Object? positiveAnswer = freezed,
    Object? negativeAnswer = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      positiveAnswer: positiveAnswer == freezed
          ? _value.positiveAnswer
          : positiveAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      negativeAnswer: negativeAnswer == freezed
          ? _value.negativeAnswer
          : negativeAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as BooleanResult,
    ));
  }
}

/// @nodoc
abstract class _$$_BooleanAnswerFormatCopyWith<$Res>
    implements $BooleanAnswerFormatCopyWith<$Res> {
  factory _$$_BooleanAnswerFormatCopyWith(_$_BooleanAnswerFormat value,
          $Res Function(_$_BooleanAnswerFormat) then) =
      __$$_BooleanAnswerFormatCopyWithImpl<$Res>;
  @override
  $Res call(
      {String positiveAnswer, String negativeAnswer, BooleanResult result});
}

/// @nodoc
class __$$_BooleanAnswerFormatCopyWithImpl<$Res>
    extends _$BooleanAnswerFormatCopyWithImpl<$Res>
    implements _$$_BooleanAnswerFormatCopyWith<$Res> {
  __$$_BooleanAnswerFormatCopyWithImpl(_$_BooleanAnswerFormat _value,
      $Res Function(_$_BooleanAnswerFormat) _then)
      : super(_value, (v) => _then(v as _$_BooleanAnswerFormat));

  @override
  _$_BooleanAnswerFormat get _value => super._value as _$_BooleanAnswerFormat;

  @override
  $Res call({
    Object? positiveAnswer = freezed,
    Object? negativeAnswer = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_BooleanAnswerFormat(
      positiveAnswer: positiveAnswer == freezed
          ? _value.positiveAnswer
          : positiveAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      negativeAnswer: negativeAnswer == freezed
          ? _value.negativeAnswer
          : negativeAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as BooleanResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BooleanAnswerFormat implements _BooleanAnswerFormat {
  const _$_BooleanAnswerFormat(
      {required this.positiveAnswer,
      required this.negativeAnswer,
      this.result = BooleanResult.NONE});

  factory _$_BooleanAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$$_BooleanAnswerFormatFromJson(json);

  @override
  final String positiveAnswer;
  @override
  final String negativeAnswer;
  @override
  @JsonKey()
  final BooleanResult result;

  @override
  String toString() {
    return 'BooleanAnswerFormat(positiveAnswer: $positiveAnswer, negativeAnswer: $negativeAnswer, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BooleanAnswerFormat &&
            const DeepCollectionEquality()
                .equals(other.positiveAnswer, positiveAnswer) &&
            const DeepCollectionEquality()
                .equals(other.negativeAnswer, negativeAnswer) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(positiveAnswer),
      const DeepCollectionEquality().hash(negativeAnswer),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$_BooleanAnswerFormatCopyWith<_$_BooleanAnswerFormat> get copyWith =>
      __$$_BooleanAnswerFormatCopyWithImpl<_$_BooleanAnswerFormat>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BooleanAnswerFormatToJson(
      this,
    );
  }
}

abstract class _BooleanAnswerFormat implements BooleanAnswerFormat {
  const factory _BooleanAnswerFormat(
      {required final String positiveAnswer,
      required final String negativeAnswer,
      final BooleanResult result}) = _$_BooleanAnswerFormat;

  factory _BooleanAnswerFormat.fromJson(Map<String, dynamic> json) =
      _$_BooleanAnswerFormat.fromJson;

  @override
  String get positiveAnswer;
  @override
  String get negativeAnswer;
  @override
  BooleanResult get result;
  @override
  @JsonKey(ignore: true)
  _$$_BooleanAnswerFormatCopyWith<_$_BooleanAnswerFormat> get copyWith =>
      throw _privateConstructorUsedError;
}
