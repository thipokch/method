// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entry_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EntryDefinitionLabel _$$EntryDefinitionLabelFromJson(
        Map<String, dynamic> json) =>
    _$EntryDefinitionLabel(
      hierarchyPath: json['hierarchyPath'] as String,
      id: json['id'] as String,
      uuid: _$JsonConverterFromJson<String, UuidValue>(
          json['uuid'], const UuidConverter().fromJson),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EntryDefinitionLabelToJson(
        _$EntryDefinitionLabel instance) =>
    <String, dynamic>{
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

_$EntryDefinitionNote _$$EntryDefinitionNoteFromJson(
        Map<String, dynamic> json) =>
    _$EntryDefinitionNote(
      data: json['data'] as String,
      hierarchyPath: json['hierarchyPath'] as String,
      id: json['id'] as String,
      uuid: _$JsonConverterFromJson<String, UuidValue>(
          json['uuid'], const UuidConverter().fromJson),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EntryDefinitionNoteToJson(
        _$EntryDefinitionNote instance) =>
    <String, dynamic>{
      'data': instance.data,
      'hierarchyPath': instance.hierarchyPath,
      'id': instance.id,
      'uuid': _$JsonConverterToJson<String, UuidValue>(
          instance.uuid, const UuidConverter().toJson),
      'runtimeType': instance.$type,
    };
