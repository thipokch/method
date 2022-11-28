// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NavigableExercise _$$NavigableExerciseFromJson(Map<String, dynamic> json) =>
    _$NavigableExercise(
      id: const ExerciseIdentifierConverter().fromJson(json['id'] as String),
      tasks: (json['tasks'] as List<dynamic>?)
              ?.map((e) => Task.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      initialTask: json['initialTask'] == null
          ? null
          : Task.fromJson(json['initialTask'] as Map<String, dynamic>),
      navigationRules: json['rules'] == null
          ? const {}
          : const MapOfNavigationRulesConverter()
              .fromJson(json['rules'] as List),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$NavigableExerciseToJson(_$NavigableExercise instance) =>
    <String, dynamic>{
      'id': const ExerciseIdentifierConverter().toJson(instance.id),
      'tasks': instance.tasks.map((e) => e.toJson()).toList(),
      'initialTask': instance.initialTask?.toJson(),
      'rules': const MapOfNavigationRulesConverter()
          .toJson(instance.navigationRules),
      'type': instance.$type,
    };

_$OrderedExercise _$$OrderedExerciseFromJson(Map<String, dynamic> json) =>
    _$OrderedExercise(
      id: const ExerciseIdentifierConverter().fromJson(json['id'] as String),
      tasks: (json['tasks'] as List<dynamic>?)
              ?.map((e) => Task.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      initialTask: json['initialTask'] == null
          ? null
          : Task.fromJson(json['initialTask'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$OrderedExerciseToJson(_$OrderedExercise instance) =>
    <String, dynamic>{
      'id': const ExerciseIdentifierConverter().toJson(instance.id),
      'tasks': instance.tasks.map((e) => e.toJson()).toList(),
      'initialTask': instance.initialTask?.toJson(),
      'type': instance.$type,
    };
