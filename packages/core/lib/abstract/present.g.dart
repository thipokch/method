// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'present.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Presentation _$$_PresentationFromJson(Map<String, dynamic> json) =>
    _$_Presentation(
      seed: (json['seed'] as num).toDouble(),
      colorLighter:
          const ColorConverter().fromJson(json['colorLighter'] as int),
      colorLight: const ColorConverter().fromJson(json['colorLight'] as int),
      colorDark: const ColorConverter().fromJson(json['colorDark'] as int),
      colorDarker: const ColorConverter().fromJson(json['colorDarker'] as int),
    );

Map<String, dynamic> _$$_PresentationToJson(_$_Presentation instance) =>
    <String, dynamic>{
      'seed': instance.seed,
      'colorLighter': const ColorConverter().toJson(instance.colorLighter),
      'colorLight': const ColorConverter().toJson(instance.colorLight),
      'colorDark': const ColorConverter().toJson(instance.colorDark),
      'colorDarker': const ColorConverter().toJson(instance.colorDarker),
    };
