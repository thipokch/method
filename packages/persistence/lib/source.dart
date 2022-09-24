import 'package:isar/isar.dart' show Isar;
import 'package:persistence/collection/task_definition.dart';
import 'package:repository/driver.dart';

import 'collection/entry.dart';
import 'collection/entry_definition.dart';
import 'collection/exercise.dart';
import 'collection/session.dart';
import 'collection/task.dart';

class PersistenceDriver extends Source<Isar> {
  PersistenceDriver(super.instance);

  static Future<PersistenceDriver> load() async {
    final instance = await Isar.open(
      [
        DbTaskSchema,
        DbSessionSchema,
        DbExerciseSchema,
        DbEntrySchema,
        DbTaskDefinitionSchema,
        DbEntryDefinitionSchema,
      ],
      // inspector: false,
    );

    return PersistenceDriver(instance);
  }
}
