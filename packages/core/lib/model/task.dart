import 'package:core/model/task_definition.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:slugify/slugify.dart';
import 'package:uuid/uuid.dart';

import '../abstract/define.dart';
import '../abstract/identify.dart';
import '../abstract/inform.dart';
import '../abstract/locate.dart';

part 'task.freezed.dart';

@freezed
class Task with _$Task, Identify, Locate, Inform, Define<TaskDefinition> {
  const Task._();

  const factory Task.linear({
    required final String icon,
    required final String name,
    required final String description,
    required final List<TaskDefinition> definitions,
    required String collectionSlug,
    required String hierarchyPath,
    required String id,
    required String uuid,
  }) = _Linear;

  const factory Task.diverge({
    required final String icon,
    required final String name,
    required final String description,
    required final List<TaskDefinition> definitions,
    required String collectionSlug,
    required String hierarchyPath,
    required String id,
    required String uuid,
  }) = _Diverge;

  const factory Task.converge({
    required final String icon,
    required final String name,
    required final String description,
    required final List<TaskDefinition> definitions,
    required String collectionSlug,
    required String hierarchyPath,
    required String id,
    required String uuid,
  }) = _Converge;

  factory Task.createLinear({
    required final String icon,
    required final String name,
    required final String description,
    final List<TaskDefinition>? definitions,
    required final String collectionSlug,
    required final String hierarchyPath,
    final String? id,
    final String? uuid,
  }) =>
      Task.linear(
        icon: icon,
        name: name,
        description: description,
        definitions: definitions ?? [],
        collectionSlug: collectionSlug,
        hierarchyPath: hierarchyPath,
        id: id ?? slugify(name),
        uuid: uuid ?? const Uuid().v4(),
      );

  factory Task.createDiverge({
    required final String icon,
    required final String name,
    required final String description,
    final List<TaskDefinition>? definitions,
    required final String collectionSlug,
    required final String hierarchyPath,
    final String? id,
    final String? uuid,
  }) =>
      Task.diverge(
        icon: icon,
        name: name,
        description: description,
        definitions: definitions ?? [],
        collectionSlug: collectionSlug,
        hierarchyPath: hierarchyPath,
        id: id ?? slugify(name),
        uuid: uuid ?? const Uuid().v4(),
      );

  factory Task.createConverge({
    required final String icon,
    required final String name,
    required final String description,
    final List<TaskDefinition>? definitions,
    required final String collectionSlug,
    required final String hierarchyPath,
    final String? id,
    final String? uuid,
  }) =>
      Task.converge(
        icon: icon,
        name: name,
        description: description,
        definitions: definitions ?? [],
        collectionSlug: collectionSlug,
        hierarchyPath: hierarchyPath,
        id: id ?? slugify(name),
        uuid: uuid ?? const Uuid().v4(),
      );
}
