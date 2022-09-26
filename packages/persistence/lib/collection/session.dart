// ignore_for_file: invalid_use_of_protected_member

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
  @override
  final String collectionSlug = "session";

  final template = IsarLink<DbExercise>();

  DbSession({
    super.definitions = const [],
    required super.hierarchyPath,
    required super.id,
    required super.uuid,
  });
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
  Collection<Entry, DbEntry> get childCollection => EntryRepository(source);

  @override
  Future<int> put(Session dom) async =>
      write(() => this.collection.putByIndex('id', toDao(dom)), silent: true)
        ..then((dbid) => this.collection.get(dbid))
            .then((dao) => dao!
              ..template.value =
                  source.instance.dbExercises.getByIdSync(dom.template.id)!)
            .then((dao) => write(() => dao.template.save()));

  @override
  Future<List<int>> putAll(List<Session> doms) async {
    final prom = super.putAll(doms);

    await prom
        .then((dbids) => this.collection.getAll(dbids))
        .then((daos) => daos.whereType<DbSession>().toList())
        .then((daos) {
      final daosExercise = source.instance.dbExercises
          .getAllByIdSync(doms.map((e) => e.template.id).toList());

      final writeSync = Isar.getInstance()!.writeTxnSync;

      daos.asMap().entries.forEach((e) {
        e.value.template.value = daosExercise[e.key];
        writeSync(() => e.value.template.saveSync());
      });
    });

    return prom;
  }
}
