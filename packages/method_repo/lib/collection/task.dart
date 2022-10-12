import 'package:method_core/model/task.dart';
import 'package:method_realm/collection/collection.dart';
import 'package:method_realm/driver.dart';

class TaskRepository with RealmRepository<Task, TaskCollection> {
  @override
  final TaskCollection realmCollection;

  const TaskRepository._(this.realmCollection);

  factory TaskRepository.from({
    required RealmDriver realm,
  }) =>
      TaskRepository._(TaskCollection(realm));
}
