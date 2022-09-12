// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Linear _$$_LinearFromJson(Map<String, dynamic> json) => _$_Linear(
      icon: json['icon'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      definitions: (json['definitions'] as List<dynamic>)
          .map((e) => TaskDefinition.fromJson(e as Map<String, dynamic>))
          .toList(),
      hierarchyPath: json['hierarchyPath'] as String,
      id: json['id'] as String,
      uuid: json['uuid'] as String,
      $type: json['collectionSlug'] as String?,
    );

Map<String, dynamic> _$$_LinearToJson(_$_Linear instance) => <String, dynamic>{
      'icon': instance.icon,
      'name': instance.name,
      'description': instance.description,
      'definitions': instance.definitions,
      'hierarchyPath': instance.hierarchyPath,
      'id': instance.id,
      'uuid': instance.uuid,
      'collectionSlug': instance.$type,
    };

_$_Diverge _$$_DivergeFromJson(Map<String, dynamic> json) => _$_Diverge(
      icon: json['icon'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      definitions: (json['definitions'] as List<dynamic>)
          .map((e) => TaskDefinition.fromJson(e as Map<String, dynamic>))
          .toList(),
      hierarchyPath: json['hierarchyPath'] as String,
      id: json['id'] as String,
      uuid: json['uuid'] as String,
      $type: json['collectionSlug'] as String?,
    );

Map<String, dynamic> _$$_DivergeToJson(_$_Diverge instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'name': instance.name,
      'description': instance.description,
      'definitions': instance.definitions,
      'hierarchyPath': instance.hierarchyPath,
      'id': instance.id,
      'uuid': instance.uuid,
      'collectionSlug': instance.$type,
    };

_$_Converge _$$_ConvergeFromJson(Map<String, dynamic> json) => _$_Converge(
      icon: json['icon'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      definitions: (json['definitions'] as List<dynamic>)
          .map((e) => TaskDefinition.fromJson(e as Map<String, dynamic>))
          .toList(),
      hierarchyPath: json['hierarchyPath'] as String,
      id: json['id'] as String,
      uuid: json['uuid'] as String,
      $type: json['collectionSlug'] as String?,
    );

Map<String, dynamic> _$$_ConvergeToJson(_$_Converge instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'name': instance.name,
      'description': instance.description,
      'definitions': instance.definitions,
      'hierarchyPath': instance.hierarchyPath,
      'id': instance.id,
      'uuid': instance.uuid,
      'collectionSlug': instance.$type,
    };
