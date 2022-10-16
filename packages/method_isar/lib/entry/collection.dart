// ignore_for_file: invalid_use_of_protected_member

import 'package:method_core/model/entry.dart';
import 'package:method_core/model/task.dart';
import 'package:isar/isar.dart' hide Collection, WhereRepeatModifier;

import '../collection/collection.dart';
import '../schema.dart';
import 'mapper.dart';

class DbEntryCollection
    extends DaoDocumentCollection<Entry, DbEntry, Task, DbTask> {
  const DbEntryCollection(super.driver);

  @override
  DbEntry toDao(Entry dom) => DbEntryMapper.toDao(dom: dom);

  @override
  Entry toDom(DbEntry dao) => DbEntryMapper.toDom(dao: dao);

  @override
  IsarCollection<DbTask> get templateCollection => source.instance.dbTasks;

  @override
  WhereRepeatModifier<DbEntry, DbEntry, String> get idEqualTo =>
      ((q, element) => q.idEqualTo(element));
}
