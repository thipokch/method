// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_step_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoStepResult _$$_VideoStepResultFromJson(Map<String, dynamic> json) =>
    _$_VideoStepResult(
      id: Identifier.fromJson(json['id'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      result: VideoResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VideoStepResultToJson(_$_VideoStepResult instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'result': instance.result.toJson(),
    };

_$_VideoResult _$$_VideoResultFromJson(Map<String, dynamic> json) =>
    _$_VideoResult(
      leftVideoAt: Duration(microseconds: json['leftVideoAt'] as int),
      stayedInVideo: DateTime.parse(json['stayedInVideo'] as String),
    );

Map<String, dynamic> _$$_VideoResultToJson(_$_VideoResult instance) =>
    <String, dynamic>{
      'leftVideoAt': instance.leftVideoAt.inMicroseconds,
      'stayedInVideo': instance.stayedInVideo.toIso8601String(),
    };
