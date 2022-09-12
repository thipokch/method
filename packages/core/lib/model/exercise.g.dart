// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Exercise _$$_ExerciseFromJson(Map<String, dynamic> json) => _$_Exercise(
      icon: json['icon'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      definitions: (json['definitions'] as List<dynamic>)
          .map((e) => Task.fromJson(e as Map<String, dynamic>))
          .toList(),
      hierarchyPath: json['hierarchyPath'] as String,
      id: json['id'] as String,
      uuid: json['uuid'] as String,
      presentation:
          Presentation.fromJson(json['presentation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ExerciseToJson(_$_Exercise instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'name': instance.name,
      'description': instance.description,
      'definitions': instance.definitions,
      'hierarchyPath': instance.hierarchyPath,
      'id': instance.id,
      'uuid': instance.uuid,
      'presentation': instance.presentation,
    };
