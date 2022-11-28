// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_result_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskResultDetail _$TaskResultDetailFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'completion':
      return CompletionTaskResult.fromJson(json);
    case 'instruction':
      return InstructionTaskResult.fromJson(json);
    case 'video':
      return VideoTaskResult.fromJson(json);
    case 'boolean':
      return BooleanQuestionResult.fromJson(json);
    case 'date':
      return DateQuestionResult.fromJson(json);
    case 'double':
      return DoubleQuestionResult.fromJson(json);
    case 'image':
      return ImageQuestionResult.fromJson(json);
    case 'integer':
      return IntegerQuestionResult.fromJson(json);
    case 'multiChoice':
      return MultiChoiceQuestionResult.fromJson(json);
    case 'multiDouble':
      return MultiDoubleQuestionResult.fromJson(json);
    case 'scale':
      return ScaleQuestionResult.fromJson(json);
    case 'singleChoice':
      return SingleChoiceQuestionResult.fromJson(json);
    case 'text':
      return TextQuestionResult.fromJson(json);
    case 'time':
      return TimeQuestionResult.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'TaskResultDetail',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$TaskResultDetail {
  Identifier get id => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        completion,
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        instruction,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, VideoResult? result)
        video,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, BooleanResult? result)
        boolean,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, DateTime? result)
        date,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        double,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        image,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, int? result)
        integer,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<TextChoice>? result)
        multiChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<MultiDouble>? result)
        multiDouble,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        scale,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TextChoice? result)
        singleChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        text,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TimeOfDay? result)
        time,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompletionTaskResult value) completion,
    required TResult Function(InstructionTaskResult value) instruction,
    required TResult Function(VideoTaskResult value) video,
    required TResult Function(BooleanQuestionResult value) boolean,
    required TResult Function(DateQuestionResult value) date,
    required TResult Function(DoubleQuestionResult value) double,
    required TResult Function(ImageQuestionResult value) image,
    required TResult Function(IntegerQuestionResult value) integer,
    required TResult Function(MultiChoiceQuestionResult value) multiChoice,
    required TResult Function(MultiDoubleQuestionResult value) multiDouble,
    required TResult Function(ScaleQuestionResult value) scale,
    required TResult Function(SingleChoiceQuestionResult value) singleChoice,
    required TResult Function(TextQuestionResult value) text,
    required TResult Function(TimeQuestionResult value) time,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskResultDetailCopyWith<TaskResultDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskResultDetailCopyWith<$Res> {
  factory $TaskResultDetailCopyWith(
          TaskResultDetail value, $Res Function(TaskResultDetail) then) =
      _$TaskResultDetailCopyWithImpl<$Res>;
  $Res call({Identifier id, DateTime startDate, DateTime endDate});

  $IdentifierCopyWith<$Res> get id;
}

/// @nodoc
class _$TaskResultDetailCopyWithImpl<$Res>
    implements $TaskResultDetailCopyWith<$Res> {
  _$TaskResultDetailCopyWithImpl(this._value, this._then);

  final TaskResultDetail _value;
  // ignore: unused_field
  final $Res Function(TaskResultDetail) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $IdentifierCopyWith<$Res> get id {
    return $IdentifierCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
    });
  }
}

/// @nodoc
abstract class _$$CompletionTaskResultCopyWith<$Res>
    implements $TaskResultDetailCopyWith<$Res> {
  factory _$$CompletionTaskResultCopyWith(_$CompletionTaskResult value,
          $Res Function(_$CompletionTaskResult) then) =
      __$$CompletionTaskResultCopyWithImpl<$Res>;
  @override
  $Res call({Identifier id, DateTime startDate, DateTime endDate});

  @override
  $IdentifierCopyWith<$Res> get id;
}

