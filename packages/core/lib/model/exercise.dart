import 'package:core/abstract/present.dart';
import 'package:core/model/task.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:slugify/slugify.dart';
import 'package:uuid/uuid.dart';

import '../abstract/identify.dart';
import '../abstract/inform.dart';
import '../abstract/locate.dart';

part 'exercise.freezed.dart';

@freezed
class Exercise with _$Exercise, Identify, Locate, Inform, Present {
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
    required Presentation presentation,
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
    Presentation? presentation,
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
        presentation: presentation ??
            const Presentation(
              seed: 450.0,
              colorA: Color.fromARGB(0, 227, 200, 214),
              colorB: Color.fromARGB(0, 236, 208, 188),
              colorC: Color.fromARGB(0, 213, 193, 215),
              colorD: Color.fromARGB(0, 171, 186, 206),
            ),
      );
}
