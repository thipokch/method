import 'package:method_isar/driver.dart';

import 'collection/entry.dart';
import 'collection/exercise.dart';
import 'collection/session.dart';
import 'collection/task.dart';

class Repository {
  final IsarDriver _isar;

  late final ExerciseRepository exercises =
      ExerciseRepository.from(isar: _isar);
  late final SessionRepository sessions = SessionRepository.from(isar: _isar);
  late final EntryRepository entries = EntryRepository.from(isar: _isar);
  late final TaskRepository tasks = TaskRepository.from(isar: _isar);

  Repository._(this._isar);

  static Future<Repository> open() async =>
      Repository._(await IsarDriver.open());

  Future<Repository> reset() async {
    await _isar.reset();

    return open();
  }
}