/// @nodoc
class __$$CompletionTaskResultCopyWithImpl<$Res>
    extends _$TaskResultDetailCopyWithImpl<$Res>
    implements _$$CompletionTaskResultCopyWith<$Res> {
  __$$CompletionTaskResultCopyWithImpl(_$CompletionTaskResult _value,
      $Res Function(_$CompletionTaskResult) _then)
      : super(_value, (v) => _then(v as _$CompletionTaskResult));

  @override
  _$CompletionTaskResult get _value => super._value as _$CompletionTaskResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$CompletionTaskResult(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
      startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompletionTaskResult extends CompletionTaskResult {
  const _$CompletionTaskResult(this.id, this.startDate, this.endDate,
      {final String? $type})
      : $type = $type ?? 'completion',
        super._();

  factory _$CompletionTaskResult.fromJson(Map<String, dynamic> json) =>
      _$$CompletionTaskResultFromJson(json);

  @override
  final Identifier id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TaskResultDetail.completion(id: $id, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletionTaskResult &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate));

  @JsonKey(ignore: true)
  @override
  _$$CompletionTaskResultCopyWith<_$CompletionTaskResult> get copyWith =>
      __$$CompletionTaskResultCopyWithImpl<_$CompletionTaskResult>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        completion,
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        instruction,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, VideoResult? result)
        video,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, BooleanResult? result)
        boolean,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, DateTime? result)
        date,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        double,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        image,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, int? result)
        integer,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<TextChoice>? result)
        multiChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<MultiDouble>? result)
        multiDouble,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        scale,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TextChoice? result)
        singleChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        text,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TimeOfDay? result)
        time,
  }) {
    return completion(id, startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
  }) {
    return completion?.call(id, startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
    required TResult orElse(),
  }) {
    if (completion != null) {
      return completion(id, startDate, endDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompletionTaskResult value) completion,
    required TResult Function(InstructionTaskResult value) instruction,
    required TResult Function(VideoTaskResult value) video,
    required TResult Function(BooleanQuestionResult value) boolean,
    required TResult Function(DateQuestionResult value) date,
    required TResult Function(DoubleQuestionResult value) double,
    required TResult Function(ImageQuestionResult value) image,
    required TResult Function(IntegerQuestionResult value) integer,
    required TResult Function(MultiChoiceQuestionResult value) multiChoice,
    required TResult Function(MultiDoubleQuestionResult value) multiDouble,
    required TResult Function(ScaleQuestionResult value) scale,
    required TResult Function(SingleChoiceQuestionResult value) singleChoice,
    required TResult Function(TextQuestionResult value) text,
    required TResult Function(TimeQuestionResult value) time,
  }) {
    return completion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
  }) {
    return completion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
    required TResult orElse(),
  }) {
    if (completion != null) {
      return completion(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletionTaskResultToJson(
      this,
    );
  }
}

abstract class CompletionTaskResult extends TaskResultDetail {
  const factory CompletionTaskResult(
      final Identifier id,
      final DateTime startDate,
      final DateTime endDate) = _$CompletionTaskResult;
  const CompletionTaskResult._() : super._();

  factory CompletionTaskResult.fromJson(Map<String, dynamic> json) =
      _$CompletionTaskResult.fromJson;

  @override
  Identifier get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  @JsonKey(ignore: true)
  _$$CompletionTaskResultCopyWith<_$CompletionTaskResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InstructionTaskResultCopyWith<$Res>
    implements $TaskResultDetailCopyWith<$Res> {
  factory _$$InstructionTaskResultCopyWith(_$InstructionTaskResult value,
          $Res Function(_$InstructionTaskResult) then) =
      __$$InstructionTaskResultCopyWithImpl<$Res>;
  @override
  $Res call({Identifier id, DateTime startDate, DateTime endDate});

  @override
  $IdentifierCopyWith<$Res> get id;
}

/// @nodoc
class __$$InstructionTaskResultCopyWithImpl<$Res>
    extends _$TaskResultDetailCopyWithImpl<$Res>
    implements _$$InstructionTaskResultCopyWith<$Res> {
  __$$InstructionTaskResultCopyWithImpl(_$InstructionTaskResult _value,
      $Res Function(_$InstructionTaskResult) _then)
      : super(_value, (v) => _then(v as _$InstructionTaskResult));

  @override
  _$InstructionTaskResult get _value => super._value as _$InstructionTaskResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$InstructionTaskResult(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
      startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InstructionTaskResult extends InstructionTaskResult {
  const _$InstructionTaskResult(this.id, this.startDate, this.endDate,
      {final String? $type})
      : $type = $type ?? 'instruction',
        super._();

  factory _$InstructionTaskResult.fromJson(Map<String, dynamic> json) =>
      _$$InstructionTaskResultFromJson(json);

  @override
  final Identifier id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TaskResultDetail.instruction(id: $id, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstructionTaskResult &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate));

  @JsonKey(ignore: true)
  @override
  _$$InstructionTaskResultCopyWith<_$InstructionTaskResult> get copyWith =>
      __$$InstructionTaskResultCopyWithImpl<_$InstructionTaskResult>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        completion,
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        instruction,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, VideoResult? result)
        video,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, BooleanResult? result)
        boolean,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, DateTime? result)
        date,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        double,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        image,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, int? result)
        integer,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<TextChoice>? result)
        multiChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<MultiDouble>? result)
        multiDouble,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        scale,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TextChoice? result)
        singleChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        text,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TimeOfDay? result)
        time,
  }) {
    return instruction(id, startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
  }) {
    return instruction?.call(id, startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
    required TResult orElse(),
  }) {
    if (instruction != null) {
      return instruction(id, startDate, endDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompletionTaskResult value) completion,
    required TResult Function(InstructionTaskResult value) instruction,
    required TResult Function(VideoTaskResult value) video,
    required TResult Function(BooleanQuestionResult value) boolean,
    required TResult Function(DateQuestionResult value) date,
    required TResult Function(DoubleQuestionResult value) double,
    required TResult Function(ImageQuestionResult value) image,
    required TResult Function(IntegerQuestionResult value) integer,
    required TResult Function(MultiChoiceQuestionResult value) multiChoice,
    required TResult Function(MultiDoubleQuestionResult value) multiDouble,
    required TResult Function(ScaleQuestionResult value) scale,
    required TResult Function(SingleChoiceQuestionResult value) singleChoice,
    required TResult Function(TextQuestionResult value) text,
    required TResult Function(TimeQuestionResult value) time,
  }) {
    return instruction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
  }) {
    return instruction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
    required TResult orElse(),
  }) {
    if (instruction != null) {
      return instruction(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InstructionTaskResultToJson(
      this,
    );
  }
}

abstract class InstructionTaskResult extends TaskResultDetail {
  const factory InstructionTaskResult(
      final Identifier id,
      final DateTime startDate,
      final DateTime endDate) = _$InstructionTaskResult;
  const InstructionTaskResult._() : super._();

  factory InstructionTaskResult.fromJson(Map<String, dynamic> json) =
      _$InstructionTaskResult.fromJson;

  @override
  Identifier get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  @JsonKey(ignore: true)
  _$$InstructionTaskResultCopyWith<_$InstructionTaskResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VideoTaskResultCopyWith<$Res>
    implements $TaskResultDetailCopyWith<$Res> {
  factory _$$VideoTaskResultCopyWith(
          _$VideoTaskResult value, $Res Function(_$VideoTaskResult) then) =
      __$$VideoTaskResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      VideoResult? result});

  @override
  $IdentifierCopyWith<$Res> get id;
  $VideoResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$VideoTaskResultCopyWithImpl<$Res>
    extends _$TaskResultDetailCopyWithImpl<$Res>
    implements _$$VideoTaskResultCopyWith<$Res> {
  __$$VideoTaskResultCopyWithImpl(
      _$VideoTaskResult _value, $Res Function(_$VideoTaskResult) _then)
      : super(_value, (v) => _then(v as _$VideoTaskResult));

  @override
  _$VideoTaskResult get _value => super._value as _$VideoTaskResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? result = freezed,
  }) {
    return _then(_$VideoTaskResult(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as VideoResult?,
    ));
  }

  @override
  $VideoResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $VideoResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoTaskResult extends VideoTaskResult {
  const _$VideoTaskResult(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required this.result,
      final String? $type})
      : $type = $type ?? 'video',
        super._();

  factory _$VideoTaskResult.fromJson(Map<String, dynamic> json) =>
      _$$VideoTaskResultFromJson(json);

  @override
  final Identifier id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final VideoResult? result;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TaskResultDetail.video(id: $id, startDate: $startDate, endDate: $endDate, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoTaskResult &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$VideoTaskResultCopyWith<_$VideoTaskResult> get copyWith =>
      __$$VideoTaskResultCopyWithImpl<_$VideoTaskResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        completion,
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        instruction,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, VideoResult? result)
        video,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, BooleanResult? result)
        boolean,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, DateTime? result)
        date,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        double,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        image,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, int? result)
        integer,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<TextChoice>? result)
        multiChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<MultiDouble>? result)
        multiDouble,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        scale,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TextChoice? result)
        singleChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        text,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TimeOfDay? result)
        time,
  }) {
    return video(id, startDate, endDate, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
  }) {
    return video?.call(id, startDate, endDate, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(id, startDate, endDate, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompletionTaskResult value) completion,
    required TResult Function(InstructionTaskResult value) instruction,
    required TResult Function(VideoTaskResult value) video,
    required TResult Function(BooleanQuestionResult value) boolean,
    required TResult Function(DateQuestionResult value) date,
    required TResult Function(DoubleQuestionResult value) double,
    required TResult Function(ImageQuestionResult value) image,
    required TResult Function(IntegerQuestionResult value) integer,
    required TResult Function(MultiChoiceQuestionResult value) multiChoice,
    required TResult Function(MultiDoubleQuestionResult value) multiDouble,
    required TResult Function(ScaleQuestionResult value) scale,
    required TResult Function(SingleChoiceQuestionResult value) singleChoice,
    required TResult Function(TextQuestionResult value) text,
    required TResult Function(TimeQuestionResult value) time,
  }) {
    return video(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
  }) {
    return video?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoTaskResultToJson(
      this,
    );
  }
}

abstract class VideoTaskResult extends TaskResultDetail {
  const factory VideoTaskResult(
      {required final Identifier id,
      required final DateTime startDate,
      required final DateTime endDate,
      required final VideoResult? result}) = _$VideoTaskResult;
  const VideoTaskResult._() : super._();

  factory VideoTaskResult.fromJson(Map<String, dynamic> json) =
      _$VideoTaskResult.fromJson;

  @override
  Identifier get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  VideoResult? get result;
  @override
  @JsonKey(ignore: true)
  _$$VideoTaskResultCopyWith<_$VideoTaskResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BooleanQuestionResultCopyWith<$Res>
    implements $TaskResultDetailCopyWith<$Res> {
  factory _$$BooleanQuestionResultCopyWith(_$BooleanQuestionResult value,
          $Res Function(_$BooleanQuestionResult) then) =
      __$$BooleanQuestionResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      String valueIdentifier,
      BooleanResult? result});

  @override
  $IdentifierCopyWith<$Res> get id;
}

