import 'package:persistence/collection/entry.dart';
import 'package:persistence/collection/exercise.dart';
import 'package:persistence/collection/session.dart';
import 'package:persistence/collection/task.dart';
import 'package:persistence/source.dart';

class Repository {
  final PersistenceDriver local;

  late final ExerciseRepository exercises = ExerciseRepository(local);
  late final SessionRepository sessions = SessionRepository(local);
  late final EntryRepository entries = EntryRepository(local);
  late final TaskRepository tasks = TaskRepository(local);

  Repository._(this.local);

  static Future<Repository> load() async {
    final local = await PersistenceDriver.load();

    return Repository._(local);
  }
}
