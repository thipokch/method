// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'answer_format.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnswerFormat _$AnswerFormatFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'boolean':
      return BooleanAnswerFormat.fromJson(json);
    case 'date':
      return DateAnswerFormat.fromJson(json);
    case 'double':
      return DoubleAnswerFormat.fromJson(json);
    case 'image':
      return ImageAnswerFormat.fromJson(json);
    case 'integer':
      return IntegerAnswerFormat.fromJson(json);
    case 'multiChoice':
      return MultiChoiceAnswerFormat.fromJson(json);
    case 'multiDouble':
      return MultiDoubleAnswerFormat.fromJson(json);
    case 'scale':
      return ScaleAnswerFormat.fromJson(json);
    case 'singleChoice':
      return SingleChoiceAnswerFormat.fromJson(json);
    case 'text':
      return TextAnswerFormat.fromJson(json);
    case 'time':
      return TimeAnswerFormat.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'AnswerFormat',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$AnswerFormat {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)
        boolean,
    required TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)
        date,
    required TResult Function(double? defaultValue, String hint) double,
    required TResult Function(String? defaultValue, String buttonText) image,
    required TResult Function(int? defaultValue, String hint) integer,
    required TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)
        multiChoice,
    required TResult Function(
            List<MultiDouble>? defaultValues, List<String> hints)
        multiDouble,
    required TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)
        scale,
    required TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)
        singleChoice,
    required TResult Function(
            int? maxLines, String hint, String validationRegEx)
        text,
    required TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)
        time,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)?
        boolean,
    TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)?
        date,
    TResult Function(double? defaultValue, String hint)? double,
    TResult Function(String? defaultValue, String buttonText)? image,
    TResult Function(int? defaultValue, String hint)? integer,
    TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)?
        multiChoice,
    TResult Function(List<MultiDouble>? defaultValues, List<String> hints)?
        multiDouble,
    TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)?
        scale,
    TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)?
        singleChoice,
    TResult Function(int? maxLines, String hint, String validationRegEx)? text,
    TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)? time,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)?
        boolean,
    TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)?
        date,
    TResult Function(double? defaultValue, String hint)? double,
    TResult Function(String? defaultValue, String buttonText)? image,
    TResult Function(int? defaultValue, String hint)? integer,
    TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)?
        multiChoice,
    TResult Function(List<MultiDouble>? defaultValues, List<String> hints)?
        multiDouble,
    TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)?
        scale,
    TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)?
        singleChoice,
    TResult Function(int? maxLines, String hint, String validationRegEx)? text,
    TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)? time,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanAnswerFormat value) boolean,
    required TResult Function(DateAnswerFormat value) date,
    required TResult Function(DoubleAnswerFormat value) double,
    required TResult Function(ImageAnswerFormat value) image,
    required TResult Function(IntegerAnswerFormat value) integer,
    required TResult Function(MultiChoiceAnswerFormat value) multiChoice,
    required TResult Function(MultiDoubleAnswerFormat value) multiDouble,
    required TResult Function(ScaleAnswerFormat value) scale,
    required TResult Function(SingleChoiceAnswerFormat value) singleChoice,
    required TResult Function(TextAnswerFormat value) text,
    required TResult Function(TimeAnswerFormat value) time,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BooleanAnswerFormat value)? boolean,
    TResult Function(DateAnswerFormat value)? date,
    TResult Function(DoubleAnswerFormat value)? double,
    TResult Function(ImageAnswerFormat value)? image,
    TResult Function(IntegerAnswerFormat value)? integer,
    TResult Function(MultiChoiceAnswerFormat value)? multiChoice,
    TResult Function(MultiDoubleAnswerFormat value)? multiDouble,
    TResult Function(ScaleAnswerFormat value)? scale,
    TResult Function(SingleChoiceAnswerFormat value)? singleChoice,
    TResult Function(TextAnswerFormat value)? text,
    TResult Function(TimeAnswerFormat value)? time,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanAnswerFormat value)? boolean,
    TResult Function(DateAnswerFormat value)? date,
    TResult Function(DoubleAnswerFormat value)? double,
    TResult Function(ImageAnswerFormat value)? image,
    TResult Function(IntegerAnswerFormat value)? integer,
    TResult Function(MultiChoiceAnswerFormat value)? multiChoice,
    TResult Function(MultiDoubleAnswerFormat value)? multiDouble,
    TResult Function(ScaleAnswerFormat value)? scale,
    TResult Function(SingleChoiceAnswerFormat value)? singleChoice,
    TResult Function(TextAnswerFormat value)? text,
    TResult Function(TimeAnswerFormat value)? time,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerFormatCopyWith<$Res> {
  factory $AnswerFormatCopyWith(
          AnswerFormat value, $Res Function(AnswerFormat) then) =
      _$AnswerFormatCopyWithImpl<$Res>;
}

/// @nodoc
class _$AnswerFormatCopyWithImpl<$Res> implements $AnswerFormatCopyWith<$Res> {
  _$AnswerFormatCopyWithImpl(this._value, this._then);

  final AnswerFormat _value;
  // ignore: unused_field
  final $Res Function(AnswerFormat) _then;
}

/// @nodoc
abstract class _$$BooleanAnswerFormatCopyWith<$Res> {
  factory _$$BooleanAnswerFormatCopyWith(_$BooleanAnswerFormat value,
          $Res Function(_$BooleanAnswerFormat) then) =
      __$$BooleanAnswerFormatCopyWithImpl<$Res>;
  $Res call(
      {String positiveAnswer, String negativeAnswer, BooleanResult result});
}

