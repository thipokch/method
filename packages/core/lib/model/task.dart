import 'package:core/model/task_definition.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:slugify/slugify.dart';
import 'package:uuid/uuid.dart';

import '../abstract/define.dart';
import '../abstract/identify.dart';
import '../abstract/inform.dart';
import '../abstract/locate.dart';
import '../util/uuid.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@Freezed(unionKey: "collectionSlug", unionValueCase: FreezedUnionCase.snake)
class Task with _$Task, Identify, Locate, Inform, Define<TaskDefinition> {
  const Task._();

  const factory Task.linear({
    required final String icon,
    required final String name,
    required final String description,
    required final List<TaskDefinition> definitions,
    required String hierarchyPath,
    required String id,
    @UuidConverter() UuidValue? uuid,
  }) = _Linear;

  const factory Task.diverge({
    required final String icon,
    required final String name,
    required final String description,
    required final List<TaskDefinition> definitions,
    required String hierarchyPath,
    required String id,
    @UuidConverter() UuidValue? uuid,
  }) = _Diverge;

  const factory Task.converge({
    required final String icon,
    required final String name,
    required final String description,
    required final List<TaskDefinition> definitions,
    required String hierarchyPath,
    required String id,
    @UuidConverter() UuidValue? uuid,
  }) = _Converge;

  const factory Task.feedback({
    required final String icon,
    required final String name,
    required final String description,
    required final List<TaskDefinition> definitions,
    required String hierarchyPath,
    required String id,
    @UuidConverter() UuidValue? uuid,
  }) = _Feedback;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  @override
  String get collectionSlug => map(
        linear: (_) => "linear",
        diverge: (_) => "diverge",
        converge: (_) => "converge",
        feedback: (_) => "feedback",
      );

  factory Task.createLinear({
    required final String icon,
    required final String name,
    required final String description,
    final List<TaskDefinition>? definitions,
    // required final String collectionSlug,
    required final String hierarchyPath,
    final String? id,
    final String? uuid,
  }) =>
      Task.linear(
        icon: icon,
        name: name,
        description: description,
        definitions: definitions ?? [],
        // collectionSlug: collectionSlug,
        hierarchyPath: hierarchyPath,
        id: id ?? slugify(name),
        uuid: uuid != null && uuid.isNotEmpty
            ? UuidValue(uuid)
            : const Uuid().v4obj(),
      );

  factory Task.createDiverge({
    required final String icon,
    required final String name,
    required final String description,
    final List<TaskDefinition>? definitions,
    // required final String collectionSlug,
    required final String hierarchyPath,
    final String? id,
    final String? uuid,
  }) =>
      Task.diverge(
        icon: icon,
        name: name,
        description: description,
        definitions: definitions ?? [],
        // collectionSlug: collectionSlug,
        hierarchyPath: hierarchyPath,
        id: id ?? slugify(name),
        uuid: uuid != null && uuid.isNotEmpty
            ? UuidValue(uuid)
            : const Uuid().v4obj(),
      );

  factory Task.createConverge({
    required final String icon,
    required final String name,
    required final String description,
    final List<TaskDefinition>? definitions,
    // required final String collectionSlug,
    required final String hierarchyPath,
    final String? id,
    final String? uuid,
  }) =>
      Task.converge(
        icon: icon,
        name: name,
        description: description,
        definitions: definitions ?? [],
        // collectionSlug: collectionSlug,
        hierarchyPath: hierarchyPath,
        id: id ?? slugify(name),
        uuid: uuid != null && uuid.isNotEmpty
            ? UuidValue(uuid)
            : const Uuid().v4obj(),
      );
}
