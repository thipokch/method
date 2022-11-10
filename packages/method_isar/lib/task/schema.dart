part of '../schema.dart';

@collection
class DbTask extends DaoObject {
  @override
  final String collectionSlug;

  final String icon;
  final String name;
  final String description;

  List<DbTaskDefinition> definitions;

  DbTask({
    required this.icon,
    required this.name,
    required this.description,
    this.definitions = const [],
    required this.collectionSlug,
    required super.hierarchyPath,
    required super.id,
    required super.uuid,
  });
}

@embedded
class DbTaskDefinition extends DaoEmbeded {
  @override
  final String collectionSlug;

  final String icon;
  final String name;
  final String description;

  const DbTaskDefinition({
    this.icon = "",
    this.name = "",
    this.description = "",
    this.collectionSlug = "",
    super.hierarchyPath = "",
    super.id = "",
  });
}
