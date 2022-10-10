// ignore_for_file: invalid_use_of_protected_member

import 'package:method_core/model/entry.dart';
import 'package:method_core/model/exercise.dart';
import 'package:method_core/model/session.dart';
import 'package:method_core/util/uuid.dart';
import 'package:isar/isar.dart' hide Collection, WhereRepeatModifier;
import 'package:method_isar/collection/entry.dart';
import 'package:method_isar/collection/exercise.dart';

import '../collection.dart';

part 'session.g.dart';

@collection
class DbSession extends DaoDefinition<Session, Entry, DbEntry>
    with DaoDocument<DbExercise> {
  @override
  final String collectionSlug = "session";

  @override
  final DateTime createdAt;
  @override
  final DateTime readAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime? commitedAt;
  @override
  final DateTime? deletedAt;

  DbSession({
    super.definitions = const [],
    required super.hierarchyPath,
    required super.id,
    required super.uuid,
    required this.createdAt,
    required this.readAt,
    required this.updatedAt,
    this.commitedAt,
    this.deletedAt,
  });
}

class SessionMapper {
  const SessionMapper._();

  static DbSession toDao({
    required Session dom,
  }) =>
      DbSession(
        definitions: dom.definitions
            .map((dom) => dom != null ? EntryMapper.toDao(dom: dom) : null)
            .toList(),
        hierarchyPath: dom.hierarchyPath,
        id: dom.id,
        uuid: dom.uuid?.toBytes() ?? const Uuid().v4obj().toBytes(),
        createdAt: dom.createdAt,
        readAt: dom.readAt,
        updatedAt: dom.updatedAt,
        commitedAt: dom.commitedAt,
        deletedAt: dom.deletedAt,
      );

  static Session toDom({
    required DbSession dao,
  }) =>
      Session(
        template: ExerciseMapper.toDom(dao: dao.template.value!),
        definitions: dao.definitions
            .map((dao) => dao != null ? EntryMapper.toDom(dao: dao) : null)
            .toList(),
        hierarchyPath: dao.hierarchyPath,
        id: dao.id,
        uuid: UuidValue.fromList(dao.uuid),
        createdAt: dao.createdAt,
        readAt: dao.readAt,
        updatedAt: dao.updatedAt,
        commitedAt: dao.commitedAt,
        deletedAt: dao.deletedAt,
      );
}

class SessionRepository
    extends DaoDocumentCollection<Session, DbSession, Exercise, DbExercise> {
  const SessionRepository(super.driver);

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
  DbSession toDao(Session dom) => SessionMapper.toDao(dom: dom);

  @override
  Session toDom(DbSession dao) => SessionMapper.toDom(dao: dao);
}
