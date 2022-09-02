import 'package:freezed_annotation/freezed_annotation.dart';

import '../abstract/identify.dart';
import '../abstract/inform.dart';
import '../abstract/locate.dart';

part 'task_definition.freezed.dart';

@freezed
class TaskDefinition with _$TaskDefinition, Identify, Locate, Inform {
  const TaskDefinition._();

  const factory TaskDefinition.label({
    required final String name,
    required final String description,
    required String collectionSlug,
    required String hierarchyPath,
    required String id,
    required String uuid,
  }) = _Label;

  const factory TaskDefinition.note({
    required final String name,
    required final String description,
    required String collectionSlug,
    required String hierarchyPath,
    required String id,
    required String uuid,
  }) = _Note;
}
