import 'package:method_isar/collection/entry.dart';
import 'package:method_isar/collection/exercise.dart';
import 'package:method_isar/collection/session.dart';
import 'package:method_isar/collection/task.dart';
import 'package:method_isar/source.dart';

class Repository {
  final PersistenceDriver local;

  late final ExerciseRepository exercises = ExerciseRepository(local);
  late final SessionRepository sessions = SessionRepository(local);
  late final EntryRepository entries = EntryRepository(local);
  late final TaskRepository tasks = TaskRepository(local);

  Repository._(this.local);

  static Future<Repository> load() async =>
      Repository._(await PersistenceDriver.load());

  Future<void> clear() => local.instance.writeTxn(() => local.instance.clear());
}