/// @nodoc
class __$$BooleanQuestionResultCopyWithImpl<$Res>
    extends _$TaskResultDetailCopyWithImpl<$Res>
    implements _$$BooleanQuestionResultCopyWith<$Res> {
  __$$BooleanQuestionResultCopyWithImpl(_$BooleanQuestionResult _value,
      $Res Function(_$BooleanQuestionResult) _then)
      : super(_value, (v) => _then(v as _$BooleanQuestionResult));

  @override
  _$BooleanQuestionResult get _value => super._value as _$BooleanQuestionResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? valueIdentifier = freezed,
    Object? result = freezed,
  }) {
    return _then(_$BooleanQuestionResult(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      valueIdentifier: valueIdentifier == freezed
          ? _value.valueIdentifier
          : valueIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as BooleanResult?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BooleanQuestionResult extends BooleanQuestionResult {
  const _$BooleanQuestionResult(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required this.valueIdentifier,
      required this.result,
      final String? $type})
      : $type = $type ?? 'boolean',
        super._();

  factory _$BooleanQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$$BooleanQuestionResultFromJson(json);

  @override
  final Identifier id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String valueIdentifier;
  @override
  final BooleanResult? result;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TaskResultDetail.boolean(id: $id, startDate: $startDate, endDate: $endDate, valueIdentifier: $valueIdentifier, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooleanQuestionResult &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality()
                .equals(other.valueIdentifier, valueIdentifier) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(valueIdentifier),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$BooleanQuestionResultCopyWith<_$BooleanQuestionResult> get copyWith =>
      __$$BooleanQuestionResultCopyWithImpl<_$BooleanQuestionResult>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        completion,
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        instruction,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, VideoResult? result)
        video,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, BooleanResult? result)
        boolean,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, DateTime? result)
        date,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        double,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        image,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, int? result)
        integer,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<TextChoice>? result)
        multiChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<MultiDouble>? result)
        multiDouble,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        scale,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TextChoice? result)
        singleChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        text,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TimeOfDay? result)
        time,
  }) {
    return boolean(id, startDate, endDate, valueIdentifier, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
  }) {
    return boolean?.call(id, startDate, endDate, valueIdentifier, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
    required TResult orElse(),
  }) {
    if (boolean != null) {
      return boolean(id, startDate, endDate, valueIdentifier, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompletionTaskResult value) completion,
    required TResult Function(InstructionTaskResult value) instruction,
    required TResult Function(VideoTaskResult value) video,
    required TResult Function(BooleanQuestionResult value) boolean,
    required TResult Function(DateQuestionResult value) date,
    required TResult Function(DoubleQuestionResult value) double,
    required TResult Function(ImageQuestionResult value) image,
    required TResult Function(IntegerQuestionResult value) integer,
    required TResult Function(MultiChoiceQuestionResult value) multiChoice,
    required TResult Function(MultiDoubleQuestionResult value) multiDouble,
    required TResult Function(ScaleQuestionResult value) scale,
    required TResult Function(SingleChoiceQuestionResult value) singleChoice,
    required TResult Function(TextQuestionResult value) text,
    required TResult Function(TimeQuestionResult value) time,
  }) {
    return boolean(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
  }) {
    return boolean?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
    required TResult orElse(),
  }) {
    if (boolean != null) {
      return boolean(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BooleanQuestionResultToJson(
      this,
    );
  }
}

abstract class BooleanQuestionResult extends TaskResultDetail {
  const factory BooleanQuestionResult(
      {required final Identifier id,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String valueIdentifier,
      required final BooleanResult? result}) = _$BooleanQuestionResult;
  const BooleanQuestionResult._() : super._();

  factory BooleanQuestionResult.fromJson(Map<String, dynamic> json) =
      _$BooleanQuestionResult.fromJson;

  @override
  Identifier get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  String get valueIdentifier;
  BooleanResult? get result;
  @override
  @JsonKey(ignore: true)
  _$$BooleanQuestionResultCopyWith<_$BooleanQuestionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateQuestionResultCopyWith<$Res>
    implements $TaskResultDetailCopyWith<$Res> {
  factory _$$DateQuestionResultCopyWith(_$DateQuestionResult value,
          $Res Function(_$DateQuestionResult) then) =
      __$$DateQuestionResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      String valueIdentifier,
      DateTime? result});

  @override
  $IdentifierCopyWith<$Res> get id;
}

/// @nodoc
class __$$DateQuestionResultCopyWithImpl<$Res>
    extends _$TaskResultDetailCopyWithImpl<$Res>
    implements _$$DateQuestionResultCopyWith<$Res> {
  __$$DateQuestionResultCopyWithImpl(
      _$DateQuestionResult _value, $Res Function(_$DateQuestionResult) _then)
      : super(_value, (v) => _then(v as _$DateQuestionResult));

  @override
  _$DateQuestionResult get _value => super._value as _$DateQuestionResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? valueIdentifier = freezed,
    Object? result = freezed,
  }) {
    return _then(_$DateQuestionResult(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      valueIdentifier: valueIdentifier == freezed
          ? _value.valueIdentifier
          : valueIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DateQuestionResult extends DateQuestionResult {
  const _$DateQuestionResult(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required this.valueIdentifier,
      required this.result,
      final String? $type})
      : $type = $type ?? 'date',
        super._();

  factory _$DateQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$$DateQuestionResultFromJson(json);

  @override
  final Identifier id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String valueIdentifier;
  @override
  final DateTime? result;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TaskResultDetail.date(id: $id, startDate: $startDate, endDate: $endDate, valueIdentifier: $valueIdentifier, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateQuestionResult &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality()
                .equals(other.valueIdentifier, valueIdentifier) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(valueIdentifier),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$DateQuestionResultCopyWith<_$DateQuestionResult> get copyWith =>
      __$$DateQuestionResultCopyWithImpl<_$DateQuestionResult>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        completion,
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        instruction,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, VideoResult? result)
        video,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, BooleanResult? result)
        boolean,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, DateTime? result)
        date,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        double,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        image,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, int? result)
        integer,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<TextChoice>? result)
        multiChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<MultiDouble>? result)
        multiDouble,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        scale,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TextChoice? result)
        singleChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        text,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TimeOfDay? result)
        time,
  }) {
    return date(id, startDate, endDate, valueIdentifier, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
  }) {
    return date?.call(id, startDate, endDate, valueIdentifier, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(id, startDate, endDate, valueIdentifier, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompletionTaskResult value) completion,
    required TResult Function(InstructionTaskResult value) instruction,
    required TResult Function(VideoTaskResult value) video,
    required TResult Function(BooleanQuestionResult value) boolean,
    required TResult Function(DateQuestionResult value) date,
    required TResult Function(DoubleQuestionResult value) double,
    required TResult Function(ImageQuestionResult value) image,
    required TResult Function(IntegerQuestionResult value) integer,
    required TResult Function(MultiChoiceQuestionResult value) multiChoice,
    required TResult Function(MultiDoubleQuestionResult value) multiDouble,
    required TResult Function(ScaleQuestionResult value) scale,
    required TResult Function(SingleChoiceQuestionResult value) singleChoice,
    required TResult Function(TextQuestionResult value) text,
    required TResult Function(TimeQuestionResult value) time,
  }) {
    return date(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
  }) {
    return date?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DateQuestionResultToJson(
      this,
    );
  }
}

abstract class DateQuestionResult extends TaskResultDetail {
  const factory DateQuestionResult(
      {required final Identifier id,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String valueIdentifier,
      required final DateTime? result}) = _$DateQuestionResult;
  const DateQuestionResult._() : super._();

  factory DateQuestionResult.fromJson(Map<String, dynamic> json) =
      _$DateQuestionResult.fromJson;

  @override
  Identifier get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  String get valueIdentifier;
  DateTime? get result;
  @override
  @JsonKey(ignore: true)
  _$$DateQuestionResultCopyWith<_$DateQuestionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoubleQuestionResultCopyWith<$Res>
    implements $TaskResultDetailCopyWith<$Res> {
  factory _$$DoubleQuestionResultCopyWith(_$DoubleQuestionResult value,
          $Res Function(_$DoubleQuestionResult) then) =
      __$$DoubleQuestionResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      String valueIdentifier,
      double? result});

  @override
  $IdentifierCopyWith<$Res> get id;
}

