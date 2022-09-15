// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Label _$$_LabelFromJson(Map<String, dynamic> json) => _$_Label(
      icon: json['icon'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      hierarchyPath: json['hierarchyPath'] as String,
      id: json['id'] as String,
      uuid: json['uuid'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_LabelToJson(_$_Label instance) => <String, dynamic>{
      'icon': instance.icon,
      'name': instance.name,
      'description': instance.description,
      'hierarchyPath': instance.hierarchyPath,
      'id': instance.id,
      'uuid': instance.uuid,
      'runtimeType': instance.$type,
    };

_$_Note _$$_NoteFromJson(Map<String, dynamic> json) => _$_Note(
      name: json['name'] as String,
      description: json['description'] as String,
      hierarchyPath: json['hierarchyPath'] as String,
      id: json['id'] as String,
      uuid: json['uuid'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_NoteToJson(_$_Note instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'hierarchyPath': instance.hierarchyPath,
      'id': instance.id,
      'uuid': instance.uuid,
      'runtimeType': instance.$type,
    };
