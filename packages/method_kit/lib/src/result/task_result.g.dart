// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskResult _$$_TaskResultFromJson(Map<String, dynamic> json) =>
    _$_TaskResult(
      id: json['id'] == null
          ? null
          : Identifier.fromJson(json['id'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      results: const _Converter().fromJson(json['results'] as Object),
    );

Map<String, dynamic> _$$_TaskResultToJson(_$_TaskResult instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'results': const _Converter().toJson(instance.results),
    };
