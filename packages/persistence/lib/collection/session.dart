import 'package:core/model/entry.dart';
import 'package:core/model/exercise.dart';
import 'package:core/model/session.dart';
import 'package:isar/isar.dart';
import 'package:persistence/collection/entry.dart';
import 'package:persistence/collection/exercise.dart';

import '../collection.dart';

part 'session.g.dart';

@collection
class DbSession extends CollectionObject<Session> {
  Id? dbid;

  @override
  @Index(composite: [CompositeIndex('id')])
  String hierarchyPath;

  List<byte> uuid;

  @override
  @Index(unique: true)
  String id;

  final template = IsarLink<DbExercise>();
  final definitions = IsarLinks<DbEntry>();

  DbSession({
    required this.hierarchyPath,
    required this.id,
    required this.uuid,
  });

  static DbSession from({
    required Session model,
  }) =>
      DbSession(
        hierarchyPath: model.hierarchyPath,
        id: model.id,
        uuid: model.uuid!.toBytes(),
      );

  @override
  Session toModel() => Session(
        template: template.value?.toModel() ??
            Exercise.create(
              icon: "icon",
              name: "name",
              description: "description",
              hierarchyPath: "hierarchyPath",
            ),
        definitions:
            definitions.map<Entry>((element) => element.toModel()).toList(),
        hierarchyPath: hierarchyPath,
        id: id,
      );
}
