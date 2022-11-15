// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boolean_answer_format.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BooleanAnswerFormat _$$_BooleanAnswerFormatFromJson(
        Map<String, dynamic> json) =>
    _$_BooleanAnswerFormat(
      positiveAnswer: json['positiveAnswer'] as String,
      negativeAnswer: json['negativeAnswer'] as String,
      result: $enumDecodeNullable(_$BooleanResultEnumMap, json['result']) ??
          BooleanResult.NONE,
    );

Map<String, dynamic> _$$_BooleanAnswerFormatToJson(
        _$_BooleanAnswerFormat instance) =>
    <String, dynamic>{
      'positiveAnswer': instance.positiveAnswer,
      'negativeAnswer': instance.negativeAnswer,
      'result': _$BooleanResultEnumMap[instance.result]!,
    };

const _$BooleanResultEnumMap = {
  BooleanResult.NONE: 'NONE',
  BooleanResult.POSITIVE: 'POSITIVE',
  BooleanResult.NEGATIVE: 'NEGATIVE',
};
