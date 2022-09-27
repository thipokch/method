// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entry_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Label _$$_LabelFromJson(Map<String, dynamic> json) => _$_Label(
      hierarchyPath: json['hierarchyPath'] as String,
      id: json['id'] as String,
      uuid: _$JsonConverterFromJson<String, UuidValue>(
          json['uuid'], const UuidConverter().fromJson),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_LabelToJson(_$_Label instance) => <String, dynamic>{
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

_$_Note _$$_NoteFromJson(Map<String, dynamic> json) => _$_Note(
      data: json['data'] as String,
      hierarchyPath: json['hierarchyPath'] as String,
      id: json['id'] as String,
      uuid: _$JsonConverterFromJson<String, UuidValue>(
          json['uuid'], const UuidConverter().fromJson),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_NoteToJson(_$_Note instance) => <String, dynamic>{
      'data': instance.data,
      'hierarchyPath': instance.hierarchyPath,
      'id': instance.id,
      'uuid': _$JsonConverterToJson<String, UuidValue>(
          instance.uuid, const UuidConverter().toJson),
      'runtimeType': instance.$type,
    };
