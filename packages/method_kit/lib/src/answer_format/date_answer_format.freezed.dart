// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'date_answer_format.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DateAnswerFormat _$DateAnswerFormatFromJson(Map<String, dynamic> json) {
  return _DateAnswerFormat.fromJson(json);
}

/// @nodoc
mixin _$DateAnswerFormat {
  /// Default date which will be preselected on datepicker opening
  DateTime? get defaultDate => throw _privateConstructorUsedError;

  /// Lowest date which can be selected via the datepicker
  DateTime? get minDate => throw _privateConstructorUsedError;

  /// Highest date which can be selected via the datepicker
  DateTime? get maxDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateAnswerFormatCopyWith<DateAnswerFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateAnswerFormatCopyWith<$Res> {
  factory $DateAnswerFormatCopyWith(
          DateAnswerFormat value, $Res Function(DateAnswerFormat) then) =
      _$DateAnswerFormatCopyWithImpl<$Res>;
  $Res call({DateTime? defaultDate, DateTime? minDate, DateTime? maxDate});
}

/// @nodoc
class _$DateAnswerFormatCopyWithImpl<$Res>
    implements $DateAnswerFormatCopyWith<$Res> {
  _$DateAnswerFormatCopyWithImpl(this._value, this._then);

  final DateAnswerFormat _value;
  // ignore: unused_field
  final $Res Function(DateAnswerFormat) _then;

  @override
  $Res call({
    Object? defaultDate = freezed,
    Object? minDate = freezed,
    Object? maxDate = freezed,
  }) {
    return _then(_value.copyWith(
      defaultDate: defaultDate == freezed
          ? _value.defaultDate
          : defaultDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      minDate: minDate == freezed
          ? _value.minDate
          : minDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      maxDate: maxDate == freezed
          ? _value.maxDate
          : maxDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_DateAnswerFormatCopyWith<$Res>
    implements $DateAnswerFormatCopyWith<$Res> {
  factory _$$_DateAnswerFormatCopyWith(
          _$_DateAnswerFormat value, $Res Function(_$_DateAnswerFormat) then) =
      __$$_DateAnswerFormatCopyWithImpl<$Res>;
  @override
  $Res call({DateTime? defaultDate, DateTime? minDate, DateTime? maxDate});
}

/// @nodoc
class __$$_DateAnswerFormatCopyWithImpl<$Res>
    extends _$DateAnswerFormatCopyWithImpl<$Res>
    implements _$$_DateAnswerFormatCopyWith<$Res> {
  __$$_DateAnswerFormatCopyWithImpl(
      _$_DateAnswerFormat _value, $Res Function(_$_DateAnswerFormat) _then)
      : super(_value, (v) => _then(v as _$_DateAnswerFormat));

  @override
  _$_DateAnswerFormat get _value => super._value as _$_DateAnswerFormat;

  @override
  $Res call({
    Object? defaultDate = freezed,
    Object? minDate = freezed,
    Object? maxDate = freezed,
  }) {
    return _then(_$_DateAnswerFormat(
      defaultDate: defaultDate == freezed
          ? _value.defaultDate
          : defaultDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      minDate: minDate == freezed
          ? _value.minDate
          : minDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      maxDate: maxDate == freezed
          ? _value.maxDate
          : maxDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DateAnswerFormat implements _DateAnswerFormat {
  _$_DateAnswerFormat({this.defaultDate, this.minDate, this.maxDate})
      : assert(minDate == null || maxDate == null || minDate.isBefore(maxDate)),
        assert(defaultDate == null ||
            minDate == null ||
            defaultDate.isAtSameMomentAs(minDate) ||
            defaultDate.isAfter(minDate)),
        assert(defaultDate == null ||
            maxDate == null ||
            defaultDate.isAtSameMomentAs(maxDate) ||
            defaultDate.isBefore(maxDate));

  factory _$_DateAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$$_DateAnswerFormatFromJson(json);

  /// Default date which will be preselected on datepicker opening
  @override
  final DateTime? defaultDate;

  /// Lowest date which can be selected via the datepicker
  @override
  final DateTime? minDate;

  /// Highest date which can be selected via the datepicker
  @override
  final DateTime? maxDate;

  @override
  String toString() {
    return 'DateAnswerFormat(defaultDate: $defaultDate, minDate: $minDate, maxDate: $maxDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateAnswerFormat &&
            const DeepCollectionEquality()
                .equals(other.defaultDate, defaultDate) &&
            const DeepCollectionEquality().equals(other.minDate, minDate) &&
            const DeepCollectionEquality().equals(other.maxDate, maxDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(defaultDate),
      const DeepCollectionEquality().hash(minDate),
      const DeepCollectionEquality().hash(maxDate));

  @JsonKey(ignore: true)
  @override
  _$$_DateAnswerFormatCopyWith<_$_DateAnswerFormat> get copyWith =>
      __$$_DateAnswerFormatCopyWithImpl<_$_DateAnswerFormat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DateAnswerFormatToJson(
      this,
    );
  }
}

abstract class _DateAnswerFormat implements DateAnswerFormat {
  factory _DateAnswerFormat(
      {final DateTime? defaultDate,
      final DateTime? minDate,
      final DateTime? maxDate}) = _$_DateAnswerFormat;

  factory _DateAnswerFormat.fromJson(Map<String, dynamic> json) =
      _$_DateAnswerFormat.fromJson;

  @override

  /// Default date which will be preselected on datepicker opening
  DateTime? get defaultDate;
  @override

  /// Lowest date which can be selected via the datepicker
  DateTime? get minDate;
  @override

  /// Highest date which can be selected via the datepicker
  DateTime? get maxDate;
  @override
  @JsonKey(ignore: true)
  _$$_DateAnswerFormatCopyWith<_$_DateAnswerFormat> get copyWith =>
      throw _privateConstructorUsedError;
}
