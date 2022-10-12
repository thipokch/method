import 'package:method_repo/source/driver.dart';
import 'package:isar/isar.dart' show Isar;

import 'collection/entry.dart';
import 'collection/exercise.dart';
import 'collection/session.dart';
import 'collection/task.dart';

class PersistenceDriver extends SourceDriver<Isar> {
  PersistenceDriver(super.instance);

  static Future<PersistenceDriver> load() async {
    final instance = await Isar.open(
      [
        DbTaskSchema,
        DbSessionSchema,
        DbExerciseSchema,
        DbEntrySchema,
      ],
      // inspector: false,
    );

    return PersistenceDriver(instance);
  }
}
