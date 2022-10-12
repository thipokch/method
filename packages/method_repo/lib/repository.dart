// ignore_for_file: unused_import

import 'package:flutter/foundation.dart';
import 'package:method_realm/driver.dart';

import 'collection/entry.dart';
import 'collection/exercise.dart';
import 'collection/session.dart';
import 'collection/task.dart';

class Repository {
  final RealmDriver _realm;

  late final ExerciseRepository exercises =
      ExerciseRepository.from(realm: _realm);
  late final SessionRepository sessions = SessionRepository.from(realm: _realm);
  late final EntryRepository entries = EntryRepository.from(realm: _realm);
  late final TaskRepository tasks = TaskRepository.from(realm: _realm);

  Repository._(this._realm);

  static Future<Repository> open() async {
    return Repository._(RealmDriver.open());
  }

  Future<Repository> reset() async {
    await _realm.reset();

    return open();
  }
}