/// @nodoc
class __$$DoubleQuestionResultCopyWithImpl<$Res>
    extends _$TaskResultDetailCopyWithImpl<$Res>
    implements _$$DoubleQuestionResultCopyWith<$Res> {
  __$$DoubleQuestionResultCopyWithImpl(_$DoubleQuestionResult _value,
      $Res Function(_$DoubleQuestionResult) _then)
      : super(_value, (v) => _then(v as _$DoubleQuestionResult));

  @override
  _$DoubleQuestionResult get _value => super._value as _$DoubleQuestionResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? valueIdentifier = freezed,
    Object? result = freezed,
  }) {
    return _then(_$DoubleQuestionResult(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      valueIdentifier: valueIdentifier == freezed
          ? _value.valueIdentifier
          : valueIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoubleQuestionResult extends DoubleQuestionResult {
  const _$DoubleQuestionResult(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required this.valueIdentifier,
      required this.result,
      final String? $type})
      : $type = $type ?? 'double',
        super._();

  factory _$DoubleQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$$DoubleQuestionResultFromJson(json);

  @override
  final Identifier id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String valueIdentifier;
  @override
  final double? result;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TaskResultDetail.double(id: $id, startDate: $startDate, endDate: $endDate, valueIdentifier: $valueIdentifier, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoubleQuestionResult &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality()
                .equals(other.valueIdentifier, valueIdentifier) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(valueIdentifier),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$DoubleQuestionResultCopyWith<_$DoubleQuestionResult> get copyWith =>
      __$$DoubleQuestionResultCopyWithImpl<_$DoubleQuestionResult>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        completion,
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        instruction,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, VideoResult? result)
        video,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, BooleanResult? result)
        boolean,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, DateTime? result)
        date,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        double,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        image,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, int? result)
        integer,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<TextChoice>? result)
        multiChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<MultiDouble>? result)
        multiDouble,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        scale,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TextChoice? result)
        singleChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        text,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TimeOfDay? result)
        time,
  }) {
    return double(id, startDate, endDate, valueIdentifier, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
  }) {
    return double?.call(id, startDate, endDate, valueIdentifier, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
    required TResult orElse(),
  }) {
    if (double != null) {
      return double(id, startDate, endDate, valueIdentifier, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompletionTaskResult value) completion,
    required TResult Function(InstructionTaskResult value) instruction,
    required TResult Function(VideoTaskResult value) video,
    required TResult Function(BooleanQuestionResult value) boolean,
    required TResult Function(DateQuestionResult value) date,
    required TResult Function(DoubleQuestionResult value) double,
    required TResult Function(ImageQuestionResult value) image,
    required TResult Function(IntegerQuestionResult value) integer,
    required TResult Function(MultiChoiceQuestionResult value) multiChoice,
    required TResult Function(MultiDoubleQuestionResult value) multiDouble,
    required TResult Function(ScaleQuestionResult value) scale,
    required TResult Function(SingleChoiceQuestionResult value) singleChoice,
    required TResult Function(TextQuestionResult value) text,
    required TResult Function(TimeQuestionResult value) time,
  }) {
    return double(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
  }) {
    return double?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
    required TResult orElse(),
  }) {
    if (double != null) {
      return double(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DoubleQuestionResultToJson(
      this,
    );
  }
}

abstract class DoubleQuestionResult extends TaskResultDetail {
  const factory DoubleQuestionResult(
      {required final Identifier id,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String valueIdentifier,
      required final double? result}) = _$DoubleQuestionResult;
  const DoubleQuestionResult._() : super._();

  factory DoubleQuestionResult.fromJson(Map<String, dynamic> json) =
      _$DoubleQuestionResult.fromJson;

  @override
  Identifier get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  String get valueIdentifier;
  double? get result;
  @override
  @JsonKey(ignore: true)
  _$$DoubleQuestionResultCopyWith<_$DoubleQuestionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageQuestionResultCopyWith<$Res>
    implements $TaskResultDetailCopyWith<$Res> {
  factory _$$ImageQuestionResultCopyWith(_$ImageQuestionResult value,
          $Res Function(_$ImageQuestionResult) then) =
      __$$ImageQuestionResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      String valueIdentifier,
      String? result});

  @override
  $IdentifierCopyWith<$Res> get id;
}

/// @nodoc
class __$$ImageQuestionResultCopyWithImpl<$Res>
    extends _$TaskResultDetailCopyWithImpl<$Res>
    implements _$$ImageQuestionResultCopyWith<$Res> {
  __$$ImageQuestionResultCopyWithImpl(
      _$ImageQuestionResult _value, $Res Function(_$ImageQuestionResult) _then)
      : super(_value, (v) => _then(v as _$ImageQuestionResult));

  @override
  _$ImageQuestionResult get _value => super._value as _$ImageQuestionResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? valueIdentifier = freezed,
    Object? result = freezed,
  }) {
    return _then(_$ImageQuestionResult(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      valueIdentifier: valueIdentifier == freezed
          ? _value.valueIdentifier
          : valueIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageQuestionResult extends ImageQuestionResult {
  const _$ImageQuestionResult(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required this.valueIdentifier,
      required this.result,
      final String? $type})
      : $type = $type ?? 'image',
        super._();

  factory _$ImageQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$$ImageQuestionResultFromJson(json);

  @override
  final Identifier id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String valueIdentifier;
  @override
  final String? result;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TaskResultDetail.image(id: $id, startDate: $startDate, endDate: $endDate, valueIdentifier: $valueIdentifier, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageQuestionResult &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality()
                .equals(other.valueIdentifier, valueIdentifier) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(valueIdentifier),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$ImageQuestionResultCopyWith<_$ImageQuestionResult> get copyWith =>
      __$$ImageQuestionResultCopyWithImpl<_$ImageQuestionResult>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        completion,
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        instruction,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, VideoResult? result)
        video,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, BooleanResult? result)
        boolean,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, DateTime? result)
        date,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        double,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        image,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, int? result)
        integer,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<TextChoice>? result)
        multiChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<MultiDouble>? result)
        multiDouble,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        scale,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TextChoice? result)
        singleChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        text,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TimeOfDay? result)
        time,
  }) {
    return image(id, startDate, endDate, valueIdentifier, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
  }) {
    return image?.call(id, startDate, endDate, valueIdentifier, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(id, startDate, endDate, valueIdentifier, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompletionTaskResult value) completion,
    required TResult Function(InstructionTaskResult value) instruction,
    required TResult Function(VideoTaskResult value) video,
    required TResult Function(BooleanQuestionResult value) boolean,
    required TResult Function(DateQuestionResult value) date,
    required TResult Function(DoubleQuestionResult value) double,
    required TResult Function(ImageQuestionResult value) image,
    required TResult Function(IntegerQuestionResult value) integer,
    required TResult Function(MultiChoiceQuestionResult value) multiChoice,
    required TResult Function(MultiDoubleQuestionResult value) multiDouble,
    required TResult Function(ScaleQuestionResult value) scale,
    required TResult Function(SingleChoiceQuestionResult value) singleChoice,
    required TResult Function(TextQuestionResult value) text,
    required TResult Function(TimeQuestionResult value) time,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageQuestionResultToJson(
      this,
    );
  }
}

abstract class ImageQuestionResult extends TaskResultDetail {
  const factory ImageQuestionResult(
      {required final Identifier id,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String valueIdentifier,
      required final String? result}) = _$ImageQuestionResult;
  const ImageQuestionResult._() : super._();

  factory ImageQuestionResult.fromJson(Map<String, dynamic> json) =
      _$ImageQuestionResult.fromJson;

  @override
  Identifier get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  String get valueIdentifier;
  String? get result;
  @override
  @JsonKey(ignore: true)
  _$$ImageQuestionResultCopyWith<_$ImageQuestionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IntegerQuestionResultCopyWith<$Res>
    implements $TaskResultDetailCopyWith<$Res> {
  factory _$$IntegerQuestionResultCopyWith(_$IntegerQuestionResult value,
          $Res Function(_$IntegerQuestionResult) then) =
      __$$IntegerQuestionResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      String valueIdentifier,
      int? result});

  @override
  $IdentifierCopyWith<$Res> get id;
}

