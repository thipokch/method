import 'package:core/model/task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:slugify/slugify.dart';
import 'package:uuid/uuid.dart';

import '../abstract/identify.dart';
import '../abstract/inform.dart';
import '../abstract/locate.dart';

part 'exercise.freezed.dart';

@freezed
class Exercise with _$Exercise, Identify, Locate, Inform {
  const Exercise._();

  const factory Exercise({
    required final String icon,
    required final String name,
    required final String description,
    required final List<Task> definitions,
    required String collectionSlug,
    required String hierarchyPath,
    required String id,
    required String uuid,
  }) = _Exercise;

  factory Exercise.create({
    required final String icon,
    required final String name,
    required final String description,
    required String collectionSlug,
    final List<Task>? definitions,
    required final String hierarchyPath,
    final String? id,
    final String? uuid,
  }) =>
      Exercise(
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
