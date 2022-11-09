import 'package:isar/isar.dart' hide Collection, WhereRepeatModifier;
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/exercise.dart';
import 'package:method_core/model/session.dart';
import 'package:method_isar/entry/collection.dart';
import '../collection/collection.dart';
import '../schema.dart';
import 'mapper.dart';

class DbSessionCollection
    extends DaoDefinitionCollection<Session, DbSession, Entry, DbEntry>
    with DaoDocumentCollection<Session, DbSession, Exercise, DbExercise> {
  const DbSessionCollection(super.driver);

  @override
  IsarCollection<DbExercise> get templateCollection =>
      source.instance.dbExercises;

  Stream<List<Session>> streamByExercise(Exercise exercise) => this
      .collection
      .filter()
      .template((q) => q.idEqualTo(exercise.id))
      .watch(fireImmediately: true)
      .map<List<Session>>(
        (event) => event.map<Session>((e) => toDom(e)).toList(),
      );

  @override
  WhereRepeatModifier<DbSession, DbSession, String> get idEqualTo =>
      ((q, element) => q.idEqualTo(element));

  @override
  DbSession toDao(Session dom) => DbSessionMapper.toDao(dom: dom);

  @override
  Session toDom(DbSession dao) => DbSessionMapper.toDom(dao: dao);

  // DaoDefinitionCollection

  @override
  Collection<Entry, DbEntry> get childCollection => DbEntryCollection(source);

  @override
  final parentToDao = DbSessionMapper.toDao;

  @override
  final parentToDom = DbSessionMapper.toDom;
}
