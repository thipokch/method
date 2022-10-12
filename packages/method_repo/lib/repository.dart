import 'package:method_realm/driver.dart';

import 'collection/entry.dart';
import 'collection/exercise.dart';
import 'collection/session.dart';
import 'collection/task.dart';

class Repository {
  final RealmDriver realm;

  late final ExerciseRepository exercises =
      ExerciseRepository.from(realm: realm);
  late final SessionRepository sessions = SessionRepository.from(realm: realm);
  late final EntryRepository entries = EntryRepository.from(realm: realm);
  late final TaskRepository tasks = TaskRepository.from(realm: realm);

  Repository._(this.realm);

  static Future<Repository> open() async {
    return Repository._(RealmDriver.open());
  }

  Future<void> reset() async {
    realm.reset();
  }
}
