import 'package:method_core/model/exercise.dart';
import 'package:method_core/model/task.dart';

import '../collection/collection.dart';
import '../schema.dart';
import '../task/collection.dart';
import 'mapper.dart';

class DbExerciseCollection
    extends DaoDefinitionCollection<Exercise, DbExercise, Task, DbTask> {
  const DbExerciseCollection(super.driver);

  @override
  final parentToDao = DbExerciseMapper.toDao;

  @override
  final parentToDom = DbExerciseMapper.toDom;

  @override
  Collection<Task, DbTask> get childCollection => DbTaskCollection(source);

  @override
  WhereRepeatModifier<DbExercise, DbExercise, String> get idEqualTo =>
      ((q, element) => q.idEqualTo(element));
}