/// @nodoc
class __$$BooleanAnswerFormatCopyWithImpl<$Res>
    extends _$AnswerFormatCopyWithImpl<$Res>
    implements _$$BooleanAnswerFormatCopyWith<$Res> {
  __$$BooleanAnswerFormatCopyWithImpl(
      _$BooleanAnswerFormat _value, $Res Function(_$BooleanAnswerFormat) _then)
      : super(_value, (v) => _then(v as _$BooleanAnswerFormat));

  @override
  _$BooleanAnswerFormat get _value => super._value as _$BooleanAnswerFormat;

  @override
  $Res call({
    Object? positiveAnswer = freezed,
    Object? negativeAnswer = freezed,
    Object? result = freezed,
  }) {
    return _then(_$BooleanAnswerFormat(
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
class _$BooleanAnswerFormat extends BooleanAnswerFormat {
  const _$BooleanAnswerFormat(
      {required this.positiveAnswer,
      required this.negativeAnswer,
      this.result = BooleanResult.NONE,
      final String? $type})
      : $type = $type ?? 'boolean',
        super._();

  factory _$BooleanAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$$BooleanAnswerFormatFromJson(json);

  @override
  final String positiveAnswer;
  @override
  final String negativeAnswer;
  @override
  @JsonKey()
  final BooleanResult result;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AnswerFormat.boolean(positiveAnswer: $positiveAnswer, negativeAnswer: $negativeAnswer, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooleanAnswerFormat &&
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
  _$$BooleanAnswerFormatCopyWith<_$BooleanAnswerFormat> get copyWith =>
      __$$BooleanAnswerFormatCopyWithImpl<_$BooleanAnswerFormat>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)
        boolean,
    required TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)
        date,
    required TResult Function(double? defaultValue, String hint) double,
    required TResult Function(String? defaultValue, String buttonText) image,
    required TResult Function(int? defaultValue, String hint) integer,
    required TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)
        multiChoice,
    required TResult Function(
            List<MultiDouble>? defaultValues, List<String> hints)
        multiDouble,
    required TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)
        scale,
    required TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)
        singleChoice,
    required TResult Function(
            int? maxLines, String hint, String validationRegEx)
        text,
    required TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)
        time,
  }) {
    return boolean(positiveAnswer, negativeAnswer, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)?
        boolean,
    TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)?
        date,
    TResult Function(double? defaultValue, String hint)? double,
    TResult Function(String? defaultValue, String buttonText)? image,
    TResult Function(int? defaultValue, String hint)? integer,
    TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)?
        multiChoice,
    TResult Function(List<MultiDouble>? defaultValues, List<String> hints)?
        multiDouble,
    TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)?
        scale,
    TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)?
        singleChoice,
    TResult Function(int? maxLines, String hint, String validationRegEx)? text,
    TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)? time,
  }) {
    return boolean?.call(positiveAnswer, negativeAnswer, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)?
        boolean,
    TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)?
        date,
    TResult Function(double? defaultValue, String hint)? double,
    TResult Function(String? defaultValue, String buttonText)? image,
    TResult Function(int? defaultValue, String hint)? integer,
    TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)?
        multiChoice,
    TResult Function(List<MultiDouble>? defaultValues, List<String> hints)?
        multiDouble,
    TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)?
        scale,
    TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)?
        singleChoice,
    TResult Function(int? maxLines, String hint, String validationRegEx)? text,
    TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)? time,
    required TResult orElse(),
  }) {
    if (boolean != null) {
      return boolean(positiveAnswer, negativeAnswer, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanAnswerFormat value) boolean,
    required TResult Function(DateAnswerFormat value) date,
    required TResult Function(DoubleAnswerFormat value) double,
    required TResult Function(ImageAnswerFormat value) image,
    required TResult Function(IntegerAnswerFormat value) integer,
    required TResult Function(MultiChoiceAnswerFormat value) multiChoice,
    required TResult Function(MultiDoubleAnswerFormat value) multiDouble,
    required TResult Function(ScaleAnswerFormat value) scale,
    required TResult Function(SingleChoiceAnswerFormat value) singleChoice,
    required TResult Function(TextAnswerFormat value) text,
    required TResult Function(TimeAnswerFormat value) time,
  }) {
    return boolean(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BooleanAnswerFormat value)? boolean,
    TResult Function(DateAnswerFormat value)? date,
    TResult Function(DoubleAnswerFormat value)? double,
    TResult Function(ImageAnswerFormat value)? image,
    TResult Function(IntegerAnswerFormat value)? integer,
    TResult Function(MultiChoiceAnswerFormat value)? multiChoice,
    TResult Function(MultiDoubleAnswerFormat value)? multiDouble,
    TResult Function(ScaleAnswerFormat value)? scale,
    TResult Function(SingleChoiceAnswerFormat value)? singleChoice,
    TResult Function(TextAnswerFormat value)? text,
    TResult Function(TimeAnswerFormat value)? time,
  }) {
    return boolean?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanAnswerFormat value)? boolean,
    TResult Function(DateAnswerFormat value)? date,
    TResult Function(DoubleAnswerFormat value)? double,
    TResult Function(ImageAnswerFormat value)? image,
    TResult Function(IntegerAnswerFormat value)? integer,
    TResult Function(MultiChoiceAnswerFormat value)? multiChoice,
    TResult Function(MultiDoubleAnswerFormat value)? multiDouble,
    TResult Function(ScaleAnswerFormat value)? scale,
    TResult Function(SingleChoiceAnswerFormat value)? singleChoice,
    TResult Function(TextAnswerFormat value)? text,
    TResult Function(TimeAnswerFormat value)? time,
    required TResult orElse(),
  }) {
    if (boolean != null) {
      return boolean(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BooleanAnswerFormatToJson(
      this,
    );
  }
}

abstract class BooleanAnswerFormat extends AnswerFormat {
  const factory BooleanAnswerFormat(
      {required final String positiveAnswer,
      required final String negativeAnswer,
      final BooleanResult result}) = _$BooleanAnswerFormat;
  const BooleanAnswerFormat._() : super._();

  factory BooleanAnswerFormat.fromJson(Map<String, dynamic> json) =
      _$BooleanAnswerFormat.fromJson;

  String get positiveAnswer;
  String get negativeAnswer;
  BooleanResult get result;
  @JsonKey(ignore: true)
  _$$BooleanAnswerFormatCopyWith<_$BooleanAnswerFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateAnswerFormatCopyWith<$Res> {
  factory _$$DateAnswerFormatCopyWith(
          _$DateAnswerFormat value, $Res Function(_$DateAnswerFormat) then) =
      __$$DateAnswerFormatCopyWithImpl<$Res>;
  $Res call({DateTime? defaultDate, DateTime? minDate, DateTime? maxDate});
}

/// @nodoc
class __$$DateAnswerFormatCopyWithImpl<$Res>
    extends _$AnswerFormatCopyWithImpl<$Res>
    implements _$$DateAnswerFormatCopyWith<$Res> {
  __$$DateAnswerFormatCopyWithImpl(
      _$DateAnswerFormat _value, $Res Function(_$DateAnswerFormat) _then)
      : super(_value, (v) => _then(v as _$DateAnswerFormat));

  @override
  _$DateAnswerFormat get _value => super._value as _$DateAnswerFormat;

  @override
  $Res call({
    Object? defaultDate = freezed,
    Object? minDate = freezed,
    Object? maxDate = freezed,
  }) {
    return _then(_$DateAnswerFormat(
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
class _$DateAnswerFormat extends DateAnswerFormat {
  _$DateAnswerFormat(
      {this.defaultDate, this.minDate, this.maxDate, final String? $type})
      : assert(minDate == null || maxDate == null || minDate.isBefore(maxDate)),
        assert(defaultDate == null ||
            minDate == null ||
            defaultDate.isAtSameMomentAs(minDate) ||
            defaultDate.isAfter(minDate)),
        assert(defaultDate == null ||
            maxDate == null ||
            defaultDate.isAtSameMomentAs(maxDate) ||
            defaultDate.isBefore(maxDate)),
        $type = $type ?? 'date',
        super._();

  factory _$DateAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$$DateAnswerFormatFromJson(json);

  /// Default date which will be preselected on datepicker opening
  @override
  final DateTime? defaultDate;

  /// Lowest date which can be selected via the datepicker
  @override
  final DateTime? minDate;

  /// Highest date which can be selected via the datepicker
  @override
  final DateTime? maxDate;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AnswerFormat.date(defaultDate: $defaultDate, minDate: $minDate, maxDate: $maxDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateAnswerFormat &&
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
  _$$DateAnswerFormatCopyWith<_$DateAnswerFormat> get copyWith =>
      __$$DateAnswerFormatCopyWithImpl<_$DateAnswerFormat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)
        boolean,
    required TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)
        date,
    required TResult Function(double? defaultValue, String hint) double,
    required TResult Function(String? defaultValue, String buttonText) image,
    required TResult Function(int? defaultValue, String hint) integer,
    required TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)
        multiChoice,
    required TResult Function(
            List<MultiDouble>? defaultValues, List<String> hints)
        multiDouble,
    required TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)
        scale,
    required TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)
        singleChoice,
    required TResult Function(
            int? maxLines, String hint, String validationRegEx)
        text,
    required TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)
        time,
  }) {
    return date(defaultDate, minDate, maxDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)?
        boolean,
    TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)?
        date,
    TResult Function(double? defaultValue, String hint)? double,
    TResult Function(String? defaultValue, String buttonText)? image,
    TResult Function(int? defaultValue, String hint)? integer,
    TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)?
        multiChoice,
    TResult Function(List<MultiDouble>? defaultValues, List<String> hints)?
        multiDouble,
    TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)?
        scale,
    TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)?
        singleChoice,
    TResult Function(int? maxLines, String hint, String validationRegEx)? text,
    TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)? time,
  }) {
    return date?.call(defaultDate, minDate, maxDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)?
        boolean,
    TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)?
        date,
    TResult Function(double? defaultValue, String hint)? double,
    TResult Function(String? defaultValue, String buttonText)? image,
    TResult Function(int? defaultValue, String hint)? integer,
    TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)?
        multiChoice,
    TResult Function(List<MultiDouble>? defaultValues, List<String> hints)?
        multiDouble,
    TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)?
        scale,
    TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)?
        singleChoice,
    TResult Function(int? maxLines, String hint, String validationRegEx)? text,
    TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)? time,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(defaultDate, minDate, maxDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanAnswerFormat value) boolean,
    required TResult Function(DateAnswerFormat value) date,
    required TResult Function(DoubleAnswerFormat value) double,
    required TResult Function(ImageAnswerFormat value) image,
    required TResult Function(IntegerAnswerFormat value) integer,
    required TResult Function(MultiChoiceAnswerFormat value) multiChoice,
    required TResult Function(MultiDoubleAnswerFormat value) multiDouble,
    required TResult Function(ScaleAnswerFormat value) scale,
    required TResult Function(SingleChoiceAnswerFormat value) singleChoice,
    required TResult Function(TextAnswerFormat value) text,
    required TResult Function(TimeAnswerFormat value) time,
  }) {
    return date(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BooleanAnswerFormat value)? boolean,
    TResult Function(DateAnswerFormat value)? date,
    TResult Function(DoubleAnswerFormat value)? double,
    TResult Function(ImageAnswerFormat value)? image,
    TResult Function(IntegerAnswerFormat value)? integer,
    TResult Function(MultiChoiceAnswerFormat value)? multiChoice,
    TResult Function(MultiDoubleAnswerFormat value)? multiDouble,
    TResult Function(ScaleAnswerFormat value)? scale,
    TResult Function(SingleChoiceAnswerFormat value)? singleChoice,
    TResult Function(TextAnswerFormat value)? text,
    TResult Function(TimeAnswerFormat value)? time,
  }) {
    return date?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanAnswerFormat value)? boolean,
    TResult Function(DateAnswerFormat value)? date,
    TResult Function(DoubleAnswerFormat value)? double,
    TResult Function(ImageAnswerFormat value)? image,
    TResult Function(IntegerAnswerFormat value)? integer,
    TResult Function(MultiChoiceAnswerFormat value)? multiChoice,
    TResult Function(MultiDoubleAnswerFormat value)? multiDouble,
    TResult Function(ScaleAnswerFormat value)? scale,
    TResult Function(SingleChoiceAnswerFormat value)? singleChoice,
    TResult Function(TextAnswerFormat value)? text,
    TResult Function(TimeAnswerFormat value)? time,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DateAnswerFormatToJson(
      this,
    );
  }
}

abstract class DateAnswerFormat extends AnswerFormat {
  factory DateAnswerFormat(
      {final DateTime? defaultDate,
      final DateTime? minDate,
      final DateTime? maxDate}) = _$DateAnswerFormat;
  DateAnswerFormat._() : super._();

  factory DateAnswerFormat.fromJson(Map<String, dynamic> json) =
      _$DateAnswerFormat.fromJson;

  /// Default date which will be preselected on datepicker opening
  DateTime? get defaultDate;

  /// Lowest date which can be selected via the datepicker
  DateTime? get minDate;

