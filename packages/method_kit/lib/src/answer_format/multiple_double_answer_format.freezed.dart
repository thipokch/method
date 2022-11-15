// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'multiple_double_answer_format.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MultipleDoubleAnswerFormat _$MultipleDoubleAnswerFormatFromJson(
    Map<String, dynamic> json) {
  return _MultipleDoubleAnswerFormat.fromJson(json);
}

/// @nodoc
mixin _$MultipleDoubleAnswerFormat {
  List<MultiDouble>? get defaultValues =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(defaultValue: [])
  List<String> get hints => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultipleDoubleAnswerFormatCopyWith<MultipleDoubleAnswerFormat>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultipleDoubleAnswerFormatCopyWith<$Res> {
  factory $MultipleDoubleAnswerFormatCopyWith(MultipleDoubleAnswerFormat value,
          $Res Function(MultipleDoubleAnswerFormat) then) =
      _$MultipleDoubleAnswerFormatCopyWithImpl<$Res>;
  $Res call(
      {List<MultiDouble>? defaultValues,
      @JsonKey(defaultValue: []) List<String> hints});
}

/// @nodoc
class _$MultipleDoubleAnswerFormatCopyWithImpl<$Res>
    implements $MultipleDoubleAnswerFormatCopyWith<$Res> {
  _$MultipleDoubleAnswerFormatCopyWithImpl(this._value, this._then);

  final MultipleDoubleAnswerFormat _value;
  // ignore: unused_field
  final $Res Function(MultipleDoubleAnswerFormat) _then;

  @override
  $Res call({
    Object? defaultValues = freezed,
    Object? hints = freezed,
  }) {
    return _then(_value.copyWith(
      defaultValues: defaultValues == freezed
          ? _value.defaultValues
          : defaultValues // ignore: cast_nullable_to_non_nullable
              as List<MultiDouble>?,
      hints: hints == freezed
          ? _value.hints
          : hints // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_MultipleDoubleAnswerFormatCopyWith<$Res>
    implements $MultipleDoubleAnswerFormatCopyWith<$Res> {
  factory _$$_MultipleDoubleAnswerFormatCopyWith(
          _$_MultipleDoubleAnswerFormat value,
          $Res Function(_$_MultipleDoubleAnswerFormat) then) =
      __$$_MultipleDoubleAnswerFormatCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<MultiDouble>? defaultValues,
      @JsonKey(defaultValue: []) List<String> hints});
}

/// @nodoc
class __$$_MultipleDoubleAnswerFormatCopyWithImpl<$Res>
    extends _$MultipleDoubleAnswerFormatCopyWithImpl<$Res>
    implements _$$_MultipleDoubleAnswerFormatCopyWith<$Res> {
  __$$_MultipleDoubleAnswerFormatCopyWithImpl(
      _$_MultipleDoubleAnswerFormat _value,
      $Res Function(_$_MultipleDoubleAnswerFormat) _then)
      : super(_value, (v) => _then(v as _$_MultipleDoubleAnswerFormat));

  @override
  _$_MultipleDoubleAnswerFormat get _value =>
      super._value as _$_MultipleDoubleAnswerFormat;

  @override
  $Res call({
    Object? defaultValues = freezed,
    Object? hints = freezed,
  }) {
    return _then(_$_MultipleDoubleAnswerFormat(
      defaultValues: defaultValues == freezed
          ? _value._defaultValues
          : defaultValues // ignore: cast_nullable_to_non_nullable
              as List<MultiDouble>?,
      hints: hints == freezed
          ? _value._hints
          : hints // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MultipleDoubleAnswerFormat implements _MultipleDoubleAnswerFormat {
  const _$_MultipleDoubleAnswerFormat(
      {final List<MultiDouble>? defaultValues,
      @JsonKey(defaultValue: []) final List<String> hints = const []})
      : _defaultValues = defaultValues,
        _hints = hints;

  factory _$_MultipleDoubleAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$$_MultipleDoubleAnswerFormatFromJson(json);

  final List<MultiDouble>? _defaultValues;
  @override
  List<MultiDouble>? get defaultValues {
    final value = _defaultValues;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// ignore: invalid_annotation_target
  final List<String> _hints;
// ignore: invalid_annotation_target
  @override
  @JsonKey(defaultValue: [])
  List<String> get hints {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hints);
  }

  @override
  String toString() {
    return 'MultipleDoubleAnswerFormat(defaultValues: $defaultValues, hints: $hints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MultipleDoubleAnswerFormat &&
            const DeepCollectionEquality()
                .equals(other._defaultValues, _defaultValues) &&
            const DeepCollectionEquality().equals(other._hints, _hints));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_defaultValues),
      const DeepCollectionEquality().hash(_hints));

  @JsonKey(ignore: true)
  @override
  _$$_MultipleDoubleAnswerFormatCopyWith<_$_MultipleDoubleAnswerFormat>
      get copyWith => __$$_MultipleDoubleAnswerFormatCopyWithImpl<
          _$_MultipleDoubleAnswerFormat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MultipleDoubleAnswerFormatToJson(
      this,
    );
  }
}

abstract class _MultipleDoubleAnswerFormat
    implements MultipleDoubleAnswerFormat {
  const factory _MultipleDoubleAnswerFormat(
          {final List<MultiDouble>? defaultValues,
          @JsonKey(defaultValue: []) final List<String> hints}) =
      _$_MultipleDoubleAnswerFormat;

  factory _MultipleDoubleAnswerFormat.fromJson(Map<String, dynamic> json) =
      _$_MultipleDoubleAnswerFormat.fromJson;

  @override
  List<MultiDouble>? get defaultValues;
  @override // ignore: invalid_annotation_target
  @JsonKey(defaultValue: [])
  List<String> get hints;
  @override
  @JsonKey(ignore: true)
  _$$_MultipleDoubleAnswerFormatCopyWith<_$_MultipleDoubleAnswerFormat>
      get copyWith => throw _privateConstructorUsedError;
}
