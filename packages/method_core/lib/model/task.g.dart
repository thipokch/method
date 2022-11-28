// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskLinear _$$TaskLinearFromJson(Map<String, dynamic> json) => _$TaskLinear(
      icon: json['icon'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      definitions: (json['definitions'] as List<dynamic>)
          .map((e) => TaskDefinition.fromJson(e as Map<String, dynamic>))
          .toList(),
      hierarchyPath: json['hierarchyPath'] as String,
      id: json['id'] as String,
      uuid: _$JsonConverterFromJson<String, UuidValue>(
          json['uuid'], const UuidConverter().fromJson),
      $type: json['collectionSlug'] as String?,
    );

Map<String, dynamic> _$$TaskLinearToJson(_$TaskLinear instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'name': instance.name,
      'description': instance.description,
      'definitions': instance.definitions.map((e) => e.toJson()).toList(),
      'hierarchyPath': instance.hierarchyPath,
      'id': instance.id,
      'uuid': _$JsonConverterToJson<String, UuidValue>(
          instance.uuid, const UuidConverter().toJson),
      'collectionSlug': instance.$type,
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

_$TaskDiverge _$$TaskDivergeFromJson(Map<String, dynamic> json) =>
    _$TaskDiverge(
      icon: json['icon'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      definitions: (json['definitions'] as List<dynamic>)
          .map((e) => TaskDefinition.fromJson(e as Map<String, dynamic>))
          .toList(),
      hierarchyPath: json['hierarchyPath'] as String,
      id: json['id'] as String,
      uuid: _$JsonConverterFromJson<String, UuidValue>(
          json['uuid'], const UuidConverter().fromJson),
      $type: json['collectionSlug'] as String?,
    );

Map<String, dynamic> _$$TaskDivergeToJson(_$TaskDiverge instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'name': instance.name,
      'description': instance.description,
      'definitions': instance.definitions.map((e) => e.toJson()).toList(),
      'hierarchyPath': instance.hierarchyPath,
      'id': instance.id,
      'uuid': _$JsonConverterToJson<String, UuidValue>(
          instance.uuid, const UuidConverter().toJson),
      'collectionSlug': instance.$type,
    };

_$TaskConverge _$$TaskConvergeFromJson(Map<String, dynamic> json) =>
    _$TaskConverge(
      icon: json['icon'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      definitions: (json['definitions'] as List<dynamic>)
          .map((e) => TaskDefinition.fromJson(e as Map<String, dynamic>))
          .toList(),
      hierarchyPath: json['hierarchyPath'] as String,
      id: json['id'] as String,
      uuid: _$JsonConverterFromJson<String, UuidValue>(
          json['uuid'], const UuidConverter().fromJson),
      $type: json['collectionSlug'] as String?,
    );

Map<String, dynamic> _$$TaskConvergeToJson(_$TaskConverge instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'name': instance.name,
      'description': instance.description,
      'definitions': instance.definitions.map((e) => e.toJson()).toList(),
      'hierarchyPath': instance.hierarchyPath,
      'id': instance.id,
      'uuid': _$JsonConverterToJson<String, UuidValue>(
          instance.uuid, const UuidConverter().toJson),
      'collectionSlug': instance.$type,
    };

_$TaskFeedback _$$TaskFeedbackFromJson(Map<String, dynamic> json) =>
    _$TaskFeedback(
      icon: json['icon'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      definitions: (json['definitions'] as List<dynamic>)
          .map((e) => TaskDefinition.fromJson(e as Map<String, dynamic>))
          .toList(),
      hierarchyPath: json['hierarchyPath'] as String,
      id: json['id'] as String,
      uuid: _$JsonConverterFromJson<String, UuidValue>(
          json['uuid'], const UuidConverter().fromJson),
      $type: json['collectionSlug'] as String?,
    );

Map<String, dynamic> _$$TaskFeedbackToJson(_$TaskFeedback instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'name': instance.name,
      'description': instance.description,
      'definitions': instance.definitions.map((e) => e.toJson()).toList(),
      'hierarchyPath': instance.hierarchyPath,
      'id': instance.id,
      'uuid': _$JsonConverterToJson<String, UuidValue>(
          instance.uuid, const UuidConverter().toJson),
      'collectionSlug': instance.$type,
    };
