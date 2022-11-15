// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multiple_double_answer_format.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MultipleDoubleAnswerFormat _$$_MultipleDoubleAnswerFormatFromJson(
        Map<String, dynamic> json) =>
    _$_MultipleDoubleAnswerFormat(
      defaultValues: (json['defaultValues'] as List<dynamic>?)
          ?.map((e) => MultiDouble.fromJson(e as Map<String, dynamic>))
          .toList(),
      hints:
          (json['hints'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
    );

Map<String, dynamic> _$$_MultipleDoubleAnswerFormatToJson(
        _$_MultipleDoubleAnswerFormat instance) =>
    <String, dynamic>{
      'defaultValues': instance.defaultValues,
      'hints': instance.hints,
    };