/// @nodoc
class __$$IntegerQuestionResultCopyWithImpl<$Res>
    extends _$TaskResultDetailCopyWithImpl<$Res>
    implements _$$IntegerQuestionResultCopyWith<$Res> {
  __$$IntegerQuestionResultCopyWithImpl(_$IntegerQuestionResult _value,
      $Res Function(_$IntegerQuestionResult) _then)
      : super(_value, (v) => _then(v as _$IntegerQuestionResult));

  @override
  _$IntegerQuestionResult get _value => super._value as _$IntegerQuestionResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? valueIdentifier = freezed,
    Object? result = freezed,
  }) {
    return _then(_$IntegerQuestionResult(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      valueIdentifier: valueIdentifier == freezed
          ? _value.valueIdentifier
          : valueIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IntegerQuestionResult extends IntegerQuestionResult {
  const _$IntegerQuestionResult(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required this.valueIdentifier,
      required this.result,
      final String? $type})
      : $type = $type ?? 'integer',
        super._();

  factory _$IntegerQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$$IntegerQuestionResultFromJson(json);

  @override
  final Identifier id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String valueIdentifier;
  @override
  final int? result;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TaskResultDetail.integer(id: $id, startDate: $startDate, endDate: $endDate, valueIdentifier: $valueIdentifier, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntegerQuestionResult &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality()
                .equals(other.valueIdentifier, valueIdentifier) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(valueIdentifier),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$IntegerQuestionResultCopyWith<_$IntegerQuestionResult> get copyWith =>
      __$$IntegerQuestionResultCopyWithImpl<_$IntegerQuestionResult>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        completion,
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        instruction,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, VideoResult? result)
        video,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, BooleanResult? result)
        boolean,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, DateTime? result)
        date,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        double,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        image,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, int? result)
        integer,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<TextChoice>? result)
        multiChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<MultiDouble>? result)
        multiDouble,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        scale,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TextChoice? result)
        singleChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        text,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TimeOfDay? result)
        time,
  }) {
    return integer(id, startDate, endDate, valueIdentifier, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
  }) {
    return integer?.call(id, startDate, endDate, valueIdentifier, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
    required TResult orElse(),
  }) {
    if (integer != null) {
      return integer(id, startDate, endDate, valueIdentifier, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompletionTaskResult value) completion,
    required TResult Function(InstructionTaskResult value) instruction,
    required TResult Function(VideoTaskResult value) video,
    required TResult Function(BooleanQuestionResult value) boolean,
    required TResult Function(DateQuestionResult value) date,
    required TResult Function(DoubleQuestionResult value) double,
    required TResult Function(ImageQuestionResult value) image,
    required TResult Function(IntegerQuestionResult value) integer,
    required TResult Function(MultiChoiceQuestionResult value) multiChoice,
    required TResult Function(MultiDoubleQuestionResult value) multiDouble,
    required TResult Function(ScaleQuestionResult value) scale,
    required TResult Function(SingleChoiceQuestionResult value) singleChoice,
    required TResult Function(TextQuestionResult value) text,
    required TResult Function(TimeQuestionResult value) time,
  }) {
    return integer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
  }) {
    return integer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
    required TResult orElse(),
  }) {
    if (integer != null) {
      return integer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$IntegerQuestionResultToJson(
      this,
    );
  }
}

abstract class IntegerQuestionResult extends TaskResultDetail {
  const factory IntegerQuestionResult(
      {required final Identifier id,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String valueIdentifier,
      required final int? result}) = _$IntegerQuestionResult;
  const IntegerQuestionResult._() : super._();

  factory IntegerQuestionResult.fromJson(Map<String, dynamic> json) =
      _$IntegerQuestionResult.fromJson;

  @override
  Identifier get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  String get valueIdentifier;
  int? get result;
  @override
  @JsonKey(ignore: true)
  _$$IntegerQuestionResultCopyWith<_$IntegerQuestionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultiChoiceQuestionResultCopyWith<$Res>
    implements $TaskResultDetailCopyWith<$Res> {
  factory _$$MultiChoiceQuestionResultCopyWith(
          _$MultiChoiceQuestionResult value,
          $Res Function(_$MultiChoiceQuestionResult) then) =
      __$$MultiChoiceQuestionResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      String valueIdentifier,
      List<TextChoice>? result});

  @override
  $IdentifierCopyWith<$Res> get id;
}

/// @nodoc
class __$$MultiChoiceQuestionResultCopyWithImpl<$Res>
    extends _$TaskResultDetailCopyWithImpl<$Res>
    implements _$$MultiChoiceQuestionResultCopyWith<$Res> {
  __$$MultiChoiceQuestionResultCopyWithImpl(_$MultiChoiceQuestionResult _value,
      $Res Function(_$MultiChoiceQuestionResult) _then)
      : super(_value, (v) => _then(v as _$MultiChoiceQuestionResult));

  @override
  _$MultiChoiceQuestionResult get _value =>
      super._value as _$MultiChoiceQuestionResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? valueIdentifier = freezed,
    Object? result = freezed,
  }) {
    return _then(_$MultiChoiceQuestionResult(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      valueIdentifier: valueIdentifier == freezed
          ? _value.valueIdentifier
          : valueIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      result: result == freezed
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<TextChoice>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MultiChoiceQuestionResult extends MultiChoiceQuestionResult {
  const _$MultiChoiceQuestionResult(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required this.valueIdentifier,
      required final List<TextChoice>? result,
      final String? $type})
      : _result = result,
        $type = $type ?? 'multiChoice',
        super._();

  factory _$MultiChoiceQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$$MultiChoiceQuestionResultFromJson(json);

  @override
  final Identifier id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String valueIdentifier;
  final List<TextChoice>? _result;
  @override
  List<TextChoice>? get result {
    final value = _result;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TaskResultDetail.multiChoice(id: $id, startDate: $startDate, endDate: $endDate, valueIdentifier: $valueIdentifier, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiChoiceQuestionResult &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality()
                .equals(other.valueIdentifier, valueIdentifier) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(valueIdentifier),
      const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  _$$MultiChoiceQuestionResultCopyWith<_$MultiChoiceQuestionResult>
      get copyWith => __$$MultiChoiceQuestionResultCopyWithImpl<
          _$MultiChoiceQuestionResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        completion,
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        instruction,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, VideoResult? result)
        video,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, BooleanResult? result)
        boolean,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, DateTime? result)
        date,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        double,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        image,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, int? result)
        integer,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<TextChoice>? result)
        multiChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<MultiDouble>? result)
        multiDouble,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        scale,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TextChoice? result)
        singleChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        text,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TimeOfDay? result)
        time,
  }) {
    return multiChoice(id, startDate, endDate, valueIdentifier, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
  }) {
    return multiChoice?.call(id, startDate, endDate, valueIdentifier, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
    required TResult orElse(),
  }) {
    if (multiChoice != null) {
      return multiChoice(id, startDate, endDate, valueIdentifier, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompletionTaskResult value) completion,
    required TResult Function(InstructionTaskResult value) instruction,
    required TResult Function(VideoTaskResult value) video,
    required TResult Function(BooleanQuestionResult value) boolean,
    required TResult Function(DateQuestionResult value) date,
    required TResult Function(DoubleQuestionResult value) double,
    required TResult Function(ImageQuestionResult value) image,
    required TResult Function(IntegerQuestionResult value) integer,
    required TResult Function(MultiChoiceQuestionResult value) multiChoice,
    required TResult Function(MultiDoubleQuestionResult value) multiDouble,
    required TResult Function(ScaleQuestionResult value) scale,
    required TResult Function(SingleChoiceQuestionResult value) singleChoice,
    required TResult Function(TextQuestionResult value) text,
    required TResult Function(TimeQuestionResult value) time,
  }) {
    return multiChoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
  }) {
    return multiChoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
    required TResult orElse(),
  }) {
    if (multiChoice != null) {
      return multiChoice(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MultiChoiceQuestionResultToJson(
      this,
    );
  }
}

abstract class MultiChoiceQuestionResult extends TaskResultDetail {
  const factory MultiChoiceQuestionResult(
      {required final Identifier id,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String valueIdentifier,
      required final List<TextChoice>? result}) = _$MultiChoiceQuestionResult;
  const MultiChoiceQuestionResult._() : super._();

  factory MultiChoiceQuestionResult.fromJson(Map<String, dynamic> json) =
      _$MultiChoiceQuestionResult.fromJson;

  @override
  Identifier get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  String get valueIdentifier;
  List<TextChoice>? get result;
  @override
  @JsonKey(ignore: true)
  _$$MultiChoiceQuestionResultCopyWith<_$MultiChoiceQuestionResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultiDoubleQuestionResultCopyWith<$Res>
    implements $TaskResultDetailCopyWith<$Res> {
  factory _$$MultiDoubleQuestionResultCopyWith(
          _$MultiDoubleQuestionResult value,
          $Res Function(_$MultiDoubleQuestionResult) then) =
      __$$MultiDoubleQuestionResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      String valueIdentifier,
      List<MultiDouble>? result});

  @override
  $IdentifierCopyWith<$Res> get id;
}

