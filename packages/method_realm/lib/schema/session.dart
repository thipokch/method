part of 'schema.dart';

@RealmModel()
class _DbSession {
  late _DbExercise? template;
  late List<_DbEntry> definitions;

  @Ignored()
  final String collectionSlug = "session";

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