  /// Highest date which can be selected via the datepicker
  DateTime? get maxDate;
  @JsonKey(ignore: true)
  _$$DateAnswerFormatCopyWith<_$DateAnswerFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoubleAnswerFormatCopyWith<$Res> {
  factory _$$DoubleAnswerFormatCopyWith(_$DoubleAnswerFormat value,
          $Res Function(_$DoubleAnswerFormat) then) =
      __$$DoubleAnswerFormatCopyWithImpl<$Res>;
  $Res call({double? defaultValue, String hint});
}

/// @nodoc
class __$$DoubleAnswerFormatCopyWithImpl<$Res>
    extends _$AnswerFormatCopyWithImpl<$Res>
    implements _$$DoubleAnswerFormatCopyWith<$Res> {
  __$$DoubleAnswerFormatCopyWithImpl(
      _$DoubleAnswerFormat _value, $Res Function(_$DoubleAnswerFormat) _then)
      : super(_value, (v) => _then(v as _$DoubleAnswerFormat));

  @override
  _$DoubleAnswerFormat get _value => super._value as _$DoubleAnswerFormat;

  @override
  $Res call({
    Object? defaultValue = freezed,
    Object? hint = freezed,
  }) {
    return _then(_$DoubleAnswerFormat(
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
class _$DoubleAnswerFormat extends DoubleAnswerFormat {
  const _$DoubleAnswerFormat(
      {this.defaultValue, this.hint = '', final String? $type})
      : $type = $type ?? 'double',
        super._();

  factory _$DoubleAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$$DoubleAnswerFormatFromJson(json);

  @override
  final double? defaultValue;
  @override
  @JsonKey()
  final String hint;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AnswerFormat.double(defaultValue: $defaultValue, hint: $hint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoubleAnswerFormat &&
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
  _$$DoubleAnswerFormatCopyWith<_$DoubleAnswerFormat> get copyWith =>
      __$$DoubleAnswerFormatCopyWithImpl<_$DoubleAnswerFormat>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)
        boolean,
    required TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)
        date,
    required TResult Function(double? defaultValue, String hint) double,
    required TResult Function(String? defaultValue, String buttonText) image,
    required TResult Function(int? defaultValue, String hint) integer,
    required TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)
        multiChoice,
    required TResult Function(
            List<MultiDouble>? defaultValues, List<String> hints)
        multiDouble,
    required TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)
        scale,
    required TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)
        singleChoice,
    required TResult Function(
            int? maxLines, String hint, String validationRegEx)
        text,
    required TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)
        time,
  }) {
    return double(defaultValue, hint);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)?
        boolean,
    TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)?
        date,
    TResult Function(double? defaultValue, String hint)? double,
    TResult Function(String? defaultValue, String buttonText)? image,
    TResult Function(int? defaultValue, String hint)? integer,
    TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)?
        multiChoice,
    TResult Function(List<MultiDouble>? defaultValues, List<String> hints)?
        multiDouble,
    TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)?
        scale,
    TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)?
        singleChoice,
    TResult Function(int? maxLines, String hint, String validationRegEx)? text,
    TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)? time,
  }) {
    return double?.call(defaultValue, hint);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)?
        boolean,
    TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)?
        date,
    TResult Function(double? defaultValue, String hint)? double,
    TResult Function(String? defaultValue, String buttonText)? image,
    TResult Function(int? defaultValue, String hint)? integer,
    TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)?
        multiChoice,
    TResult Function(List<MultiDouble>? defaultValues, List<String> hints)?
        multiDouble,
    TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)?
        scale,
    TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)?
        singleChoice,
    TResult Function(int? maxLines, String hint, String validationRegEx)? text,
    TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)? time,
    required TResult orElse(),
  }) {
    if (double != null) {
      return double(defaultValue, hint);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanAnswerFormat value) boolean,
    required TResult Function(DateAnswerFormat value) date,
    required TResult Function(DoubleAnswerFormat value) double,
    required TResult Function(ImageAnswerFormat value) image,
    required TResult Function(IntegerAnswerFormat value) integer,
    required TResult Function(MultiChoiceAnswerFormat value) multiChoice,
    required TResult Function(MultiDoubleAnswerFormat value) multiDouble,
    required TResult Function(ScaleAnswerFormat value) scale,
    required TResult Function(SingleChoiceAnswerFormat value) singleChoice,
    required TResult Function(TextAnswerFormat value) text,
    required TResult Function(TimeAnswerFormat value) time,
  }) {
    return double(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BooleanAnswerFormat value)? boolean,
    TResult Function(DateAnswerFormat value)? date,
    TResult Function(DoubleAnswerFormat value)? double,
    TResult Function(ImageAnswerFormat value)? image,
    TResult Function(IntegerAnswerFormat value)? integer,
    TResult Function(MultiChoiceAnswerFormat value)? multiChoice,
    TResult Function(MultiDoubleAnswerFormat value)? multiDouble,
    TResult Function(ScaleAnswerFormat value)? scale,
    TResult Function(SingleChoiceAnswerFormat value)? singleChoice,
    TResult Function(TextAnswerFormat value)? text,
    TResult Function(TimeAnswerFormat value)? time,
  }) {
    return double?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanAnswerFormat value)? boolean,
    TResult Function(DateAnswerFormat value)? date,
    TResult Function(DoubleAnswerFormat value)? double,
    TResult Function(ImageAnswerFormat value)? image,
    TResult Function(IntegerAnswerFormat value)? integer,
    TResult Function(MultiChoiceAnswerFormat value)? multiChoice,
    TResult Function(MultiDoubleAnswerFormat value)? multiDouble,
    TResult Function(ScaleAnswerFormat value)? scale,
    TResult Function(SingleChoiceAnswerFormat value)? singleChoice,
    TResult Function(TextAnswerFormat value)? text,
    TResult Function(TimeAnswerFormat value)? time,
    required TResult orElse(),
  }) {
    if (double != null) {
      return double(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DoubleAnswerFormatToJson(
      this,
    );
  }
}

abstract class DoubleAnswerFormat extends AnswerFormat {
  const factory DoubleAnswerFormat(
      {final double? defaultValue, final String hint}) = _$DoubleAnswerFormat;
  const DoubleAnswerFormat._() : super._();

  factory DoubleAnswerFormat.fromJson(Map<String, dynamic> json) =
      _$DoubleAnswerFormat.fromJson;

  double? get defaultValue;
  String get hint;
  @JsonKey(ignore: true)
  _$$DoubleAnswerFormatCopyWith<_$DoubleAnswerFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageAnswerFormatCopyWith<$Res> {
  factory _$$ImageAnswerFormatCopyWith(
          _$ImageAnswerFormat value, $Res Function(_$ImageAnswerFormat) then) =
      __$$ImageAnswerFormatCopyWithImpl<$Res>;
  $Res call({String? defaultValue, String buttonText});
}

/// @nodoc
class __$$ImageAnswerFormatCopyWithImpl<$Res>
    extends _$AnswerFormatCopyWithImpl<$Res>
    implements _$$ImageAnswerFormatCopyWith<$Res> {
  __$$ImageAnswerFormatCopyWithImpl(
      _$ImageAnswerFormat _value, $Res Function(_$ImageAnswerFormat) _then)
      : super(_value, (v) => _then(v as _$ImageAnswerFormat));

  @override
  _$ImageAnswerFormat get _value => super._value as _$ImageAnswerFormat;

  @override
  $Res call({
    Object? defaultValue = freezed,
    Object? buttonText = freezed,
  }) {
    return _then(_$ImageAnswerFormat(
      defaultValue: defaultValue == freezed
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as String?,
      buttonText: buttonText == freezed
          ? _value.buttonText
          : buttonText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageAnswerFormat extends ImageAnswerFormat {
  const _$ImageAnswerFormat(
      {this.defaultValue, this.buttonText = 'Image: ', final String? $type})
      : $type = $type ?? 'image',
        super._();

  factory _$ImageAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$$ImageAnswerFormatFromJson(json);

  @override
  final String? defaultValue;
  @override
  @JsonKey()
  final String buttonText;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AnswerFormat.image(defaultValue: $defaultValue, buttonText: $buttonText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageAnswerFormat &&
            const DeepCollectionEquality()
                .equals(other.defaultValue, defaultValue) &&
            const DeepCollectionEquality()
                .equals(other.buttonText, buttonText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(defaultValue),
      const DeepCollectionEquality().hash(buttonText));

  @JsonKey(ignore: true)
  @override
  _$$ImageAnswerFormatCopyWith<_$ImageAnswerFormat> get copyWith =>
      __$$ImageAnswerFormatCopyWithImpl<_$ImageAnswerFormat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)
        boolean,
    required TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)
        date,
    required TResult Function(double? defaultValue, String hint) double,
    required TResult Function(String? defaultValue, String buttonText) image,
    required TResult Function(int? defaultValue, String hint) integer,
    required TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)
        multiChoice,
    required TResult Function(
            List<MultiDouble>? defaultValues, List<String> hints)
        multiDouble,
    required TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)
        scale,
    required TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)
        singleChoice,
    required TResult Function(
            int? maxLines, String hint, String validationRegEx)
        text,
    required TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)
        time,
  }) {
    return image(defaultValue, buttonText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)?
        boolean,
    TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)?
        date,
    TResult Function(double? defaultValue, String hint)? double,
    TResult Function(String? defaultValue, String buttonText)? image,
    TResult Function(int? defaultValue, String hint)? integer,
    TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)?
        multiChoice,
    TResult Function(List<MultiDouble>? defaultValues, List<String> hints)?
        multiDouble,
    TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)?
        scale,
    TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)?
        singleChoice,
    TResult Function(int? maxLines, String hint, String validationRegEx)? text,
    TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)? time,
  }) {
    return image?.call(defaultValue, buttonText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)?
        boolean,
    TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)?
        date,
    TResult Function(double? defaultValue, String hint)? double,
    TResult Function(String? defaultValue, String buttonText)? image,
    TResult Function(int? defaultValue, String hint)? integer,
    TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)?
        multiChoice,
    TResult Function(List<MultiDouble>? defaultValues, List<String> hints)?
        multiDouble,
    TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)?
        scale,
    TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)?
        singleChoice,
    TResult Function(int? maxLines, String hint, String validationRegEx)? text,
    TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)? time,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(defaultValue, buttonText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanAnswerFormat value) boolean,
    required TResult Function(DateAnswerFormat value) date,
    required TResult Function(DoubleAnswerFormat value) double,
    required TResult Function(ImageAnswerFormat value) image,
    required TResult Function(IntegerAnswerFormat value) integer,
    required TResult Function(MultiChoiceAnswerFormat value) multiChoice,
    required TResult Function(MultiDoubleAnswerFormat value) multiDouble,
    required TResult Function(ScaleAnswerFormat value) scale,
    required TResult Function(SingleChoiceAnswerFormat value) singleChoice,
    required TResult Function(TextAnswerFormat value) text,
    required TResult Function(TimeAnswerFormat value) time,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BooleanAnswerFormat value)? boolean,
    TResult Function(DateAnswerFormat value)? date,
    TResult Function(DoubleAnswerFormat value)? double,
    TResult Function(ImageAnswerFormat value)? image,
    TResult Function(IntegerAnswerFormat value)? integer,
    TResult Function(MultiChoiceAnswerFormat value)? multiChoice,
    TResult Function(MultiDoubleAnswerFormat value)? multiDouble,
    TResult Function(ScaleAnswerFormat value)? scale,
    TResult Function(SingleChoiceAnswerFormat value)? singleChoice,
    TResult Function(TextAnswerFormat value)? text,
    TResult Function(TimeAnswerFormat value)? time,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanAnswerFormat value)? boolean,
    TResult Function(DateAnswerFormat value)? date,
    TResult Function(DoubleAnswerFormat value)? double,
    TResult Function(ImageAnswerFormat value)? image,
    TResult Function(IntegerAnswerFormat value)? integer,
    TResult Function(MultiChoiceAnswerFormat value)? multiChoice,
    TResult Function(MultiDoubleAnswerFormat value)? multiDouble,
    TResult Function(ScaleAnswerFormat value)? scale,
    TResult Function(SingleChoiceAnswerFormat value)? singleChoice,
    TResult Function(TextAnswerFormat value)? text,
    TResult Function(TimeAnswerFormat value)? time,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageAnswerFormatToJson(
      this,
    );
  }
}

abstract class ImageAnswerFormat extends AnswerFormat {
  const factory ImageAnswerFormat(
      {final String? defaultValue,
      final String buttonText}) = _$ImageAnswerFormat;
  const ImageAnswerFormat._() : super._();

  factory ImageAnswerFormat.fromJson(Map<String, dynamic> json) =
      _$ImageAnswerFormat.fromJson;