/// @nodoc
class __$$MultiDoubleQuestionResultCopyWithImpl<$Res>
    extends _$TaskResultDetailCopyWithImpl<$Res>
    implements _$$MultiDoubleQuestionResultCopyWith<$Res> {
  __$$MultiDoubleQuestionResultCopyWithImpl(_$MultiDoubleQuestionResult _value,
      $Res Function(_$MultiDoubleQuestionResult) _then)
      : super(_value, (v) => _then(v as _$MultiDoubleQuestionResult));

  @override
  _$MultiDoubleQuestionResult get _value =>
      super._value as _$MultiDoubleQuestionResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? valueIdentifier = freezed,
    Object? result = freezed,
  }) {
    return _then(_$MultiDoubleQuestionResult(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      valueIdentifier: valueIdentifier == freezed
          ? _value.valueIdentifier
          : valueIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      result: result == freezed
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<MultiDouble>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MultiDoubleQuestionResult extends MultiDoubleQuestionResult {
  const _$MultiDoubleQuestionResult(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required this.valueIdentifier,
      required final List<MultiDouble>? result,
      final String? $type})
      : _result = result,
        $type = $type ?? 'multiDouble',
        super._();

  factory _$MultiDoubleQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$$MultiDoubleQuestionResultFromJson(json);

  @override
  final Identifier id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String valueIdentifier;
  final List<MultiDouble>? _result;
  @override
  List<MultiDouble>? get result {
    final value = _result;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TaskResultDetail.multiDouble(id: $id, startDate: $startDate, endDate: $endDate, valueIdentifier: $valueIdentifier, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiDoubleQuestionResult &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality()
                .equals(other.valueIdentifier, valueIdentifier) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(valueIdentifier),
      const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  _$$MultiDoubleQuestionResultCopyWith<_$MultiDoubleQuestionResult>
      get copyWith => __$$MultiDoubleQuestionResultCopyWithImpl<
          _$MultiDoubleQuestionResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        completion,
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        instruction,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, VideoResult? result)
        video,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, BooleanResult? result)
        boolean,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, DateTime? result)
        date,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        double,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        image,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, int? result)
        integer,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<TextChoice>? result)
        multiChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<MultiDouble>? result)
        multiDouble,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        scale,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TextChoice? result)
        singleChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        text,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TimeOfDay? result)
        time,
  }) {
    return multiDouble(id, startDate, endDate, valueIdentifier, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
  }) {
    return multiDouble?.call(id, startDate, endDate, valueIdentifier, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
    required TResult orElse(),
  }) {
    if (multiDouble != null) {
      return multiDouble(id, startDate, endDate, valueIdentifier, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompletionTaskResult value) completion,
    required TResult Function(InstructionTaskResult value) instruction,
    required TResult Function(VideoTaskResult value) video,
    required TResult Function(BooleanQuestionResult value) boolean,
    required TResult Function(DateQuestionResult value) date,
    required TResult Function(DoubleQuestionResult value) double,
    required TResult Function(ImageQuestionResult value) image,
    required TResult Function(IntegerQuestionResult value) integer,
    required TResult Function(MultiChoiceQuestionResult value) multiChoice,
    required TResult Function(MultiDoubleQuestionResult value) multiDouble,
    required TResult Function(ScaleQuestionResult value) scale,
    required TResult Function(SingleChoiceQuestionResult value) singleChoice,
    required TResult Function(TextQuestionResult value) text,
    required TResult Function(TimeQuestionResult value) time,
  }) {
    return multiDouble(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
  }) {
    return multiDouble?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
    required TResult orElse(),
  }) {
    if (multiDouble != null) {
      return multiDouble(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MultiDoubleQuestionResultToJson(
      this,
    );
  }
}

abstract class MultiDoubleQuestionResult extends TaskResultDetail {
  const factory MultiDoubleQuestionResult(
      {required final Identifier id,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String valueIdentifier,
      required final List<MultiDouble>? result}) = _$MultiDoubleQuestionResult;
  const MultiDoubleQuestionResult._() : super._();

  factory MultiDoubleQuestionResult.fromJson(Map<String, dynamic> json) =
      _$MultiDoubleQuestionResult.fromJson;

  @override
  Identifier get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  String get valueIdentifier;
  List<MultiDouble>? get result;
  @override
  @JsonKey(ignore: true)
  _$$MultiDoubleQuestionResultCopyWith<_$MultiDoubleQuestionResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScaleQuestionResultCopyWith<$Res>
    implements $TaskResultDetailCopyWith<$Res> {
  factory _$$ScaleQuestionResultCopyWith(_$ScaleQuestionResult value,
          $Res Function(_$ScaleQuestionResult) then) =
      __$$ScaleQuestionResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      String valueIdentifier,
      double? result});

  @override
  $IdentifierCopyWith<$Res> get id;
}

/// @nodoc
class __$$ScaleQuestionResultCopyWithImpl<$Res>
    extends _$TaskResultDetailCopyWithImpl<$Res>
    implements _$$ScaleQuestionResultCopyWith<$Res> {
  __$$ScaleQuestionResultCopyWithImpl(
      _$ScaleQuestionResult _value, $Res Function(_$ScaleQuestionResult) _then)
      : super(_value, (v) => _then(v as _$ScaleQuestionResult));

  @override
  _$ScaleQuestionResult get _value => super._value as _$ScaleQuestionResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? valueIdentifier = freezed,
    Object? result = freezed,
  }) {
    return _then(_$ScaleQuestionResult(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      valueIdentifier: valueIdentifier == freezed
          ? _value.valueIdentifier
          : valueIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScaleQuestionResult extends ScaleQuestionResult {
  const _$ScaleQuestionResult(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required this.valueIdentifier,
      required this.result,
      final String? $type})
      : $type = $type ?? 'scale',
        super._();

  factory _$ScaleQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$$ScaleQuestionResultFromJson(json);

  @override
  final Identifier id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String valueIdentifier;
  @override
  final double? result;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TaskResultDetail.scale(id: $id, startDate: $startDate, endDate: $endDate, valueIdentifier: $valueIdentifier, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScaleQuestionResult &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality()
                .equals(other.valueIdentifier, valueIdentifier) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(valueIdentifier),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$ScaleQuestionResultCopyWith<_$ScaleQuestionResult> get copyWith =>
      __$$ScaleQuestionResultCopyWithImpl<_$ScaleQuestionResult>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        completion,
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        instruction,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, VideoResult? result)
        video,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, BooleanResult? result)
        boolean,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, DateTime? result)
        date,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        double,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        image,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, int? result)
        integer,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<TextChoice>? result)
        multiChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<MultiDouble>? result)
        multiDouble,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        scale,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TextChoice? result)
        singleChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        text,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TimeOfDay? result)
        time,
  }) {
    return scale(id, startDate, endDate, valueIdentifier, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
  }) {
    return scale?.call(id, startDate, endDate, valueIdentifier, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
    required TResult orElse(),
  }) {
    if (scale != null) {
      return scale(id, startDate, endDate, valueIdentifier, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompletionTaskResult value) completion,
    required TResult Function(InstructionTaskResult value) instruction,
    required TResult Function(VideoTaskResult value) video,
    required TResult Function(BooleanQuestionResult value) boolean,
    required TResult Function(DateQuestionResult value) date,
    required TResult Function(DoubleQuestionResult value) double,
    required TResult Function(ImageQuestionResult value) image,
    required TResult Function(IntegerQuestionResult value) integer,
    required TResult Function(MultiChoiceQuestionResult value) multiChoice,
    required TResult Function(MultiDoubleQuestionResult value) multiDouble,
    required TResult Function(ScaleQuestionResult value) scale,
    required TResult Function(SingleChoiceQuestionResult value) singleChoice,
    required TResult Function(TextQuestionResult value) text,
    required TResult Function(TimeQuestionResult value) time,
  }) {
    return scale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
  }) {
    return scale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
    required TResult orElse(),
  }) {
    if (scale != null) {
      return scale(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ScaleQuestionResultToJson(
      this,
    );
  }
}

abstract class ScaleQuestionResult extends TaskResultDetail {
  const factory ScaleQuestionResult(
      {required final Identifier id,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String valueIdentifier,
      required final double? result}) = _$ScaleQuestionResult;
  const ScaleQuestionResult._() : super._();

  factory ScaleQuestionResult.fromJson(Map<String, dynamic> json) =
      _$ScaleQuestionResult.fromJson;

  @override
  Identifier get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  String get valueIdentifier;
  double? get result;
  @override
  @JsonKey(ignore: true)
  _$$ScaleQuestionResultCopyWith<_$ScaleQuestionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SingleChoiceQuestionResultCopyWith<$Res>
    implements $TaskResultDetailCopyWith<$Res> {
  factory _$$SingleChoiceQuestionResultCopyWith(
          _$SingleChoiceQuestionResult value,
          $Res Function(_$SingleChoiceQuestionResult) then) =
      __$$SingleChoiceQuestionResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      String valueIdentifier,
      TextChoice? result});

  @override
  $IdentifierCopyWith<$Res> get id;
  $TextChoiceCopyWith<$Res>? get result;
}

