import 'package:core/abstract/describe.dart';
import 'package:core/abstract/uniform.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_definition.freezed.dart';

@freezed
class TaskDefinition with _$TaskDefinition, Uniform, Describe {
  const TaskDefinition._();

  @Implements<Uniform>()
  @Implements<Describe>()
  const factory TaskDefinition.label({
    required final String name,
    required final String description,
    required final String hierarchyPath,
    required final String id,
    required final String text,
  }) = _Label;

  @Implements<Uniform>()
  @Implements<Describe>()
  const factory TaskDefinition.note({
    required final String name,
    required final String description,
    required final String hierarchyPath,
    required final String id,
    required final String text,
  }) = _Note;

  @override
  String get collectionSlug => when(
        label: ((name, description, hierarchyPath, id, text) => "label"),
        note: ((name, description, hierarchyPath, id, text) => "note"),
      );

  @override
  String get uuid => "";
}