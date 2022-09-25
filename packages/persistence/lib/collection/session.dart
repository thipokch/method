import 'package:core/abstract/uniform.dart';
import 'package:core/model/entry.dart';
import 'package:core/model/session.dart';
import 'package:core/util/uuid.dart';
import 'package:isar/isar.dart' hide Collection, WhereRepeatModifier;
import 'package:persistence/collection/entry.dart';
import 'package:persistence/collection/exercise.dart';

import '../collection.dart';

part 'session.g.dart';

@collection
class DbSession extends DaoWithDefinitions<Session, Entry, DbEntry> {
  final template = IsarLink<DbExercise>();

  DbSession({
    super.definitions = const [],
    required super.hierarchyPath,
    required super.id,
    required super.uuid,
  }) : super(collectionSlug: "session");
}

class SessionMapper {
  const SessionMapper._();

  static DbSession toDao({
    required Session dom,
  }) =>
      DbSession(
        definitions:
            dom.definitions.map((dom) => EntryMapper.toDao(dom: dom)).toList(),
        hierarchyPath: dom.hierarchyPath,
        id: dom.id,
        uuid: dom.uuid?.toBytes() ?? const Uuid().v4obj().toBytes(),
      );

  static Session toDom({
    required DbSession dao,
  }) =>
      Session(
        template: ExerciseMapper.toDom(dao: dao.template.value!),
        definitions:
            dao.definitions.map((dao) => EntryMapper.toDom(dao: dao)).toList(),
        hierarchyPath: dao.hierarchyPath,
        id: dao.id,
        uuid: UuidValue.fromList(dao.uuid),
      );
}

class SessionRepository
    extends CollectionWithDefinitions<Session, DbSession, Entry, DbEntry> {
  const SessionRepository(super.driver);

  @override
  final parentToDao = SessionMapper.toDao;

  @override
  final parentToDom = SessionMapper.toDom;

  @override
  WhereRepeatModifier<DbSession, DbSession, Uniform> get uniformEqualTo =>
      (q, uniform) => q.hierarchyPathIdEqualTo(
            uniform.hierarchyPath,
            uniform.id,
          );

  @override
  Collection<Entry, DbEntry> get childCollection => EntryRepository(source);

  @override
  Future<int> put(Session dom) => super.put(dom)
    ..then((dbid) => this.collection.getSync(dbid)!
          ..template.value =
              source.instance.dbExercises.getByIdSync(dom.template.id)!)
        .then((dao) => write(() => dao.template.save()));
}
