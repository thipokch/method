// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_answer_format.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DateAnswerFormat _$$_DateAnswerFormatFromJson(Map<String, dynamic> json) =>
    _$_DateAnswerFormat(
      defaultDate: json['defaultDate'] == null
          ? null
          : DateTime.parse(json['defaultDate'] as String),
      minDate: json['minDate'] == null
          ? null
          : DateTime.parse(json['minDate'] as String),
      maxDate: json['maxDate'] == null
          ? null
          : DateTime.parse(json['maxDate'] as String),
    );

Map<String, dynamic> _$$_DateAnswerFormatToJson(_$_DateAnswerFormat instance) =>
    <String, dynamic>{
      'defaultDate': instance.defaultDate?.toIso8601String(),
      'minDate': instance.minDate?.toIso8601String(),
      'maxDate': instance.maxDate?.toIso8601String(),
    };