/// @nodoc
class __$$SingleChoiceQuestionResultCopyWithImpl<$Res>
    extends _$TaskResultDetailCopyWithImpl<$Res>
    implements _$$SingleChoiceQuestionResultCopyWith<$Res> {
  __$$SingleChoiceQuestionResultCopyWithImpl(
      _$SingleChoiceQuestionResult _value,
      $Res Function(_$SingleChoiceQuestionResult) _then)
      : super(_value, (v) => _then(v as _$SingleChoiceQuestionResult));

  @override
  _$SingleChoiceQuestionResult get _value =>
      super._value as _$SingleChoiceQuestionResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? valueIdentifier = freezed,
    Object? result = freezed,
  }) {
    return _then(_$SingleChoiceQuestionResult(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      valueIdentifier: valueIdentifier == freezed
          ? _value.valueIdentifier
          : valueIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as TextChoice?,
    ));
  }

  @override
  $TextChoiceCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $TextChoiceCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SingleChoiceQuestionResult extends SingleChoiceQuestionResult {
  const _$SingleChoiceQuestionResult(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required this.valueIdentifier,
      required this.result,
      final String? $type})
      : $type = $type ?? 'singleChoice',
        super._();

  factory _$SingleChoiceQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$$SingleChoiceQuestionResultFromJson(json);

  @override
  final Identifier id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String valueIdentifier;
  @override
  final TextChoice? result;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TaskResultDetail.singleChoice(id: $id, startDate: $startDate, endDate: $endDate, valueIdentifier: $valueIdentifier, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleChoiceQuestionResult &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality()
                .equals(other.valueIdentifier, valueIdentifier) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(valueIdentifier),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$SingleChoiceQuestionResultCopyWith<_$SingleChoiceQuestionResult>
      get copyWith => __$$SingleChoiceQuestionResultCopyWithImpl<
          _$SingleChoiceQuestionResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        completion,
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        instruction,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, VideoResult? result)
        video,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, BooleanResult? result)
        boolean,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, DateTime? result)
        date,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        double,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        image,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, int? result)
        integer,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<TextChoice>? result)
        multiChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<MultiDouble>? result)
        multiDouble,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        scale,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TextChoice? result)
        singleChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        text,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TimeOfDay? result)
        time,
  }) {
    return singleChoice(id, startDate, endDate, valueIdentifier, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
  }) {
    return singleChoice?.call(id, startDate, endDate, valueIdentifier, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
    required TResult orElse(),
  }) {
    if (singleChoice != null) {
      return singleChoice(id, startDate, endDate, valueIdentifier, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompletionTaskResult value) completion,
    required TResult Function(InstructionTaskResult value) instruction,
    required TResult Function(VideoTaskResult value) video,
    required TResult Function(BooleanQuestionResult value) boolean,
    required TResult Function(DateQuestionResult value) date,
    required TResult Function(DoubleQuestionResult value) double,
    required TResult Function(ImageQuestionResult value) image,
    required TResult Function(IntegerQuestionResult value) integer,
    required TResult Function(MultiChoiceQuestionResult value) multiChoice,
    required TResult Function(MultiDoubleQuestionResult value) multiDouble,
    required TResult Function(ScaleQuestionResult value) scale,
    required TResult Function(SingleChoiceQuestionResult value) singleChoice,
    required TResult Function(TextQuestionResult value) text,
    required TResult Function(TimeQuestionResult value) time,
  }) {
    return singleChoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
  }) {
    return singleChoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
    required TResult orElse(),
  }) {
    if (singleChoice != null) {
      return singleChoice(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SingleChoiceQuestionResultToJson(
      this,
    );
  }
}

abstract class SingleChoiceQuestionResult extends TaskResultDetail {
  const factory SingleChoiceQuestionResult(
      {required final Identifier id,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String valueIdentifier,
      required final TextChoice? result}) = _$SingleChoiceQuestionResult;
  const SingleChoiceQuestionResult._() : super._();

  factory SingleChoiceQuestionResult.fromJson(Map<String, dynamic> json) =
      _$SingleChoiceQuestionResult.fromJson;

  @override
  Identifier get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  String get valueIdentifier;
  TextChoice? get result;
  @override
  @JsonKey(ignore: true)
  _$$SingleChoiceQuestionResultCopyWith<_$SingleChoiceQuestionResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TextQuestionResultCopyWith<$Res>
    implements $TaskResultDetailCopyWith<$Res> {
  factory _$$TextQuestionResultCopyWith(_$TextQuestionResult value,
          $Res Function(_$TextQuestionResult) then) =
      __$$TextQuestionResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      String valueIdentifier,
      String? result});

  @override
  $IdentifierCopyWith<$Res> get id;
}

/// @nodoc
class __$$TextQuestionResultCopyWithImpl<$Res>
    extends _$TaskResultDetailCopyWithImpl<$Res>
    implements _$$TextQuestionResultCopyWith<$Res> {
  __$$TextQuestionResultCopyWithImpl(
      _$TextQuestionResult _value, $Res Function(_$TextQuestionResult) _then)
      : super(_value, (v) => _then(v as _$TextQuestionResult));

  @override
  _$TextQuestionResult get _value => super._value as _$TextQuestionResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? valueIdentifier = freezed,
    Object? result = freezed,
  }) {
    return _then(_$TextQuestionResult(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      valueIdentifier: valueIdentifier == freezed
          ? _value.valueIdentifier
          : valueIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextQuestionResult extends TextQuestionResult {
  const _$TextQuestionResult(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required this.valueIdentifier,
      required this.result,
      final String? $type})
      : $type = $type ?? 'text',
        super._();

  factory _$TextQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$$TextQuestionResultFromJson(json);

  @override
  final Identifier id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String valueIdentifier;
  @override
  final String? result;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TaskResultDetail.text(id: $id, startDate: $startDate, endDate: $endDate, valueIdentifier: $valueIdentifier, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextQuestionResult &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality()
                .equals(other.valueIdentifier, valueIdentifier) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(valueIdentifier),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$TextQuestionResultCopyWith<_$TextQuestionResult> get copyWith =>
      __$$TextQuestionResultCopyWithImpl<_$TextQuestionResult>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        completion,
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        instruction,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, VideoResult? result)
        video,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, BooleanResult? result)
        boolean,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, DateTime? result)
        date,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        double,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        image,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, int? result)
        integer,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<TextChoice>? result)
        multiChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<MultiDouble>? result)
        multiDouble,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        scale,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TextChoice? result)
        singleChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        text,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TimeOfDay? result)
        time,
  }) {
    return text(id, startDate, endDate, valueIdentifier, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
  }) {
    return text?.call(id, startDate, endDate, valueIdentifier, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(id, startDate, endDate, valueIdentifier, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompletionTaskResult value) completion,
    required TResult Function(InstructionTaskResult value) instruction,
    required TResult Function(VideoTaskResult value) video,
    required TResult Function(BooleanQuestionResult value) boolean,
    required TResult Function(DateQuestionResult value) date,
    required TResult Function(DoubleQuestionResult value) double,
    required TResult Function(ImageQuestionResult value) image,
    required TResult Function(IntegerQuestionResult value) integer,
    required TResult Function(MultiChoiceQuestionResult value) multiChoice,
    required TResult Function(MultiDoubleQuestionResult value) multiDouble,
    required TResult Function(ScaleQuestionResult value) scale,
    required TResult Function(SingleChoiceQuestionResult value) singleChoice,
    required TResult Function(TextQuestionResult value) text,
    required TResult Function(TimeQuestionResult value) time,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TextQuestionResultToJson(
      this,
    );
  }
}

