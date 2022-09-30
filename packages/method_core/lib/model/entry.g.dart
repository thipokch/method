// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Entry _$$_EntryFromJson(Map<String, dynamic> json) => _$_Entry(
      template: Task.fromJson(json['template'] as Map<String, dynamic>),
      definitions: (json['definitions'] as List<dynamic>)
          .map((e) => EntryDefinition.fromJson(e as Map<String, dynamic>))
          .toList(),
      hierarchyPath: json['hierarchyPath'] as String,
      id: json['id'] as String,
      uuid: _$JsonConverterFromJson<String, UuidValue>(
          json['uuid'], const UuidConverter().fromJson),
    );

Map<String, dynamic> _$$_EntryToJson(_$_Entry instance) => <String, dynamic>{
      'template': instance.template,
      'definitions': instance.definitions,
      'hierarchyPath': instance.hierarchyPath,
      'id': instance.id,
      'uuid': _$JsonConverterToJson<String, UuidValue>(
          instance.uuid, const UuidConverter().toJson),
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
