part of 'schema.dart';

@RealmModel()
class _DbExercise {
  late String icon;
  late String name;
  late String description;
  late List<_DbTask> definitions;

  @Ignored()
  final String collectionSlug = "exercise";

  @Indexed()
  late String hierarchyPath;

  @Indexed()
  late String id;

  @PrimaryKey()
  late Uuid uuid;

  late String presentation;
}
