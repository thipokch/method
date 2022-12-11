// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NavigableExercise _$$NavigableExerciseFromJson(Map<String, dynamic> json) =>
    _$NavigableExercise(
      icon: json['icon'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
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
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NavigableExerciseToJson(_$NavigableExercise instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'name': instance.name,
      'description': instance.description,
      'id': const ExerciseIdentifierConverter().toJson(instance.id),
      'tasks': instance.tasks,
      'initialTask': instance.initialTask,
      'rules': const MapOfNavigationRulesConverter()
          .toJson(instance.navigationRules),
      'runtimeType': instance.$type,
    };

_$OrderedExercise _$$OrderedExerciseFromJson(Map<String, dynamic> json) =>
    _$OrderedExercise(
      icon: json['icon'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      id: const ExerciseIdentifierConverter().fromJson(json['id'] as String),
      tasks: (json['tasks'] as List<dynamic>?)
              ?.map((e) => Task.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      initialTask: json['initialTask'] == null
          ? null
          : Task.fromJson(json['initialTask'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OrderedExerciseToJson(_$OrderedExercise instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'name': instance.name,
      'description': instance.description,
      'id': const ExerciseIdentifierConverter().toJson(instance.id),
      'tasks': instance.tasks,
      'initialTask': instance.initialTask,
      'runtimeType': instance.$type,
    };
