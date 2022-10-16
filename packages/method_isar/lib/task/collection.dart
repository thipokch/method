import 'package:method_core/model/task.dart';

import '../collection/collection.dart';
import '../schema.dart';
import 'mapper.dart';

class DbTaskCollection extends Collection<Task, DbTask> {
  const DbTaskCollection(super.driver);

  @override
  DbTask toDao(Task dom) => DbTaskMapper.toDao(dom: dom);

  @override
  Task toDom(DbTask dao) => DbTaskMapper.toDom(dao: dao);

  @override
  WhereRepeatModifier<DbTask, DbTask, String> get idEqualTo =>
      ((q, element) => q.idEqualTo(element));
}
