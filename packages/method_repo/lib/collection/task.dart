import 'package:method_core/model/task.dart';
import 'package:method_isar/driver.dart';
import 'package:method_isar/task/collection.dart';

class TaskRepository with IsarRepository<Task, DbTaskCollection> {
  @override
  final DbTaskCollection isarCollection;

  const TaskRepository._(this.isarCollection);

  factory TaskRepository.from({
    required IsarDriver isar,
  }) =>
      TaskRepository._(DbTaskCollection(isar));
}
