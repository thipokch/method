part of '../schema.dart';

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
