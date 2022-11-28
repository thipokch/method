// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_result_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompletionTaskResult _$$CompletionTaskResultFromJson(
        Map<String, dynamic> json) =>
    _$CompletionTaskResult(
      Identifier.fromJson(json['id'] as Map<String, dynamic>),
      DateTime.parse(json['startDate'] as String),
      DateTime.parse(json['endDate'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$CompletionTaskResultToJson(
        _$CompletionTaskResult instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'type': instance.$type,
    };

_$InstructionTaskResult _$$InstructionTaskResultFromJson(
        Map<String, dynamic> json) =>
    _$InstructionTaskResult(
      Identifier.fromJson(json['id'] as Map<String, dynamic>),
      DateTime.parse(json['startDate'] as String),
      DateTime.parse(json['endDate'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$InstructionTaskResultToJson(
        _$InstructionTaskResult instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'type': instance.$type,
    };

_$VideoTaskResult _$$VideoTaskResultFromJson(Map<String, dynamic> json) =>
    _$VideoTaskResult(
      id: Identifier.fromJson(json['id'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      result: json['result'] == null
          ? null
          : VideoResult.fromJson(json['result'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$VideoTaskResultToJson(_$VideoTaskResult instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'result': instance.result?.toJson(),
      'type': instance.$type,
    };

_$BooleanQuestionResult _$$BooleanQuestionResultFromJson(
        Map<String, dynamic> json) =>
    _$BooleanQuestionResult(
      id: Identifier.fromJson(json['id'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      valueIdentifier: json['valueIdentifier'] as String,
      result: $enumDecodeNullable(_$BooleanResultEnumMap, json['result']),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$BooleanQuestionResultToJson(
        _$BooleanQuestionResult instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'valueIdentifier': instance.valueIdentifier,
      'result': _$BooleanResultEnumMap[instance.result],
      'type': instance.$type,
    };

const _$BooleanResultEnumMap = {
  BooleanResult.NONE: 'NONE',
  BooleanResult.POSITIVE: 'POSITIVE',
  BooleanResult.NEGATIVE: 'NEGATIVE',
};

_$DateQuestionResult _$$DateQuestionResultFromJson(Map<String, dynamic> json) =>
    _$DateQuestionResult(
      id: Identifier.fromJson(json['id'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      valueIdentifier: json['valueIdentifier'] as String,
      result: json['result'] == null
          ? null
          : DateTime.parse(json['result'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$DateQuestionResultToJson(
        _$DateQuestionResult instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'valueIdentifier': instance.valueIdentifier,
      'result': instance.result?.toIso8601String(),
      'type': instance.$type,
    };

_$DoubleQuestionResult _$$DoubleQuestionResultFromJson(
        Map<String, dynamic> json) =>
    _$DoubleQuestionResult(
      id: Identifier.fromJson(json['id'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      valueIdentifier: json['valueIdentifier'] as String,
      result: (json['result'] as num?)?.toDouble(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$DoubleQuestionResultToJson(
        _$DoubleQuestionResult instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'valueIdentifier': instance.valueIdentifier,
      'result': instance.result,
      'type': instance.$type,
    };

_$ImageQuestionResult _$$ImageQuestionResultFromJson(
        Map<String, dynamic> json) =>
    _$ImageQuestionResult(
      id: Identifier.fromJson(json['id'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      valueIdentifier: json['valueIdentifier'] as String,
      result: json['result'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ImageQuestionResultToJson(
        _$ImageQuestionResult instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'valueIdentifier': instance.valueIdentifier,
      'result': instance.result,
      'type': instance.$type,
    };

_$IntegerQuestionResult _$$IntegerQuestionResultFromJson(
        Map<String, dynamic> json) =>
    _$IntegerQuestionResult(
      id: Identifier.fromJson(json['id'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      valueIdentifier: json['valueIdentifier'] as String,
      result: json['result'] as int?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$IntegerQuestionResultToJson(
        _$IntegerQuestionResult instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'valueIdentifier': instance.valueIdentifier,
      'result': instance.result,
      'type': instance.$type,
    };

_$MultiChoiceQuestionResult _$$MultiChoiceQuestionResultFromJson(
        Map<String, dynamic> json) =>
    _$MultiChoiceQuestionResult(
      id: Identifier.fromJson(json['id'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      valueIdentifier: json['valueIdentifier'] as String,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => TextChoice.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MultiChoiceQuestionResultToJson(
        _$MultiChoiceQuestionResult instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'valueIdentifier': instance.valueIdentifier,
      'result': instance.result?.map((e) => e.toJson()).toList(),
      'type': instance.$type,
    };

_$MultiDoubleQuestionResult _$$MultiDoubleQuestionResultFromJson(
        Map<String, dynamic> json) =>
    _$MultiDoubleQuestionResult(
      id: Identifier.fromJson(json['id'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      valueIdentifier: json['valueIdentifier'] as String,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => MultiDouble.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MultiDoubleQuestionResultToJson(
        _$MultiDoubleQuestionResult instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'valueIdentifier': instance.valueIdentifier,
      'result': instance.result?.map((e) => e.toJson()).toList(),
      'type': instance.$type,
    };

_$ScaleQuestionResult _$$ScaleQuestionResultFromJson(
        Map<String, dynamic> json) =>
    _$ScaleQuestionResult(
      id: Identifier.fromJson(json['id'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      valueIdentifier: json['valueIdentifier'] as String,
      result: (json['result'] as num?)?.toDouble(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ScaleQuestionResultToJson(
        _$ScaleQuestionResult instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'valueIdentifier': instance.valueIdentifier,
      'result': instance.result,
      'type': instance.$type,
    };

_$SingleChoiceQuestionResult _$$SingleChoiceQuestionResultFromJson(
        Map<String, dynamic> json) =>
    _$SingleChoiceQuestionResult(
      id: Identifier.fromJson(json['id'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      valueIdentifier: json['valueIdentifier'] as String,
      result: json['result'] == null
          ? null
          : TextChoice.fromJson(json['result'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$SingleChoiceQuestionResultToJson(
        _$SingleChoiceQuestionResult instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'valueIdentifier': instance.valueIdentifier,
      'result': instance.result?.toJson(),
      'type': instance.$type,
    };

_$TextQuestionResult _$$TextQuestionResultFromJson(Map<String, dynamic> json) =>
    _$TextQuestionResult(
      id: Identifier.fromJson(json['id'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      valueIdentifier: json['valueIdentifier'] as String,
      result: json['result'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TextQuestionResultToJson(
        _$TextQuestionResult instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'valueIdentifier': instance.valueIdentifier,
      'result': instance.result,
      'type': instance.$type,
    };

_$TimeQuestionResult _$$TimeQuestionResultFromJson(Map<String, dynamic> json) =>
    _$TimeQuestionResult(
      id: Identifier.fromJson(json['id'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      valueIdentifier: json['valueIdentifier'] as String,
      result: const TimeOfDayConverter().fromJson(json['result'] as String?),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TimeQuestionResultToJson(
        _$TimeQuestionResult instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'valueIdentifier': instance.valueIdentifier,
      'result': const TimeOfDayConverter().toJson(instance.result),
      'type': instance.$type,
    };
