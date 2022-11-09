part of 'schema.dart';

@RealmModel()
class _DbEntry {
  late _DbTask? template;
  late List<String> definitions;

  @Ignored()
  final String collectionSlug = "entry";

  @Indexed()
  late String hierarchyPath;

  @Indexed()
  late String id;

  @PrimaryKey()
  late Uuid uuid;

  late DateTime createdAt;
  late DateTime readAt;
  late DateTime updatedAt;
  late DateTime? commitedAt;
  late DateTime? deletedAt;
}
