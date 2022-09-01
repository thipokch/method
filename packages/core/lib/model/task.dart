import 'package:core/abstract/define.dart';
import 'package:core/abstract/describe.dart';
import 'package:core/abstract/uniform.dart';
import 'package:core/model/task_definition.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:slugify/slugify.dart';
import 'package:uuid/uuid.dart';

part 'task.freezed.dart';

@freezed
class Task with _$Task, Uniform, Describe {
  @Implements<Uniform>()
  @Implements<Describe>()
  @Implements<Define<TaskDefinition>>()
  const factory Task._({
    required final String icon,
    required final String name,
    required final String description,
    required final List<TaskDefinition> definitions,
    required final String collectionSlug,
    required final String hierarchyPath,
    required final String id,
    required final String uuid,
  }) = _Task;

  factory Task.create({
    required final String icon,
    required final String name,
    required final description,
    final List<TaskDefinition>? definitions,
    required final String collectionSlug,
    required final String hierarchyPath,
    final String? id,
    final String? uuid,
  }) =>
      Task._(
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
