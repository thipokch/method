// ignore_for_file: invalid_use_of_protected_member

import 'package:core/model/entry.dart';
import 'package:core/model/exercise.dart';
import 'package:core/model/session.dart';
import 'package:core/util/uuid.dart';
import 'package:isar/isar.dart' hide Collection, WhereRepeatModifier;
import 'package:persistence/collection/entry.dart';
import 'package:persistence/collection/exercise.dart';

import '../collection.dart';

part 'session.g.dart';

@collection
class DbSession extends DaoDefinition<Session, Entry, DbEntry>
    with DaoTemplate<DbExercise> {
  @override
  final String collectionSlug = "session";

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
    extends DaoDefinitionCollection<Session, DbSession, Entry, DbEntry>
    with DaoTemplateCollection<Session, DbSession, Exercise, DbExercise> {
  const SessionRepository(super.driver);

  @override
  final parentToDao = SessionMapper.toDao;

  @override
  final parentToDom = SessionMapper.toDom;

  @override
  IsarCollection<DbExercise> get templateCollection =>
      source.instance.dbExercises;

  @override
  Collection<Entry, DbEntry> get childCollection => EntryRepository(source);

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
}
