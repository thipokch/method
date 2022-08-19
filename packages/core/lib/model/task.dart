import 'package:core/abstract/define.dart';
import 'package:core/abstract/describe.dart';
import 'package:core/abstract/uniform.dart';
import 'package:core/model/task_definition.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:slugify/slugify.dart';
import 'package:uuid/uuid.dart';

part 'task.freezed.dart';

@freezed
class Task with _$Task, Uniform, Describe{
  @Implements<Uniform>()
  @Implements<Describe>()
  @Implements<Define<TaskDefinition>>()
  const factory Task._({
    required String name,
    required String description,
    required List<TaskDefinition> definitions,
    required String collectionSlug,
    required String hierarchyPath,
    required String id,
    required String uuid,
  }) = _Task;

  factory Task.create({
    required String name,
    String? description,
    List<TaskDefinition>? definitions,
    required String collectionSlug,
    required String hierarchyPath,
    String? id,
    String? uuid,
  }) =>
      Task._(
        name: name,
        description: description ?? "",
        definitions: definitions ?? [],
        collectionSlug: collectionSlug,
        hierarchyPath: hierarchyPath,
        id: id ?? slugify(name),
        uuid: uuid ?? const Uuid().v4(),
      );
}
