import 'package:core/abstract/describe.dart';
import 'package:core/abstract/uniform.dart';
import 'package:core/model/task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:slugify/slugify.dart';
import 'package:uuid/uuid.dart';

import '../abstract/define.dart';

part 'exercise.freezed.dart';

@freezed
class Exercise with _$Exercise, Uniform, Describe {
  @Implements<Uniform>()
  @Implements<Describe>()
  @Implements<Define<Task>>()
  const factory Exercise._({
    required final String icon,
    required final String name,
    required final String description,
    required final List<Task> definitions,
    required final String collectionSlug,
    required final String hierarchyPath,
    required final String id,
    required final String uuid,
  }) = _Exercise;

  factory Exercise.create({
    required final String icon,
    required final String name,
    final String? description,
    final List<Task>? definitions,
    required final String collectionSlug,
    required final String hierarchyPath,
    final String? id,
    final String? uuid,
  }) =>
      Exercise._(
        icon: icon,
        name: name,
        description: description ?? "",
        definitions: definitions ?? [],
        collectionSlug: collectionSlug,
        hierarchyPath: hierarchyPath,
        id: id ?? slugify(name),
        uuid: uuid ?? const Uuid().v4(),
      );
}
