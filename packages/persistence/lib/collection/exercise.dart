import 'dart:convert';

import 'package:core/abstract/present.dart';
import 'package:core/model/exercise.dart';
import 'package:isar/isar.dart';
import 'package:persistence/collection/task.dart';

import '../collection.dart';

part 'exercise.g.dart';

@collection
class DbExercise extends CollectionObject<Exercise> {
  Id? dbid;

  @override
  @Index(composite: [CompositeIndex('id')])
  String hierarchyPath;

  List<byte> uuid;

  @override
  @Index(unique: true)
  String id;

  final definitions = IsarLinks<DbTask>();

  String icon;
  String name;
  String description;

  String presentation;

  DbExercise({
    required this.icon,
    required this.name,
    required this.description,
    required this.hierarchyPath,
    required this.id,
    required this.uuid,
    required this.presentation,
  });

  static DbExercise from({
    required Exercise model,
  }) =>
      DbExercise(
        icon: model.icon,
        name: model.name,
        description: model.description,
        hierarchyPath: model.hierarchyPath,
        id: model.id,
        uuid: model.uuid!.toBytes(),
        presentation: jsonEncode(model.presentation.toJson()),
      );

  @override
  Exercise toModel() => Exercise(
        icon: icon,
        name: name,
        description: description,
        definitions: [],
        hierarchyPath: hierarchyPath,
        id: id,
        presentation: Presentation.fromJson(jsonDecode(presentation)),
      );
}
