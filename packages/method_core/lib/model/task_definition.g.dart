// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskDefinitionLabel _$$TaskDefinitionLabelFromJson(
        Map<String, dynamic> json) =>
    _$TaskDefinitionLabel(
      icon: json['icon'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      hierarchyPath: json['hierarchyPath'] as String,
      id: json['id'] as String,
      uuid: _$JsonConverterFromJson<String, UuidValue>(
          json['uuid'], const UuidConverter().fromJson),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TaskDefinitionLabelToJson(
        _$TaskDefinitionLabel instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'name': instance.name,
      'description': instance.description,
      'hierarchyPath': instance.hierarchyPath,
      'id': instance.id,
      'uuid': _$JsonConverterToJson<String, UuidValue>(
          instance.uuid, const UuidConverter().toJson),
      'runtimeType': instance.$type,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

_$TaskDefinitionNote _$$TaskDefinitionNoteFromJson(Map<String, dynamic> json) =>
    _$TaskDefinitionNote(
      icon: json['icon'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      hierarchyPath: json['hierarchyPath'] as String,
      id: json['id'] as String,
      uuid: _$JsonConverterFromJson<String, UuidValue>(
          json['uuid'], const UuidConverter().fromJson),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TaskDefinitionNoteToJson(
        _$TaskDefinitionNote instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'name': instance.name,
      'description': instance.description,
      'hierarchyPath': instance.hierarchyPath,
      'id': instance.id,
      'uuid': _$JsonConverterToJson<String, UuidValue>(
          instance.uuid, const UuidConverter().toJson),
      'runtimeType': instance.$type,
    };
