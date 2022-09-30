// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'present.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Presentation _$$_PresentationFromJson(Map<String, dynamic> json) =>
    _$_Presentation(
      seed: (json['seed'] as num).toDouble(),
      primary: const ColorConverter().fromJson(json['primary'] as int),
      secondary: const ColorConverter().fromJson(json['secondary'] as int),
      tertiary: const ColorConverter().fromJson(json['tertiary'] as int),
      neutral: const ColorConverter().fromJson(json['neutral'] as int),
      neutralVariant:
          const ColorConverter().fromJson(json['neutralVariant'] as int),
    );

Map<String, dynamic> _$$_PresentationToJson(_$_Presentation instance) =>
    <String, dynamic>{
      'seed': instance.seed,
      'primary': const ColorConverter().toJson(instance.primary),
      'secondary': const ColorConverter().toJson(instance.secondary),
      'tertiary': const ColorConverter().toJson(instance.tertiary),
      'neutral': const ColorConverter().toJson(instance.neutral),
      'neutralVariant': const ColorConverter().toJson(instance.neutralVariant),
    };
