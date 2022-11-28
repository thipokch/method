// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_format.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BooleanAnswerFormat _$$BooleanAnswerFormatFromJson(
        Map<String, dynamic> json) =>
    _$BooleanAnswerFormat(
      positiveAnswer: json['positiveAnswer'] as String,
      negativeAnswer: json['negativeAnswer'] as String,
      result: $enumDecodeNullable(_$BooleanResultEnumMap, json['result']) ??
          BooleanResult.NONE,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$BooleanAnswerFormatToJson(
        _$BooleanAnswerFormat instance) =>
    <String, dynamic>{
      'positiveAnswer': instance.positiveAnswer,
      'negativeAnswer': instance.negativeAnswer,
      'result': _$BooleanResultEnumMap[instance.result]!,
      'type': instance.$type,
    };

const _$BooleanResultEnumMap = {
  BooleanResult.NONE: 'NONE',
  BooleanResult.POSITIVE: 'POSITIVE',
  BooleanResult.NEGATIVE: 'NEGATIVE',
};

_$DateAnswerFormat _$$DateAnswerFormatFromJson(Map<String, dynamic> json) =>
    _$DateAnswerFormat(
      defaultDate: json['defaultDate'] == null
          ? null
          : DateTime.parse(json['defaultDate'] as String),
      minDate: json['minDate'] == null
          ? null
          : DateTime.parse(json['minDate'] as String),
      maxDate: json['maxDate'] == null
          ? null
          : DateTime.parse(json['maxDate'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$DateAnswerFormatToJson(_$DateAnswerFormat instance) =>
    <String, dynamic>{
      'defaultDate': instance.defaultDate?.toIso8601String(),
      'minDate': instance.minDate?.toIso8601String(),
      'maxDate': instance.maxDate?.toIso8601String(),
      'type': instance.$type,
    };

_$DoubleAnswerFormat _$$DoubleAnswerFormatFromJson(Map<String, dynamic> json) =>
    _$DoubleAnswerFormat(
      defaultValue: (json['defaultValue'] as num?)?.toDouble(),
      hint: json['hint'] as String? ?? '',
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$DoubleAnswerFormatToJson(
        _$DoubleAnswerFormat instance) =>
    <String, dynamic>{
      'defaultValue': instance.defaultValue,
      'hint': instance.hint,
      'type': instance.$type,
    };

_$ImageAnswerFormat _$$ImageAnswerFormatFromJson(Map<String, dynamic> json) =>
    _$ImageAnswerFormat(
      defaultValue: json['defaultValue'] as String?,
      buttonText: json['buttonText'] as String? ?? 'Image: ',
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ImageAnswerFormatToJson(_$ImageAnswerFormat instance) =>
    <String, dynamic>{
      'defaultValue': instance.defaultValue,
      'buttonText': instance.buttonText,
      'type': instance.$type,
    };

_$IntegerAnswerFormat _$$IntegerAnswerFormatFromJson(
        Map<String, dynamic> json) =>
    _$IntegerAnswerFormat(
      defaultValue: json['defaultValue'] as int?,
      hint: json['hint'] as String? ?? '',
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$IntegerAnswerFormatToJson(
        _$IntegerAnswerFormat instance) =>
    <String, dynamic>{
      'defaultValue': instance.defaultValue,
      'hint': instance.hint,
      'type': instance.$type,
    };

_$MultiChoiceAnswerFormat _$$MultiChoiceAnswerFormatFromJson(
        Map<String, dynamic> json) =>
    _$MultiChoiceAnswerFormat(
      textChoices: (json['textChoices'] as List<dynamic>)
          .map((e) => TextChoice.fromJson(e as Map<String, dynamic>))
          .toList(),
      defaultSelection: (json['defaultSelection'] as List<dynamic>?)
              ?.map((e) => TextChoice.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MultiChoiceAnswerFormatToJson(
        _$MultiChoiceAnswerFormat instance) =>
    <String, dynamic>{
      'textChoices': instance.textChoices.map((e) => e.toJson()).toList(),
      'defaultSelection':
          instance.defaultSelection.map((e) => e.toJson()).toList(),
      'type': instance.$type,
    };

_$MultiDoubleAnswerFormat _$$MultiDoubleAnswerFormatFromJson(
        Map<String, dynamic> json) =>
    _$MultiDoubleAnswerFormat(
      defaultValues: (json['defaultValues'] as List<dynamic>?)
          ?.map((e) => MultiDouble.fromJson(e as Map<String, dynamic>))
          .toList(),
      hints:
          (json['hints'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MultiDoubleAnswerFormatToJson(
        _$MultiDoubleAnswerFormat instance) =>
    <String, dynamic>{
      'defaultValues': instance.defaultValues?.map((e) => e.toJson()).toList(),
      'hints': instance.hints,
      'type': instance.$type,
    };

_$ScaleAnswerFormat _$$ScaleAnswerFormatFromJson(Map<String, dynamic> json) =>
    _$ScaleAnswerFormat(
      maximumValue: (json['maximumValue'] as num).toDouble(),
      minimumValue: (json['minimumValue'] as num).toDouble(),
      defaultValue: (json['defaultValue'] as num).toDouble(),
      step: (json['step'] as num).toDouble(),
      maximumValueDescription: json['maximumValueDescription'] as String? ?? '',
      minimumValueDescription: json['minimumValueDescription'] as String? ?? '',
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ScaleAnswerFormatToJson(_$ScaleAnswerFormat instance) =>
    <String, dynamic>{
      'maximumValue': instance.maximumValue,
      'minimumValue': instance.minimumValue,
      'defaultValue': instance.defaultValue,
      'step': instance.step,
      'maximumValueDescription': instance.maximumValueDescription,
      'minimumValueDescription': instance.minimumValueDescription,
      'type': instance.$type,
    };

_$SingleChoiceAnswerFormat _$$SingleChoiceAnswerFormatFromJson(
        Map<String, dynamic> json) =>
    _$SingleChoiceAnswerFormat(
      textChoices: (json['textChoices'] as List<dynamic>)
          .map((e) => TextChoice.fromJson(e as Map<String, dynamic>))
          .toList(),
      defaultSelection: json['defaultSelection'] == null
          ? null
          : TextChoice.fromJson(
              json['defaultSelection'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$SingleChoiceAnswerFormatToJson(
        _$SingleChoiceAnswerFormat instance) =>
    <String, dynamic>{
      'textChoices': instance.textChoices.map((e) => e.toJson()).toList(),
      'defaultSelection': instance.defaultSelection?.toJson(),
      'type': instance.$type,
    };

_$TextAnswerFormat _$$TextAnswerFormatFromJson(Map<String, dynamic> json) =>
    _$TextAnswerFormat(
      maxLines: json['maxLines'] as int?,
      hint: json['hint'] as String? ?? '',
      validationRegEx: json['validationRegEx'] as String? ?? '',
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TextAnswerFormatToJson(_$TextAnswerFormat instance) =>
    <String, dynamic>{
      'maxLines': instance.maxLines,
      'hint': instance.hint,
      'validationRegEx': instance.validationRegEx,
      'type': instance.$type,
    };

_$TimeAnswerFormat _$$TimeAnswerFormatFromJson(Map<String, dynamic> json) =>
    _$TimeAnswerFormat(
      defaultValue:
          const TimeOfDayConverter().fromJson(json['defaultValue'] as String?),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TimeAnswerFormatToJson(_$TimeAnswerFormat instance) =>
    <String, dynamic>{
      'defaultValue': const TimeOfDayConverter().toJson(instance.defaultValue),
      'type': instance.$type,
    };

_$_MultiDouble _$$_MultiDoubleFromJson(Map<String, dynamic> json) =>
    _$_MultiDouble(
      text: json['text'] as String,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MultiDoubleToJson(_$_MultiDouble instance) =>
    <String, dynamic>{
      'text': instance.text,
      'value': instance.value,
    };

_$_TextChoice _$$_TextChoiceFromJson(Map<String, dynamic> json) =>
    _$_TextChoice(
      text: json['text'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$_TextChoiceToJson(_$_TextChoice instance) =>
    <String, dynamic>{
      'text': instance.text,
      'value': instance.value,
    };

_$_VideoResult _$$_VideoResultFromJson(Map<String, dynamic> json) =>
    _$_VideoResult(
      leftVideoAt: Duration(microseconds: json['leftVideoAt'] as int),
      stayedInVideo: DateTime.parse(json['stayedInVideo'] as String),
    );

Map<String, dynamic> _$$_VideoResultToJson(_$_VideoResult instance) =>
    <String, dynamic>{
      'leftVideoAt': instance.leftVideoAt.inMicroseconds,
      'stayedInVideo': instance.stayedInVideo.toIso8601String(),
    };
