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
      uuid: _$JsonConverterFromJson<String, UuidValue>(
          json['uuid'], const UuidConverter().fromJson),
      $type: json['collectionSlug'] as String?,
    );

Map<String, dynamic> _$$_LinearToJson(_$_Linear instance) => <String, dynamic>{
      'icon': instance.icon,
      'name': instance.name,
      'description': instance.description,
      'definitions': instance.definitions,
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

_$_Diverge _$$_DivergeFromJson(Map<String, dynamic> json) => _$_Diverge(
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

Map<String, dynamic> _$$_DivergeToJson(_$_Diverge instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'name': instance.name,
      'description': instance.description,
      'definitions': instance.definitions,
      'hierarchyPath': instance.hierarchyPath,
      'id': instance.id,
      'uuid': _$JsonConverterToJson<String, UuidValue>(
          instance.uuid, const UuidConverter().toJson),
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
      uuid: _$JsonConverterFromJson<String, UuidValue>(
          json['uuid'], const UuidConverter().fromJson),
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
      'uuid': _$JsonConverterToJson<String, UuidValue>(
          instance.uuid, const UuidConverter().toJson),
      'collectionSlug': instance.$type,
    };

_$_Feedback _$$_FeedbackFromJson(Map<String, dynamic> json) => _$_Feedback(
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

Map<String, dynamic> _$$_FeedbackToJson(_$_Feedback instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'name': instance.name,
      'description': instance.description,
      'definitions': instance.definitions,
      'hierarchyPath': instance.hierarchyPath,
      'id': instance.id,
      'uuid': _$JsonConverterToJson<String, UuidValue>(
          instance.uuid, const UuidConverter().toJson),
      'collectionSlug': instance.$type,
    };