abstract class TextQuestionResult extends TaskResultDetail {
  const factory TextQuestionResult(
      {required final Identifier id,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String valueIdentifier,
      required final String? result}) = _$TextQuestionResult;
  const TextQuestionResult._() : super._();

  factory TextQuestionResult.fromJson(Map<String, dynamic> json) =
      _$TextQuestionResult.fromJson;

  @override
  Identifier get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  String get valueIdentifier;
  String? get result;
  @override
  @JsonKey(ignore: true)
  _$$TextQuestionResultCopyWith<_$TextQuestionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimeQuestionResultCopyWith<$Res>
    implements $TaskResultDetailCopyWith<$Res> {
  factory _$$TimeQuestionResultCopyWith(_$TimeQuestionResult value,
          $Res Function(_$TimeQuestionResult) then) =
      __$$TimeQuestionResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      String valueIdentifier,
      TimeOfDay? result});

  @override
  $IdentifierCopyWith<$Res> get id;
}

/// @nodoc
class __$$TimeQuestionResultCopyWithImpl<$Res>
    extends _$TaskResultDetailCopyWithImpl<$Res>
    implements _$$TimeQuestionResultCopyWith<$Res> {
  __$$TimeQuestionResultCopyWithImpl(
      _$TimeQuestionResult _value, $Res Function(_$TimeQuestionResult) _then)
      : super(_value, (v) => _then(v as _$TimeQuestionResult));

  @override
  _$TimeQuestionResult get _value => super._value as _$TimeQuestionResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? valueIdentifier = freezed,
    Object? result = freezed,
  }) {
    return _then(_$TimeQuestionResult(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      valueIdentifier: valueIdentifier == freezed
          ? _value.valueIdentifier
          : valueIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@TimeOfDayConverter()
class _$TimeQuestionResult extends TimeQuestionResult {
  const _$TimeQuestionResult(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required this.valueIdentifier,
      required this.result,
      final String? $type})
      : $type = $type ?? 'time',
        super._();

  factory _$TimeQuestionResult.fromJson(Map<String, dynamic> json) =>
      _$$TimeQuestionResultFromJson(json);

  @override
  final Identifier id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String valueIdentifier;
  @override
  final TimeOfDay? result;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TaskResultDetail.time(id: $id, startDate: $startDate, endDate: $endDate, valueIdentifier: $valueIdentifier, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeQuestionResult &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality()
                .equals(other.valueIdentifier, valueIdentifier) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(valueIdentifier),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$TimeQuestionResultCopyWith<_$TimeQuestionResult> get copyWith =>
      __$$TimeQuestionResultCopyWithImpl<_$TimeQuestionResult>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        completion,
    required TResult Function(
            Identifier id, DateTime startDate, DateTime endDate)
        instruction,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, VideoResult? result)
        video,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, BooleanResult? result)
        boolean,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, DateTime? result)
        date,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        double,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        image,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, int? result)
        integer,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<TextChoice>? result)
        multiChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, List<MultiDouble>? result)
        multiDouble,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, double? result)
        scale,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TextChoice? result)
        singleChoice,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, String? result)
        text,
    required TResult Function(Identifier id, DateTime startDate,
            DateTime endDate, String valueIdentifier, TimeOfDay? result)
        time,
  }) {
    return time(id, startDate, endDate, valueIdentifier, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
  }) {
    return time?.call(id, startDate, endDate, valueIdentifier, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        completion,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate)?
        instruction,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            VideoResult? result)?
        video,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, BooleanResult? result)?
        boolean,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, DateTime? result)?
        date,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        double,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        image,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, int? result)?
        integer,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<TextChoice>? result)?
        multiChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, List<MultiDouble>? result)?
        multiDouble,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, double? result)?
        scale,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TextChoice? result)?
        singleChoice,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, String? result)?
        text,
    TResult Function(Identifier id, DateTime startDate, DateTime endDate,
            String valueIdentifier, TimeOfDay? result)?
        time,
    required TResult orElse(),
  }) {
    if (time != null) {
      return time(id, startDate, endDate, valueIdentifier, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompletionTaskResult value) completion,
    required TResult Function(InstructionTaskResult value) instruction,
    required TResult Function(VideoTaskResult value) video,
    required TResult Function(BooleanQuestionResult value) boolean,
    required TResult Function(DateQuestionResult value) date,
    required TResult Function(DoubleQuestionResult value) double,
    required TResult Function(ImageQuestionResult value) image,
    required TResult Function(IntegerQuestionResult value) integer,
    required TResult Function(MultiChoiceQuestionResult value) multiChoice,
    required TResult Function(MultiDoubleQuestionResult value) multiDouble,
    required TResult Function(ScaleQuestionResult value) scale,
    required TResult Function(SingleChoiceQuestionResult value) singleChoice,
    required TResult Function(TextQuestionResult value) text,
    required TResult Function(TimeQuestionResult value) time,
  }) {
    return time(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
  }) {
    return time?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompletionTaskResult value)? completion,
    TResult Function(InstructionTaskResult value)? instruction,
    TResult Function(VideoTaskResult value)? video,
    TResult Function(BooleanQuestionResult value)? boolean,
    TResult Function(DateQuestionResult value)? date,
    TResult Function(DoubleQuestionResult value)? double,
    TResult Function(ImageQuestionResult value)? image,
    TResult Function(IntegerQuestionResult value)? integer,
    TResult Function(MultiChoiceQuestionResult value)? multiChoice,
    TResult Function(MultiDoubleQuestionResult value)? multiDouble,
    TResult Function(ScaleQuestionResult value)? scale,
    TResult Function(SingleChoiceQuestionResult value)? singleChoice,
    TResult Function(TextQuestionResult value)? text,
    TResult Function(TimeQuestionResult value)? time,
    required TResult orElse(),
  }) {
    if (time != null) {
      return time(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeQuestionResultToJson(
      this,
    );
  }
}

abstract class TimeQuestionResult extends TaskResultDetail {
  const factory TimeQuestionResult(
      {required final Identifier id,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String valueIdentifier,
      required final TimeOfDay? result}) = _$TimeQuestionResult;
  const TimeQuestionResult._() : super._();

  factory TimeQuestionResult.fromJson(Map<String, dynamic> json) =
      _$TimeQuestionResult.fromJson;

  @override
  Identifier get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  String get valueIdentifier;
  TimeOfDay? get result;
  @override
  @JsonKey(ignore: true)
  _$$TimeQuestionResultCopyWith<_$TimeQuestionResult> get copyWith =>
      throw _privateConstructorUsedError;
}