  String? get defaultValue;
  String get buttonText;
  @JsonKey(ignore: true)
  _$$ImageAnswerFormatCopyWith<_$ImageAnswerFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IntegerAnswerFormatCopyWith<$Res> {
  factory _$$IntegerAnswerFormatCopyWith(_$IntegerAnswerFormat value,
          $Res Function(_$IntegerAnswerFormat) then) =
      __$$IntegerAnswerFormatCopyWithImpl<$Res>;
  $Res call({int? defaultValue, String hint});
}

/// @nodoc
class __$$IntegerAnswerFormatCopyWithImpl<$Res>
    extends _$AnswerFormatCopyWithImpl<$Res>
    implements _$$IntegerAnswerFormatCopyWith<$Res> {
  __$$IntegerAnswerFormatCopyWithImpl(
      _$IntegerAnswerFormat _value, $Res Function(_$IntegerAnswerFormat) _then)
      : super(_value, (v) => _then(v as _$IntegerAnswerFormat));

  @override
  _$IntegerAnswerFormat get _value => super._value as _$IntegerAnswerFormat;

  @override
  $Res call({
    Object? defaultValue = freezed,
    Object? hint = freezed,
  }) {
    return _then(_$IntegerAnswerFormat(
      defaultValue: defaultValue == freezed
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as int?,
      hint: hint == freezed
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IntegerAnswerFormat extends IntegerAnswerFormat {
  const _$IntegerAnswerFormat(
      {this.defaultValue, this.hint = '', final String? $type})
      : $type = $type ?? 'integer',
        super._();

  factory _$IntegerAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$$IntegerAnswerFormatFromJson(json);

  @override
  final int? defaultValue;
  @override
  @JsonKey()
  final String hint;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AnswerFormat.integer(defaultValue: $defaultValue, hint: $hint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntegerAnswerFormat &&
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
  _$$IntegerAnswerFormatCopyWith<_$IntegerAnswerFormat> get copyWith =>
      __$$IntegerAnswerFormatCopyWithImpl<_$IntegerAnswerFormat>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)
        boolean,
    required TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)
        date,
    required TResult Function(double? defaultValue, String hint) double,
    required TResult Function(String? defaultValue, String buttonText) image,
    required TResult Function(int? defaultValue, String hint) integer,
    required TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)
        multiChoice,
    required TResult Function(
            List<MultiDouble>? defaultValues, List<String> hints)
        multiDouble,
    required TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)
        scale,
    required TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)
        singleChoice,
    required TResult Function(
            int? maxLines, String hint, String validationRegEx)
        text,
    required TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)
        time,
  }) {
    return integer(defaultValue, hint);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)?
        boolean,
    TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)?
        date,
    TResult Function(double? defaultValue, String hint)? double,
    TResult Function(String? defaultValue, String buttonText)? image,
    TResult Function(int? defaultValue, String hint)? integer,
    TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)?
        multiChoice,
    TResult Function(List<MultiDouble>? defaultValues, List<String> hints)?
        multiDouble,
    TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)?
        scale,
    TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)?
        singleChoice,
    TResult Function(int? maxLines, String hint, String validationRegEx)? text,
    TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)? time,
  }) {
    return integer?.call(defaultValue, hint);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)?
        boolean,
    TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)?
        date,
    TResult Function(double? defaultValue, String hint)? double,
    TResult Function(String? defaultValue, String buttonText)? image,
    TResult Function(int? defaultValue, String hint)? integer,
    TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)?
        multiChoice,
    TResult Function(List<MultiDouble>? defaultValues, List<String> hints)?
        multiDouble,
    TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)?
        scale,
    TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)?
        singleChoice,
    TResult Function(int? maxLines, String hint, String validationRegEx)? text,
    TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)? time,
    required TResult orElse(),
  }) {
    if (integer != null) {
      return integer(defaultValue, hint);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanAnswerFormat value) boolean,
    required TResult Function(DateAnswerFormat value) date,
    required TResult Function(DoubleAnswerFormat value) double,
    required TResult Function(ImageAnswerFormat value) image,
    required TResult Function(IntegerAnswerFormat value) integer,
    required TResult Function(MultiChoiceAnswerFormat value) multiChoice,
    required TResult Function(MultiDoubleAnswerFormat value) multiDouble,
    required TResult Function(ScaleAnswerFormat value) scale,
    required TResult Function(SingleChoiceAnswerFormat value) singleChoice,
    required TResult Function(TextAnswerFormat value) text,
    required TResult Function(TimeAnswerFormat value) time,
  }) {
    return integer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BooleanAnswerFormat value)? boolean,
    TResult Function(DateAnswerFormat value)? date,
    TResult Function(DoubleAnswerFormat value)? double,
    TResult Function(ImageAnswerFormat value)? image,
    TResult Function(IntegerAnswerFormat value)? integer,
    TResult Function(MultiChoiceAnswerFormat value)? multiChoice,
    TResult Function(MultiDoubleAnswerFormat value)? multiDouble,
    TResult Function(ScaleAnswerFormat value)? scale,
    TResult Function(SingleChoiceAnswerFormat value)? singleChoice,
    TResult Function(TextAnswerFormat value)? text,
    TResult Function(TimeAnswerFormat value)? time,
  }) {
    return integer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanAnswerFormat value)? boolean,
    TResult Function(DateAnswerFormat value)? date,
    TResult Function(DoubleAnswerFormat value)? double,
    TResult Function(ImageAnswerFormat value)? image,
    TResult Function(IntegerAnswerFormat value)? integer,
    TResult Function(MultiChoiceAnswerFormat value)? multiChoice,
    TResult Function(MultiDoubleAnswerFormat value)? multiDouble,
    TResult Function(ScaleAnswerFormat value)? scale,
    TResult Function(SingleChoiceAnswerFormat value)? singleChoice,
    TResult Function(TextAnswerFormat value)? text,
    TResult Function(TimeAnswerFormat value)? time,
    required TResult orElse(),
  }) {
    if (integer != null) {
      return integer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$IntegerAnswerFormatToJson(
      this,
    );
  }
}

abstract class IntegerAnswerFormat extends AnswerFormat {
  const factory IntegerAnswerFormat(
      {final int? defaultValue, final String hint}) = _$IntegerAnswerFormat;
  const IntegerAnswerFormat._() : super._();

  factory IntegerAnswerFormat.fromJson(Map<String, dynamic> json) =
      _$IntegerAnswerFormat.fromJson;

