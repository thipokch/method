part of '../schema.dart';

@collection
class DbEntry extends DaoObject with DaoDocument<DbTask> {
  @override
  final String collectionSlug = "entry";

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

  List<DbEntryDefinition?> definitions;

  DbEntry({
    this.definitions = const [],
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

@embedded
class DbEntryDefinition extends DaoEmbeded {
  @override
  final String collectionSlug;
  final String data;

  const DbEntryDefinition({
    this.data = "",
    this.collectionSlug = "",
    super.hierarchyPath = "",
    super.id = "",
  });
}
