// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExerciseResult _$$_ExerciseResultFromJson(Map<String, dynamic> json) =>
    _$_ExerciseResult(
      id: json['id'] == null
          ? null
          : Identifier.fromJson(json['id'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      finishReason: $enumDecode(_$FinishReasonEnumMap, json['finishReason']),
      results: (json['results'] as List<dynamic>)
          .map((e) => TaskResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ExerciseResultToJson(_$_ExerciseResult instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'finishReason': _$FinishReasonEnumMap[instance.finishReason]!,
      'results': instance.results.map((e) => e.toJson()).toList(),
    };

const _$FinishReasonEnumMap = {
  FinishReason.SAVED: 'SAVED',
  FinishReason.DISCARDED: 'DISCARDED',
  FinishReason.COMPLETED: 'COMPLETED',
  FinishReason.FAILED: 'FAILED',
};
