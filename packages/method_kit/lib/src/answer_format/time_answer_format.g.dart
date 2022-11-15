// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_answer_format.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeAnswerFormat _$$_TimeAnswerFormatFromJson(Map<String, dynamic> json) =>
    _$_TimeAnswerFormat(
      defaultValue: _$JsonConverterFromJson<Map<String, dynamic>, TimeOfDay?>(
          json['defaultValue'], const _TimeOfDayJsonConverter().fromJson),
    );

Map<String, dynamic> _$$_TimeAnswerFormatToJson(_$_TimeAnswerFormat instance) =>
    <String, dynamic>{
      'defaultValue':
          const _TimeOfDayJsonConverter().toJson(instance.defaultValue),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