  int? get defaultValue;
  String get hint;
  @JsonKey(ignore: true)
  _$$IntegerAnswerFormatCopyWith<_$IntegerAnswerFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultiChoiceAnswerFormatCopyWith<$Res> {
  factory _$$MultiChoiceAnswerFormatCopyWith(_$MultiChoiceAnswerFormat value,
          $Res Function(_$MultiChoiceAnswerFormat) then) =
      __$$MultiChoiceAnswerFormatCopyWithImpl<$Res>;
  $Res call({List<TextChoice> textChoices, List<TextChoice> defaultSelection});
}

/// @nodoc
class __$$MultiChoiceAnswerFormatCopyWithImpl<$Res>
    extends _$AnswerFormatCopyWithImpl<$Res>
    implements _$$MultiChoiceAnswerFormatCopyWith<$Res> {
  __$$MultiChoiceAnswerFormatCopyWithImpl(_$MultiChoiceAnswerFormat _value,
      $Res Function(_$MultiChoiceAnswerFormat) _then)
      : super(_value, (v) => _then(v as _$MultiChoiceAnswerFormat));

  @override
  _$MultiChoiceAnswerFormat get _value =>
      super._value as _$MultiChoiceAnswerFormat;

  @override
  $Res call({
    Object? textChoices = freezed,
    Object? defaultSelection = freezed,
  }) {
    return _then(_$MultiChoiceAnswerFormat(
      textChoices: textChoices == freezed
          ? _value._textChoices
          : textChoices // ignore: cast_nullable_to_non_nullable
              as List<TextChoice>,
      defaultSelection: defaultSelection == freezed
          ? _value._defaultSelection
          : defaultSelection // ignore: cast_nullable_to_non_nullable
              as List<TextChoice>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MultiChoiceAnswerFormat extends MultiChoiceAnswerFormat {
  const _$MultiChoiceAnswerFormat(
      {required final List<TextChoice> textChoices,
      final List<TextChoice> defaultSelection = const [],
      final String? $type})
      : _textChoices = textChoices,
        _defaultSelection = defaultSelection,
        $type = $type ?? 'multiChoice',
        super._();

  factory _$MultiChoiceAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$$MultiChoiceAnswerFormatFromJson(json);

  final List<TextChoice> _textChoices;
  @override
  List<TextChoice> get textChoices {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_textChoices);
  }

  final List<TextChoice> _defaultSelection;
  @override
  @JsonKey()
  List<TextChoice> get defaultSelection {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_defaultSelection);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AnswerFormat.multiChoice(textChoices: $textChoices, defaultSelection: $defaultSelection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiChoiceAnswerFormat &&
            const DeepCollectionEquality()
                .equals(other._textChoices, _textChoices) &&
            const DeepCollectionEquality()
                .equals(other._defaultSelection, _defaultSelection));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_textChoices),
      const DeepCollectionEquality().hash(_defaultSelection));

  @JsonKey(ignore: true)
  @override
  _$$MultiChoiceAnswerFormatCopyWith<_$MultiChoiceAnswerFormat> get copyWith =>
      __$$MultiChoiceAnswerFormatCopyWithImpl<_$MultiChoiceAnswerFormat>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)
        boolean,
    required TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)
        date,
    required TResult Function(double? defaultValue, String hint) double,
    required TResult Function(String? defaultValue, String buttonText) image,
    required TResult Function(int? defaultValue, String hint) integer,
    required TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)
        multiChoice,
    required TResult Function(
            List<MultiDouble>? defaultValues, List<String> hints)
        multiDouble,
    required TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)
        scale,
    required TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)
        singleChoice,
    required TResult Function(
            int? maxLines, String hint, String validationRegEx)
        text,
    required TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)
        time,
  }) {
    return multiChoice(textChoices, defaultSelection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)?
        boolean,
    TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)?
        date,
    TResult Function(double? defaultValue, String hint)? double,
    TResult Function(String? defaultValue, String buttonText)? image,
    TResult Function(int? defaultValue, String hint)? integer,
    TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)?
        multiChoice,
    TResult Function(List<MultiDouble>? defaultValues, List<String> hints)?
        multiDouble,
    TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)?
        scale,
    TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)?
        singleChoice,
    TResult Function(int? maxLines, String hint, String validationRegEx)? text,
    TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)? time,
  }) {
    return multiChoice?.call(textChoices, defaultSelection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)?
        boolean,
    TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)?
        date,
    TResult Function(double? defaultValue, String hint)? double,
    TResult Function(String? defaultValue, String buttonText)? image,
    TResult Function(int? defaultValue, String hint)? integer,
    TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)?
        multiChoice,
    TResult Function(List<MultiDouble>? defaultValues, List<String> hints)?
        multiDouble,
    TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)?
        scale,
    TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)?
        singleChoice,
    TResult Function(int? maxLines, String hint, String validationRegEx)? text,
    TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)? time,
    required TResult orElse(),
  }) {
    if (multiChoice != null) {
      return multiChoice(textChoices, defaultSelection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanAnswerFormat value) boolean,
    required TResult Function(DateAnswerFormat value) date,
    required TResult Function(DoubleAnswerFormat value) double,
    required TResult Function(ImageAnswerFormat value) image,
    required TResult Function(IntegerAnswerFormat value) integer,
    required TResult Function(MultiChoiceAnswerFormat value) multiChoice,
    required TResult Function(MultiDoubleAnswerFormat value) multiDouble,
    required TResult Function(ScaleAnswerFormat value) scale,
    required TResult Function(SingleChoiceAnswerFormat value) singleChoice,
    required TResult Function(TextAnswerFormat value) text,
    required TResult Function(TimeAnswerFormat value) time,
  }) {
    return multiChoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BooleanAnswerFormat value)? boolean,
    TResult Function(DateAnswerFormat value)? date,
    TResult Function(DoubleAnswerFormat value)? double,
    TResult Function(ImageAnswerFormat value)? image,
    TResult Function(IntegerAnswerFormat value)? integer,
    TResult Function(MultiChoiceAnswerFormat value)? multiChoice,
    TResult Function(MultiDoubleAnswerFormat value)? multiDouble,
    TResult Function(ScaleAnswerFormat value)? scale,
    TResult Function(SingleChoiceAnswerFormat value)? singleChoice,
    TResult Function(TextAnswerFormat value)? text,
    TResult Function(TimeAnswerFormat value)? time,
  }) {
    return multiChoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanAnswerFormat value)? boolean,
    TResult Function(DateAnswerFormat value)? date,
    TResult Function(DoubleAnswerFormat value)? double,
    TResult Function(ImageAnswerFormat value)? image,
    TResult Function(IntegerAnswerFormat value)? integer,
    TResult Function(MultiChoiceAnswerFormat value)? multiChoice,
    TResult Function(MultiDoubleAnswerFormat value)? multiDouble,
    TResult Function(ScaleAnswerFormat value)? scale,
    TResult Function(SingleChoiceAnswerFormat value)? singleChoice,
    TResult Function(TextAnswerFormat value)? text,
    TResult Function(TimeAnswerFormat value)? time,
    required TResult orElse(),
  }) {
    if (multiChoice != null) {
      return multiChoice(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MultiChoiceAnswerFormatToJson(
      this,
    );
  }
}

abstract class MultiChoiceAnswerFormat extends AnswerFormat {
  const factory MultiChoiceAnswerFormat(
      {required final List<TextChoice> textChoices,
      final List<TextChoice> defaultSelection}) = _$MultiChoiceAnswerFormat;
  const MultiChoiceAnswerFormat._() : super._();

  factory MultiChoiceAnswerFormat.fromJson(Map<String, dynamic> json) =
      _$MultiChoiceAnswerFormat.fromJson;

  List<TextChoice> get textChoices;
  List<TextChoice> get defaultSelection;
  @JsonKey(ignore: true)
  _$$MultiChoiceAnswerFormatCopyWith<_$MultiChoiceAnswerFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultiDoubleAnswerFormatCopyWith<$Res> {
  factory _$$MultiDoubleAnswerFormatCopyWith(_$MultiDoubleAnswerFormat value,
          $Res Function(_$MultiDoubleAnswerFormat) then) =
      __$$MultiDoubleAnswerFormatCopyWithImpl<$Res>;
  $Res call({List<MultiDouble>? defaultValues, List<String> hints});
}

/// @nodoc
class __$$MultiDoubleAnswerFormatCopyWithImpl<$Res>
    extends _$AnswerFormatCopyWithImpl<$Res>
    implements _$$MultiDoubleAnswerFormatCopyWith<$Res> {
  __$$MultiDoubleAnswerFormatCopyWithImpl(_$MultiDoubleAnswerFormat _value,
      $Res Function(_$MultiDoubleAnswerFormat) _then)
      : super(_value, (v) => _then(v as _$MultiDoubleAnswerFormat));

  @override
  _$MultiDoubleAnswerFormat get _value =>
      super._value as _$MultiDoubleAnswerFormat;

  @override
  $Res call({
    Object? defaultValues = freezed,
    Object? hints = freezed,
  }) {
    return _then(_$MultiDoubleAnswerFormat(
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
class _$MultiDoubleAnswerFormat extends MultiDoubleAnswerFormat {
  const _$MultiDoubleAnswerFormat(
      {final List<MultiDouble>? defaultValues,
      final List<String> hints = const [],
      final String? $type})
      : _defaultValues = defaultValues,
        _hints = hints,
        $type = $type ?? 'multiDouble',
        super._();

  factory _$MultiDoubleAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$$MultiDoubleAnswerFormatFromJson(json);

  final List<MultiDouble>? _defaultValues;
  @override
  List<MultiDouble>? get defaultValues {
    final value = _defaultValues;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String> _hints;
  @override
  @JsonKey()
  List<String> get hints {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hints);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AnswerFormat.multiDouble(defaultValues: $defaultValues, hints: $hints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiDoubleAnswerFormat &&
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
  _$$MultiDoubleAnswerFormatCopyWith<_$MultiDoubleAnswerFormat> get copyWith =>
      __$$MultiDoubleAnswerFormatCopyWithImpl<_$MultiDoubleAnswerFormat>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)
        boolean,
    required TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)
        date,
    required TResult Function(double? defaultValue, String hint) double,
    required TResult Function(String? defaultValue, String buttonText) image,
    required TResult Function(int? defaultValue, String hint) integer,
    required TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)
        multiChoice,
    required TResult Function(
            List<MultiDouble>? defaultValues, List<String> hints)
        multiDouble,
    required TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)
        scale,
    required TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)
        singleChoice,
    required TResult Function(
            int? maxLines, String hint, String validationRegEx)
        text,
    required TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)
        time,
  }) {
    return multiDouble(defaultValues, hints);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)?
        boolean,
    TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)?
        date,
    TResult Function(double? defaultValue, String hint)? double,
    TResult Function(String? defaultValue, String buttonText)? image,
    TResult Function(int? defaultValue, String hint)? integer,
    TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)?
        multiChoice,
    TResult Function(List<MultiDouble>? defaultValues, List<String> hints)?
        multiDouble,
    TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)?
        scale,
    TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)?
        singleChoice,
    TResult Function(int? maxLines, String hint, String validationRegEx)? text,
    TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)? time,
  }) {
    return multiDouble?.call(defaultValues, hints);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)?
        boolean,
    TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)?
        date,
    TResult Function(double? defaultValue, String hint)? double,
    TResult Function(String? defaultValue, String buttonText)? image,
    TResult Function(int? defaultValue, String hint)? integer,
    TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)?
        multiChoice,
    TResult Function(List<MultiDouble>? defaultValues, List<String> hints)?
        multiDouble,
    TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)?
        scale,
    TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)?
        singleChoice,
    TResult Function(int? maxLines, String hint, String validationRegEx)? text,
    TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)? time,
    required TResult orElse(),
  }) {
    if (multiDouble != null) {
      return multiDouble(defaultValues, hints);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanAnswerFormat value) boolean,
    required TResult Function(DateAnswerFormat value) date,
    required TResult Function(DoubleAnswerFormat value) double,
    required TResult Function(ImageAnswerFormat value) image,
    required TResult Function(IntegerAnswerFormat value) integer,
    required TResult Function(MultiChoiceAnswerFormat value) multiChoice,
    required TResult Function(MultiDoubleAnswerFormat value) multiDouble,
    required TResult Function(ScaleAnswerFormat value) scale,
    required TResult Function(SingleChoiceAnswerFormat value) singleChoice,
    required TResult Function(TextAnswerFormat value) text,
    required TResult Function(TimeAnswerFormat value) time,
  }) {
    return multiDouble(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BooleanAnswerFormat value)? boolean,
    TResult Function(DateAnswerFormat value)? date,
    TResult Function(DoubleAnswerFormat value)? double,
    TResult Function(ImageAnswerFormat value)? image,
    TResult Function(IntegerAnswerFormat value)? integer,
    TResult Function(MultiChoiceAnswerFormat value)? multiChoice,
    TResult Function(MultiDoubleAnswerFormat value)? multiDouble,
    TResult Function(ScaleAnswerFormat value)? scale,
    TResult Function(SingleChoiceAnswerFormat value)? singleChoice,
    TResult Function(TextAnswerFormat value)? text,
    TResult Function(TimeAnswerFormat value)? time,
  }) {
    return multiDouble?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanAnswerFormat value)? boolean,
    TResult Function(DateAnswerFormat value)? date,
    TResult Function(DoubleAnswerFormat value)? double,
    TResult Function(ImageAnswerFormat value)? image,
    TResult Function(IntegerAnswerFormat value)? integer,
    TResult Function(MultiChoiceAnswerFormat value)? multiChoice,
    TResult Function(MultiDoubleAnswerFormat value)? multiDouble,
    TResult Function(ScaleAnswerFormat value)? scale,
    TResult Function(SingleChoiceAnswerFormat value)? singleChoice,
    TResult Function(TextAnswerFormat value)? text,
    TResult Function(TimeAnswerFormat value)? time,
    required TResult orElse(),
  }) {
    if (multiDouble != null) {
      return multiDouble(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MultiDoubleAnswerFormatToJson(
      this,
    );
  }
}

abstract class MultiDoubleAnswerFormat extends AnswerFormat {
  const factory MultiDoubleAnswerFormat(
      {final List<MultiDouble>? defaultValues,
      final List<String> hints}) = _$MultiDoubleAnswerFormat;
  const MultiDoubleAnswerFormat._() : super._();

  factory MultiDoubleAnswerFormat.fromJson(Map<String, dynamic> json) =
      _$MultiDoubleAnswerFormat.fromJson;

  List<MultiDouble>? get defaultValues;
  List<String> get hints;
  @JsonKey(ignore: true)
  _$$MultiDoubleAnswerFormatCopyWith<_$MultiDoubleAnswerFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScaleAnswerFormatCopyWith<$Res> {
  factory _$$ScaleAnswerFormatCopyWith(
          _$ScaleAnswerFormat value, $Res Function(_$ScaleAnswerFormat) then) =
      __$$ScaleAnswerFormatCopyWithImpl<$Res>;
  $Res call(
      {double maximumValue,
      double minimumValue,
      double defaultValue,
      double step,
      String maximumValueDescription,
      String minimumValueDescription});
}

/// @nodoc
class __$$ScaleAnswerFormatCopyWithImpl<$Res>
    extends _$AnswerFormatCopyWithImpl<$Res>
    implements _$$ScaleAnswerFormatCopyWith<$Res> {
  __$$ScaleAnswerFormatCopyWithImpl(
      _$ScaleAnswerFormat _value, $Res Function(_$ScaleAnswerFormat) _then)
      : super(_value, (v) => _then(v as _$ScaleAnswerFormat));

  @override
  _$ScaleAnswerFormat get _value => super._value as _$ScaleAnswerFormat;

  @override
  $Res call({
    Object? maximumValue = freezed,
    Object? minimumValue = freezed,
    Object? defaultValue = freezed,
    Object? step = freezed,
    Object? maximumValueDescription = freezed,
    Object? minimumValueDescription = freezed,
  }) {
    return _then(_$ScaleAnswerFormat(
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
class _$ScaleAnswerFormat extends ScaleAnswerFormat {
  const _$ScaleAnswerFormat(
      {required this.maximumValue,
      required this.minimumValue,
      required this.defaultValue,
      required this.step,
      this.maximumValueDescription = '',
      this.minimumValueDescription = '',
      final String? $type})
      : $type = $type ?? 'scale',
        super._();

  factory _$ScaleAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$$ScaleAnswerFormatFromJson(json);

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

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AnswerFormat.scale(maximumValue: $maximumValue, minimumValue: $minimumValue, defaultValue: $defaultValue, step: $step, maximumValueDescription: $maximumValueDescription, minimumValueDescription: $minimumValueDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScaleAnswerFormat &&
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
  _$$ScaleAnswerFormatCopyWith<_$ScaleAnswerFormat> get copyWith =>
      __$$ScaleAnswerFormatCopyWithImpl<_$ScaleAnswerFormat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)
        boolean,
    required TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)
        date,
    required TResult Function(double? defaultValue, String hint) double,
    required TResult Function(String? defaultValue, String buttonText) image,
    required TResult Function(int? defaultValue, String hint) integer,
    required TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)
        multiChoice,
    required TResult Function(
            List<MultiDouble>? defaultValues, List<String> hints)
        multiDouble,
    required TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)
        scale,
    required TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)
        singleChoice,
    required TResult Function(
            int? maxLines, String hint, String validationRegEx)
        text,
    required TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)
        time,
  }) {
    return scale(maximumValue, minimumValue, defaultValue, step,
        maximumValueDescription, minimumValueDescription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)?
        boolean,
    TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)?
        date,
    TResult Function(double? defaultValue, String hint)? double,
    TResult Function(String? defaultValue, String buttonText)? image,
    TResult Function(int? defaultValue, String hint)? integer,
    TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)?
        multiChoice,
    TResult Function(List<MultiDouble>? defaultValues, List<String> hints)?
        multiDouble,
    TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)?
        scale,
    TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)?
        singleChoice,
    TResult Function(int? maxLines, String hint, String validationRegEx)? text,
    TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)? time,
  }) {
    return scale?.call(maximumValue, minimumValue, defaultValue, step,
        maximumValueDescription, minimumValueDescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)?
        boolean,
    TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)?
        date,
    TResult Function(double? defaultValue, String hint)? double,
    TResult Function(String? defaultValue, String buttonText)? image,
    TResult Function(int? defaultValue, String hint)? integer,
    TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)?
        multiChoice,
    TResult Function(List<MultiDouble>? defaultValues, List<String> hints)?
        multiDouble,
    TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)?
        scale,
    TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)?
        singleChoice,
    TResult Function(int? maxLines, String hint, String validationRegEx)? text,
    TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)? time,
    required TResult orElse(),
  }) {
    if (scale != null) {
      return scale(maximumValue, minimumValue, defaultValue, step,
          maximumValueDescription, minimumValueDescription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanAnswerFormat value) boolean,
    required TResult Function(DateAnswerFormat value) date,
    required TResult Function(DoubleAnswerFormat value) double,
    required TResult Function(ImageAnswerFormat value) image,
    required TResult Function(IntegerAnswerFormat value) integer,
    required TResult Function(MultiChoiceAnswerFormat value) multiChoice,
    required TResult Function(MultiDoubleAnswerFormat value) multiDouble,
    required TResult Function(ScaleAnswerFormat value) scale,
    required TResult Function(SingleChoiceAnswerFormat value) singleChoice,
    required TResult Function(TextAnswerFormat value) text,
    required TResult Function(TimeAnswerFormat value) time,
  }) {
    return scale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BooleanAnswerFormat value)? boolean,
    TResult Function(DateAnswerFormat value)? date,
    TResult Function(DoubleAnswerFormat value)? double,
    TResult Function(ImageAnswerFormat value)? image,
    TResult Function(IntegerAnswerFormat value)? integer,
    TResult Function(MultiChoiceAnswerFormat value)? multiChoice,
    TResult Function(MultiDoubleAnswerFormat value)? multiDouble,
    TResult Function(ScaleAnswerFormat value)? scale,
    TResult Function(SingleChoiceAnswerFormat value)? singleChoice,
    TResult Function(TextAnswerFormat value)? text,
    TResult Function(TimeAnswerFormat value)? time,
  }) {
    return scale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanAnswerFormat value)? boolean,
    TResult Function(DateAnswerFormat value)? date,
    TResult Function(DoubleAnswerFormat value)? double,
    TResult Function(ImageAnswerFormat value)? image,
    TResult Function(IntegerAnswerFormat value)? integer,
    TResult Function(MultiChoiceAnswerFormat value)? multiChoice,
    TResult Function(MultiDoubleAnswerFormat value)? multiDouble,
    TResult Function(ScaleAnswerFormat value)? scale,
    TResult Function(SingleChoiceAnswerFormat value)? singleChoice,
    TResult Function(TextAnswerFormat value)? text,
    TResult Function(TimeAnswerFormat value)? time,
    required TResult orElse(),
  }) {
    if (scale != null) {
      return scale(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ScaleAnswerFormatToJson(
      this,
    );
  }
}

abstract class ScaleAnswerFormat extends AnswerFormat {
  const factory ScaleAnswerFormat(
      {required final double maximumValue,
      required final double minimumValue,
      required final double defaultValue,
      required final double step,
      final String maximumValueDescription,
      final String minimumValueDescription}) = _$ScaleAnswerFormat;
  const ScaleAnswerFormat._() : super._();

  factory ScaleAnswerFormat.fromJson(Map<String, dynamic> json) =
      _$ScaleAnswerFormat.fromJson;

  double get maximumValue;
  double get minimumValue;
  double get defaultValue;
  double get step;
  String get maximumValueDescription;
  String get minimumValueDescription;
  @JsonKey(ignore: true)
  _$$ScaleAnswerFormatCopyWith<_$ScaleAnswerFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SingleChoiceAnswerFormatCopyWith<$Res> {
  factory _$$SingleChoiceAnswerFormatCopyWith(_$SingleChoiceAnswerFormat value,
          $Res Function(_$SingleChoiceAnswerFormat) then) =
      __$$SingleChoiceAnswerFormatCopyWithImpl<$Res>;
  $Res call({List<TextChoice> textChoices, TextChoice? defaultSelection});

  $TextChoiceCopyWith<$Res>? get defaultSelection;
}

/// @nodoc
class __$$SingleChoiceAnswerFormatCopyWithImpl<$Res>
    extends _$AnswerFormatCopyWithImpl<$Res>
    implements _$$SingleChoiceAnswerFormatCopyWith<$Res> {
  __$$SingleChoiceAnswerFormatCopyWithImpl(_$SingleChoiceAnswerFormat _value,
      $Res Function(_$SingleChoiceAnswerFormat) _then)
      : super(_value, (v) => _then(v as _$SingleChoiceAnswerFormat));

  @override
  _$SingleChoiceAnswerFormat get _value =>
      super._value as _$SingleChoiceAnswerFormat;

  @override
  $Res call({
    Object? textChoices = freezed,
    Object? defaultSelection = freezed,
  }) {
    return _then(_$SingleChoiceAnswerFormat(
      textChoices: textChoices == freezed
          ? _value._textChoices
          : textChoices // ignore: cast_nullable_to_non_nullable
              as List<TextChoice>,
      defaultSelection: defaultSelection == freezed
          ? _value.defaultSelection
          : defaultSelection // ignore: cast_nullable_to_non_nullable
              as TextChoice?,
    ));
  }

  @override
  $TextChoiceCopyWith<$Res>? get defaultSelection {
    if (_value.defaultSelection == null) {
      return null;
    }

    return $TextChoiceCopyWith<$Res>(_value.defaultSelection!, (value) {
      return _then(_value.copyWith(defaultSelection: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SingleChoiceAnswerFormat extends SingleChoiceAnswerFormat {
  const _$SingleChoiceAnswerFormat(
      {required final List<TextChoice> textChoices,
      this.defaultSelection,
      final String? $type})
      : _textChoices = textChoices,
        $type = $type ?? 'singleChoice',
        super._();

  factory _$SingleChoiceAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$$SingleChoiceAnswerFormatFromJson(json);

  final List<TextChoice> _textChoices;
  @override
  List<TextChoice> get textChoices {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_textChoices);
  }

  @override
  final TextChoice? defaultSelection;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AnswerFormat.singleChoice(textChoices: $textChoices, defaultSelection: $defaultSelection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleChoiceAnswerFormat &&
            const DeepCollectionEquality()
                .equals(other._textChoices, _textChoices) &&
            const DeepCollectionEquality()
                .equals(other.defaultSelection, defaultSelection));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_textChoices),
      const DeepCollectionEquality().hash(defaultSelection));

  @JsonKey(ignore: true)
  @override
  _$$SingleChoiceAnswerFormatCopyWith<_$SingleChoiceAnswerFormat>
      get copyWith =>
          __$$SingleChoiceAnswerFormatCopyWithImpl<_$SingleChoiceAnswerFormat>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)
        boolean,
    required TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)
        date,
    required TResult Function(double? defaultValue, String hint) double,
    required TResult Function(String? defaultValue, String buttonText) image,
    required TResult Function(int? defaultValue, String hint) integer,
    required TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)
        multiChoice,
    required TResult Function(
            List<MultiDouble>? defaultValues, List<String> hints)
        multiDouble,
    required TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)
        scale,
    required TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)
        singleChoice,
    required TResult Function(
            int? maxLines, String hint, String validationRegEx)
        text,
    required TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)
        time,
  }) {
    return singleChoice(textChoices, defaultSelection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)?
        boolean,
    TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)?
        date,
    TResult Function(double? defaultValue, String hint)? double,
    TResult Function(String? defaultValue, String buttonText)? image,
    TResult Function(int? defaultValue, String hint)? integer,
    TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)?
        multiChoice,
    TResult Function(List<MultiDouble>? defaultValues, List<String> hints)?
        multiDouble,
    TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)?
        scale,
    TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)?
        singleChoice,
    TResult Function(int? maxLines, String hint, String validationRegEx)? text,
    TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)? time,
  }) {
    return singleChoice?.call(textChoices, defaultSelection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)?
        boolean,
    TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)?
        date,
    TResult Function(double? defaultValue, String hint)? double,
    TResult Function(String? defaultValue, String buttonText)? image,
    TResult Function(int? defaultValue, String hint)? integer,
    TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)?
        multiChoice,
    TResult Function(List<MultiDouble>? defaultValues, List<String> hints)?
        multiDouble,
    TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)?
        scale,
    TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)?
        singleChoice,
    TResult Function(int? maxLines, String hint, String validationRegEx)? text,
    TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)? time,
    required TResult orElse(),
  }) {
    if (singleChoice != null) {
      return singleChoice(textChoices, defaultSelection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanAnswerFormat value) boolean,
    required TResult Function(DateAnswerFormat value) date,
    required TResult Function(DoubleAnswerFormat value) double,
    required TResult Function(ImageAnswerFormat value) image,
    required TResult Function(IntegerAnswerFormat value) integer,
    required TResult Function(MultiChoiceAnswerFormat value) multiChoice,
    required TResult Function(MultiDoubleAnswerFormat value) multiDouble,
    required TResult Function(ScaleAnswerFormat value) scale,
    required TResult Function(SingleChoiceAnswerFormat value) singleChoice,
    required TResult Function(TextAnswerFormat value) text,
    required TResult Function(TimeAnswerFormat value) time,
  }) {
    return singleChoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BooleanAnswerFormat value)? boolean,
    TResult Function(DateAnswerFormat value)? date,
    TResult Function(DoubleAnswerFormat value)? double,
    TResult Function(ImageAnswerFormat value)? image,
    TResult Function(IntegerAnswerFormat value)? integer,
    TResult Function(MultiChoiceAnswerFormat value)? multiChoice,
    TResult Function(MultiDoubleAnswerFormat value)? multiDouble,
    TResult Function(ScaleAnswerFormat value)? scale,
    TResult Function(SingleChoiceAnswerFormat value)? singleChoice,
    TResult Function(TextAnswerFormat value)? text,
    TResult Function(TimeAnswerFormat value)? time,
  }) {
    return singleChoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanAnswerFormat value)? boolean,
    TResult Function(DateAnswerFormat value)? date,
    TResult Function(DoubleAnswerFormat value)? double,
    TResult Function(ImageAnswerFormat value)? image,
    TResult Function(IntegerAnswerFormat value)? integer,
    TResult Function(MultiChoiceAnswerFormat value)? multiChoice,
    TResult Function(MultiDoubleAnswerFormat value)? multiDouble,
    TResult Function(ScaleAnswerFormat value)? scale,
    TResult Function(SingleChoiceAnswerFormat value)? singleChoice,
    TResult Function(TextAnswerFormat value)? text,
    TResult Function(TimeAnswerFormat value)? time,
    required TResult orElse(),
  }) {
    if (singleChoice != null) {
      return singleChoice(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SingleChoiceAnswerFormatToJson(
      this,
    );
  }
}

abstract class SingleChoiceAnswerFormat extends AnswerFormat {
  const factory SingleChoiceAnswerFormat(
      {required final List<TextChoice> textChoices,
      final TextChoice? defaultSelection}) = _$SingleChoiceAnswerFormat;
  const SingleChoiceAnswerFormat._() : super._();

  factory SingleChoiceAnswerFormat.fromJson(Map<String, dynamic> json) =
      _$SingleChoiceAnswerFormat.fromJson;

  List<TextChoice> get textChoices;
  TextChoice? get defaultSelection;
  @JsonKey(ignore: true)
  _$$SingleChoiceAnswerFormatCopyWith<_$SingleChoiceAnswerFormat>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TextAnswerFormatCopyWith<$Res> {
  factory _$$TextAnswerFormatCopyWith(
          _$TextAnswerFormat value, $Res Function(_$TextAnswerFormat) then) =
      __$$TextAnswerFormatCopyWithImpl<$Res>;
  $Res call({int? maxLines, String hint, String validationRegEx});
}

/// @nodoc
class __$$TextAnswerFormatCopyWithImpl<$Res>
    extends _$AnswerFormatCopyWithImpl<$Res>
    implements _$$TextAnswerFormatCopyWith<$Res> {
  __$$TextAnswerFormatCopyWithImpl(
      _$TextAnswerFormat _value, $Res Function(_$TextAnswerFormat) _then)
      : super(_value, (v) => _then(v as _$TextAnswerFormat));

  @override
  _$TextAnswerFormat get _value => super._value as _$TextAnswerFormat;

  @override
  $Res call({
    Object? maxLines = freezed,
    Object? hint = freezed,
    Object? validationRegEx = freezed,
  }) {
    return _then(_$TextAnswerFormat(
      maxLines: maxLines == freezed
          ? _value.maxLines
          : maxLines // ignore: cast_nullable_to_non_nullable
              as int?,
      hint: hint == freezed
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String,
      validationRegEx: validationRegEx == freezed
          ? _value.validationRegEx
          : validationRegEx // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextAnswerFormat extends TextAnswerFormat {
  const _$TextAnswerFormat(
      {this.maxLines,
      this.hint = '',
      this.validationRegEx = '',
      final String? $type})
      : $type = $type ?? 'text',
        super._();

  factory _$TextAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$$TextAnswerFormatFromJson(json);

  @override
  final int? maxLines;
  @override
  @JsonKey()
  final String hint;

  /// Regular expression by which the text gets validated
  /// default: '^(?!\s*$).+' that checks if the entered text is empty
  /// to allow any type of an answer including an empty one;
  /// set it explicitly to null.
// @JsonKey(defaultValue: '^(?!\s*\$).+')
// @Default('^(?!\s*\$).+')
  @override
  @JsonKey()
  final String validationRegEx;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AnswerFormat.text(maxLines: $maxLines, hint: $hint, validationRegEx: $validationRegEx)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextAnswerFormat &&
            const DeepCollectionEquality().equals(other.maxLines, maxLines) &&
            const DeepCollectionEquality().equals(other.hint, hint) &&
            const DeepCollectionEquality()
                .equals(other.validationRegEx, validationRegEx));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(maxLines),
      const DeepCollectionEquality().hash(hint),
      const DeepCollectionEquality().hash(validationRegEx));

  @JsonKey(ignore: true)
  @override
  _$$TextAnswerFormatCopyWith<_$TextAnswerFormat> get copyWith =>
      __$$TextAnswerFormatCopyWithImpl<_$TextAnswerFormat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)
        boolean,
    required TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)
        date,
    required TResult Function(double? defaultValue, String hint) double,
    required TResult Function(String? defaultValue, String buttonText) image,
    required TResult Function(int? defaultValue, String hint) integer,
    required TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)
        multiChoice,
    required TResult Function(
            List<MultiDouble>? defaultValues, List<String> hints)
        multiDouble,
    required TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)
        scale,
    required TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)
        singleChoice,
    required TResult Function(
            int? maxLines, String hint, String validationRegEx)
        text,
    required TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)
        time,
  }) {
    return text(maxLines, hint, validationRegEx);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)?
        boolean,
    TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)?
        date,
    TResult Function(double? defaultValue, String hint)? double,
    TResult Function(String? defaultValue, String buttonText)? image,
    TResult Function(int? defaultValue, String hint)? integer,
    TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)?
        multiChoice,
    TResult Function(List<MultiDouble>? defaultValues, List<String> hints)?
        multiDouble,
    TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)?
        scale,
    TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)?
        singleChoice,
    TResult Function(int? maxLines, String hint, String validationRegEx)? text,
    TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)? time,
  }) {
    return text?.call(maxLines, hint, validationRegEx);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)?
        boolean,
    TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)?
        date,
    TResult Function(double? defaultValue, String hint)? double,
    TResult Function(String? defaultValue, String buttonText)? image,
    TResult Function(int? defaultValue, String hint)? integer,
    TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)?
        multiChoice,
    TResult Function(List<MultiDouble>? defaultValues, List<String> hints)?
        multiDouble,
    TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)?
        scale,
    TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)?
        singleChoice,
    TResult Function(int? maxLines, String hint, String validationRegEx)? text,
    TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)? time,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(maxLines, hint, validationRegEx);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanAnswerFormat value) boolean,
    required TResult Function(DateAnswerFormat value) date,
    required TResult Function(DoubleAnswerFormat value) double,
    required TResult Function(ImageAnswerFormat value) image,
    required TResult Function(IntegerAnswerFormat value) integer,
    required TResult Function(MultiChoiceAnswerFormat value) multiChoice,
    required TResult Function(MultiDoubleAnswerFormat value) multiDouble,
    required TResult Function(ScaleAnswerFormat value) scale,
    required TResult Function(SingleChoiceAnswerFormat value) singleChoice,
    required TResult Function(TextAnswerFormat value) text,
    required TResult Function(TimeAnswerFormat value) time,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BooleanAnswerFormat value)? boolean,
    TResult Function(DateAnswerFormat value)? date,
    TResult Function(DoubleAnswerFormat value)? double,
    TResult Function(ImageAnswerFormat value)? image,
    TResult Function(IntegerAnswerFormat value)? integer,
    TResult Function(MultiChoiceAnswerFormat value)? multiChoice,
    TResult Function(MultiDoubleAnswerFormat value)? multiDouble,
    TResult Function(ScaleAnswerFormat value)? scale,
    TResult Function(SingleChoiceAnswerFormat value)? singleChoice,
    TResult Function(TextAnswerFormat value)? text,
    TResult Function(TimeAnswerFormat value)? time,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanAnswerFormat value)? boolean,
    TResult Function(DateAnswerFormat value)? date,
    TResult Function(DoubleAnswerFormat value)? double,
    TResult Function(ImageAnswerFormat value)? image,
    TResult Function(IntegerAnswerFormat value)? integer,
    TResult Function(MultiChoiceAnswerFormat value)? multiChoice,
    TResult Function(MultiDoubleAnswerFormat value)? multiDouble,
    TResult Function(ScaleAnswerFormat value)? scale,
    TResult Function(SingleChoiceAnswerFormat value)? singleChoice,
    TResult Function(TextAnswerFormat value)? text,
    TResult Function(TimeAnswerFormat value)? time,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TextAnswerFormatToJson(
      this,
    );
  }
}

