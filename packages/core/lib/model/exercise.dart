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
    required String name,
    required String description,
    required List<Task> definitions,
    required String collectionSlug,
    required String hierarchyPath,
    required String id,
    required String uuid,
  }) = _Exercise;

  factory Exercise.create({
    required String name,
    String? description,
    List<Task>? definitions,
    required String collectionSlug,
    required String hierarchyPath,
    String? id,
    String? uuid,
  }) =>
      Exercise._(
        name: name,
        description: description ?? "",
        definitions: definitions ?? [],
        collectionSlug: collectionSlug,
        hierarchyPath: hierarchyPath,
        id: id ?? slugify(name),
        uuid: uuid ?? const Uuid().v4(),
      );
}
