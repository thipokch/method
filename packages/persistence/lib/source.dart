import 'package:core/abstract/uniform.dart';
import 'package:core/model/entry.dart';
import 'package:core/model/exercise.dart';
import 'package:core/model/session.dart';
import 'package:core/model/task.dart';
import 'package:isar/isar.dart' show Isar;
import 'package:persistence/collection/task_definition.dart';
import 'package:repository/driver.dart';

import 'collection.dart';
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

class TaskRepository extends Collection<Task, DbTask> {
  const TaskRepository(super.driver);

  @override
  DbTask dboFrom(Task model) => DbTask.from(model: model);

  @override
  WhereRepeatModifier<DbTask, DbTask, Uniform> get queryUniforms =>
      (q, uniform) => q.hierarchyPathIdEqualTo(
            uniform.hierarchyPath,
            uniform.id,
          );
}

class SessionRepository extends Collection<Session, DbSession> {
  const SessionRepository(super.driver);

  @override
  DbSession dboFrom(Session model) => DbSession.from(model: model);

  @override
  WhereRepeatModifier<DbSession, DbSession, Uniform> get queryUniforms =>
      (q, uniform) => q.hierarchyPathIdEqualTo(
            uniform.hierarchyPath,
            uniform.id,
          );
}

class ExerciseRepository extends Collection<Exercise, DbExercise> {
  const ExerciseRepository(super.driver);

  @override
  DbExercise dboFrom(Exercise model) => DbExercise.from(model: model);

  @override
  WhereRepeatModifier<DbExercise, DbExercise, Uniform> get queryUniforms =>
      (q, uniform) => q.hierarchyPathIdEqualTo(
            uniform.hierarchyPath,
            uniform.id,
          );
}

class EntryRepository extends Collection<Entry, DbEntry> {
  const EntryRepository(super.driver);

  @override
  DbEntry dboFrom(Entry model) => DbEntry.from(model: model);

  @override
  WhereRepeatModifier<DbEntry, DbEntry, Uniform> get queryUniforms =>
      (q, uniform) => q.hierarchyPathIdEqualTo(
            uniform.hierarchyPath,
            uniform.id,
          );
}
