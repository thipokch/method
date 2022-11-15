// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_answer_format.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TextAnswerFormat _$$_TextAnswerFormatFromJson(Map<String, dynamic> json) =>
    _$_TextAnswerFormat(
      maxLines: json['maxLines'] as int?,
      hint: json['hint'] as String? ?? '',
      validationRegEx: json['validationRegEx'] as String? ?? '',
    );

Map<String, dynamic> _$$_TextAnswerFormatToJson(_$_TextAnswerFormat instance) =>
    <String, dynamic>{
      'maxLines': instance.maxLines,
      'hint': instance.hint,
      'validationRegEx': instance.validationRegEx,
    };
