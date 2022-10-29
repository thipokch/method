import 'package:freezed_annotation/freezed_annotation.dart';
import '../abstract/identify.dart';
import '../abstract/inform.dart';
import '../abstract/locate.dart';
import '../abstract/uniform.dart';
import '../util/uuid.dart';

part 'task_definition.freezed.dart';
part 'task_definition.g.dart';

@freezed
class TaskDefinition with _$TaskDefinition, Identify, Locate, Uniform, Inform {
  const TaskDefinition._();

  const factory TaskDefinition.label({
    required final String icon,
    required final String name,
    required final String description,
    required final String hierarchyPath,
    required final String id,
    @UuidConverter() final UuidValue? uuid,
  }) = _Label;

  const factory TaskDefinition.note({
    required final String icon,
    required final String name,
    required final String description,
    required final String hierarchyPath,
    required final String id,
    @UuidConverter() final UuidValue? uuid,
  }) = _Note;

  factory TaskDefinition.fromJson(Map<String, dynamic> json) =>
      _$TaskDefinitionFromJson(json);

  @override
  String get collectionSlug => map(
        label: (_) => "label",
        note: (_) => "note",
      );

  @override
  String toString() => map(
        label: (_) => "TaskDefinition.label(${_.uniformString})",
        note: (_) => "TaskDefinition.note(${_.uniformString})",
      );
}