abstract class TextAnswerFormat extends AnswerFormat {
  const factory TextAnswerFormat(
      {final int? maxLines,
      final String hint,
      final String validationRegEx}) = _$TextAnswerFormat;
  const TextAnswerFormat._() : super._();

  factory TextAnswerFormat.fromJson(Map<String, dynamic> json) =
      _$TextAnswerFormat.fromJson;

  int? get maxLines;
  String get hint;

  /// Regular expression by which the text gets validated
  /// default: '^(?!\s*$).+' that checks if the entered text is empty
  /// to allow any type of an answer including an empty one;
  /// set it explicitly to null.
// @JsonKey(defaultValue: '^(?!\s*\$).+')
// @Default('^(?!\s*\$).+')
  String get validationRegEx;
  @JsonKey(ignore: true)
  _$$TextAnswerFormatCopyWith<_$TextAnswerFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimeAnswerFormatCopyWith<$Res> {
  factory _$$TimeAnswerFormatCopyWith(
          _$TimeAnswerFormat value, $Res Function(_$TimeAnswerFormat) then) =
      __$$TimeAnswerFormatCopyWithImpl<$Res>;
  $Res call({@TimeOfDayConverter() TimeOfDay? defaultValue});
}

/// @nodoc
class __$$TimeAnswerFormatCopyWithImpl<$Res>
    extends _$AnswerFormatCopyWithImpl<$Res>
    implements _$$TimeAnswerFormatCopyWith<$Res> {
  __$$TimeAnswerFormatCopyWithImpl(
      _$TimeAnswerFormat _value, $Res Function(_$TimeAnswerFormat) _then)
      : super(_value, (v) => _then(v as _$TimeAnswerFormat));

  @override
  _$TimeAnswerFormat get _value => super._value as _$TimeAnswerFormat;

  @override
  $Res call({
    Object? defaultValue = freezed,
  }) {
    return _then(_$TimeAnswerFormat(
      defaultValue: defaultValue == freezed
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeAnswerFormat extends TimeAnswerFormat {
  const _$TimeAnswerFormat(
      {@TimeOfDayConverter() this.defaultValue, final String? $type})
      : $type = $type ?? 'time',
        super._();

  factory _$TimeAnswerFormat.fromJson(Map<String, dynamic> json) =>
      _$$TimeAnswerFormatFromJson(json);

  @override
  @TimeOfDayConverter()
  final TimeOfDay? defaultValue;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'AnswerFormat.time(defaultValue: $defaultValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeAnswerFormat &&
            const DeepCollectionEquality()
                .equals(other.defaultValue, defaultValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(defaultValue));

  @JsonKey(ignore: true)
  @override
  _$$TimeAnswerFormatCopyWith<_$TimeAnswerFormat> get copyWith =>
      __$$TimeAnswerFormatCopyWithImpl<_$TimeAnswerFormat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)
        boolean,
    required TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)
        date,
    required TResult Function(double? defaultValue, String hint) double,
    required TResult Function(String? defaultValue, String buttonText) image,
    required TResult Function(int? defaultValue, String hint) integer,
    required TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)
        multiChoice,
    required TResult Function(
            List<MultiDouble>? defaultValues, List<String> hints)
        multiDouble,
    required TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)
        scale,
    required TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)
        singleChoice,
    required TResult Function(
            int? maxLines, String hint, String validationRegEx)
        text,
    required TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)
        time,
  }) {
    return time(defaultValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)?
        boolean,
    TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)?
        date,
    TResult Function(double? defaultValue, String hint)? double,
    TResult Function(String? defaultValue, String buttonText)? image,
    TResult Function(int? defaultValue, String hint)? integer,
    TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)?
        multiChoice,
    TResult Function(List<MultiDouble>? defaultValues, List<String> hints)?
        multiDouble,
    TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)?
        scale,
    TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)?
        singleChoice,
    TResult Function(int? maxLines, String hint, String validationRegEx)? text,
    TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)? time,
  }) {
    return time?.call(defaultValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String positiveAnswer, String negativeAnswer, BooleanResult result)?
        boolean,
    TResult Function(
            DateTime? defaultDate, DateTime? minDate, DateTime? maxDate)?
        date,
    TResult Function(double? defaultValue, String hint)? double,
    TResult Function(String? defaultValue, String buttonText)? image,
    TResult Function(int? defaultValue, String hint)? integer,
    TResult Function(
            List<TextChoice> textChoices, List<TextChoice> defaultSelection)?
        multiChoice,
    TResult Function(List<MultiDouble>? defaultValues, List<String> hints)?
        multiDouble,
    TResult Function(
            double maximumValue,
            double minimumValue,
            double defaultValue,
            double step,
            String maximumValueDescription,
            String minimumValueDescription)?
        scale,
    TResult Function(
            List<TextChoice> textChoices, TextChoice? defaultSelection)?
        singleChoice,
    TResult Function(int? maxLines, String hint, String validationRegEx)? text,
    TResult Function(@TimeOfDayConverter() TimeOfDay? defaultValue)? time,
    required TResult orElse(),
  }) {
    if (time != null) {
      return time(defaultValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanAnswerFormat value) boolean,
    required TResult Function(DateAnswerFormat value) date,
    required TResult Function(DoubleAnswerFormat value) double,
    required TResult Function(ImageAnswerFormat value) image,
    required TResult Function(IntegerAnswerFormat value) integer,
    required TResult Function(MultiChoiceAnswerFormat value) multiChoice,
    required TResult Function(MultiDoubleAnswerFormat value) multiDouble,
    required TResult Function(ScaleAnswerFormat value) scale,
    required TResult Function(SingleChoiceAnswerFormat value) singleChoice,
    required TResult Function(TextAnswerFormat value) text,
    required TResult Function(TimeAnswerFormat value) time,
  }) {
    return time(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BooleanAnswerFormat value)? boolean,
    TResult Function(DateAnswerFormat value)? date,
    TResult Function(DoubleAnswerFormat value)? double,
    TResult Function(ImageAnswerFormat value)? image,
    TResult Function(IntegerAnswerFormat value)? integer,
    TResult Function(MultiChoiceAnswerFormat value)? multiChoice,
    TResult Function(MultiDoubleAnswerFormat value)? multiDouble,
    TResult Function(ScaleAnswerFormat value)? scale,
    TResult Function(SingleChoiceAnswerFormat value)? singleChoice,
    TResult Function(TextAnswerFormat value)? text,
    TResult Function(TimeAnswerFormat value)? time,
  }) {
    return time?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanAnswerFormat value)? boolean,
    TResult Function(DateAnswerFormat value)? date,
    TResult Function(DoubleAnswerFormat value)? double,
    TResult Function(ImageAnswerFormat value)? image,
    TResult Function(IntegerAnswerFormat value)? integer,
    TResult Function(MultiChoiceAnswerFormat value)? multiChoice,
    TResult Function(MultiDoubleAnswerFormat value)? multiDouble,
    TResult Function(ScaleAnswerFormat value)? scale,
    TResult Function(SingleChoiceAnswerFormat value)? singleChoice,
    TResult Function(TextAnswerFormat value)? text,
    TResult Function(TimeAnswerFormat value)? time,
    required TResult orElse(),
  }) {
    if (time != null) {
      return time(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeAnswerFormatToJson(
      this,
    );
  }
}

abstract class TimeAnswerFormat extends AnswerFormat {
  const factory TimeAnswerFormat(
          {@TimeOfDayConverter() final TimeOfDay? defaultValue}) =
      _$TimeAnswerFormat;
  const TimeAnswerFormat._() : super._();

  factory TimeAnswerFormat.fromJson(Map<String, dynamic> json) =
      _$TimeAnswerFormat.fromJson;

  @TimeOfDayConverter()
  TimeOfDay? get defaultValue;
  @JsonKey(ignore: true)
  _$$TimeAnswerFormatCopyWith<_$TimeAnswerFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

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

TextChoice _$TextChoiceFromJson(Map<String, dynamic> json) {
  return _TextChoice.fromJson(json);
}

/// @nodoc
mixin _$TextChoice {
  String get text => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextChoiceCopyWith<TextChoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextChoiceCopyWith<$Res> {
  factory $TextChoiceCopyWith(
          TextChoice value, $Res Function(TextChoice) then) =
      _$TextChoiceCopyWithImpl<$Res>;
  $Res call({String text, String value});
}

/// @nodoc
class _$TextChoiceCopyWithImpl<$Res> implements $TextChoiceCopyWith<$Res> {
  _$TextChoiceCopyWithImpl(this._value, this._then);

  final TextChoice _value;
  // ignore: unused_field
  final $Res Function(TextChoice) _then;

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
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TextChoiceCopyWith<$Res>
    implements $TextChoiceCopyWith<$Res> {
  factory _$$_TextChoiceCopyWith(
          _$_TextChoice value, $Res Function(_$_TextChoice) then) =
      __$$_TextChoiceCopyWithImpl<$Res>;
  @override
  $Res call({String text, String value});
}

/// @nodoc
class __$$_TextChoiceCopyWithImpl<$Res> extends _$TextChoiceCopyWithImpl<$Res>
    implements _$$_TextChoiceCopyWith<$Res> {
  __$$_TextChoiceCopyWithImpl(
      _$_TextChoice _value, $Res Function(_$_TextChoice) _then)
      : super(_value, (v) => _then(v as _$_TextChoice));

  @override
  _$_TextChoice get _value => super._value as _$_TextChoice;

  @override
  $Res call({
    Object? text = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_TextChoice(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TextChoice extends _TextChoice {
  const _$_TextChoice({required this.text, required this.value}) : super._();

  factory _$_TextChoice.fromJson(Map<String, dynamic> json) =>
      _$$_TextChoiceFromJson(json);

  @override
  final String text;
  @override
  final String value;

  @override
  String toString() {
    return 'TextChoice(text: $text, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextChoice &&
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
  _$$_TextChoiceCopyWith<_$_TextChoice> get copyWith =>
      __$$_TextChoiceCopyWithImpl<_$_TextChoice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TextChoiceToJson(
      this,
    );
  }
}

abstract class _TextChoice extends TextChoice {
  const factory _TextChoice(
      {required final String text,
      required final String value}) = _$_TextChoice;
  const _TextChoice._() : super._();

  factory _TextChoice.fromJson(Map<String, dynamic> json) =
      _$_TextChoice.fromJson;

  @override
  String get text;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_TextChoiceCopyWith<_$_TextChoice> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoResult _$VideoResultFromJson(Map<String, dynamic> json) {
  return _VideoResult.fromJson(json);
}

/// @nodoc
mixin _$VideoResult {
  Duration get leftVideoAt => throw _privateConstructorUsedError;
  DateTime get stayedInVideo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoResultCopyWith<VideoResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoResultCopyWith<$Res> {
  factory $VideoResultCopyWith(
          VideoResult value, $Res Function(VideoResult) then) =
      _$VideoResultCopyWithImpl<$Res>;
  $Res call({Duration leftVideoAt, DateTime stayedInVideo});
}

/// @nodoc
class _$VideoResultCopyWithImpl<$Res> implements $VideoResultCopyWith<$Res> {
  _$VideoResultCopyWithImpl(this._value, this._then);

  final VideoResult _value;
  // ignore: unused_field
  final $Res Function(VideoResult) _then;

  @override
  $Res call({
    Object? leftVideoAt = freezed,
    Object? stayedInVideo = freezed,
  }) {
    return _then(_value.copyWith(
      leftVideoAt: leftVideoAt == freezed
          ? _value.leftVideoAt
          : leftVideoAt // ignore: cast_nullable_to_non_nullable
              as Duration,
      stayedInVideo: stayedInVideo == freezed
          ? _value.stayedInVideo
          : stayedInVideo // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_VideoResultCopyWith<$Res>
    implements $VideoResultCopyWith<$Res> {
  factory _$$_VideoResultCopyWith(
          _$_VideoResult value, $Res Function(_$_VideoResult) then) =
      __$$_VideoResultCopyWithImpl<$Res>;
  @override
  $Res call({Duration leftVideoAt, DateTime stayedInVideo});
}

/// @nodoc
class __$$_VideoResultCopyWithImpl<$Res> extends _$VideoResultCopyWithImpl<$Res>
    implements _$$_VideoResultCopyWith<$Res> {
  __$$_VideoResultCopyWithImpl(
      _$_VideoResult _value, $Res Function(_$_VideoResult) _then)
      : super(_value, (v) => _then(v as _$_VideoResult));

  @override
  _$_VideoResult get _value => super._value as _$_VideoResult;

  @override
  $Res call({
    Object? leftVideoAt = freezed,
    Object? stayedInVideo = freezed,
  }) {
    return _then(_$_VideoResult(
      leftVideoAt: leftVideoAt == freezed
          ? _value.leftVideoAt
          : leftVideoAt // ignore: cast_nullable_to_non_nullable
              as Duration,
      stayedInVideo: stayedInVideo == freezed
          ? _value.stayedInVideo
          : stayedInVideo // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoResult implements _VideoResult {
  const _$_VideoResult(
      {required this.leftVideoAt, required this.stayedInVideo});

  factory _$_VideoResult.fromJson(Map<String, dynamic> json) =>
      _$$_VideoResultFromJson(json);

  @override
  final Duration leftVideoAt;
  @override
  final DateTime stayedInVideo;

  @override
  String toString() {
    return 'VideoResult(leftVideoAt: $leftVideoAt, stayedInVideo: $stayedInVideo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoResult &&
            const DeepCollectionEquality()
                .equals(other.leftVideoAt, leftVideoAt) &&
            const DeepCollectionEquality()
                .equals(other.stayedInVideo, stayedInVideo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(leftVideoAt),
      const DeepCollectionEquality().hash(stayedInVideo));

  @JsonKey(ignore: true)
  @override
  _$$_VideoResultCopyWith<_$_VideoResult> get copyWith =>
      __$$_VideoResultCopyWithImpl<_$_VideoResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoResultToJson(
      this,
    );
  }
}

abstract class _VideoResult implements VideoResult {
  const factory _VideoResult(
      {required final Duration leftVideoAt,
      required final DateTime stayedInVideo}) = _$_VideoResult;

  factory _VideoResult.fromJson(Map<String, dynamic> json) =
      _$_VideoResult.fromJson;

  @override
  Duration get leftVideoAt;
  @override
  DateTime get stayedInVideo;
  @override
  @JsonKey(ignore: true)
  _$$_VideoResultCopyWith<_$_VideoResult> get copyWith =>
      throw _privateConstructorUsedError;
}
