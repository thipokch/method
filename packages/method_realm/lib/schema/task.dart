part of 'schema.dart';

@RealmModel()
class _DbTask {
  late String icon;
  late String name;
  late String description;
  late List<String> definitions;

  @Indexed()
  late String collectionSlug;

  @Indexed()
  late String hierarchyPath;

  @Indexed()
  late String id;

  @PrimaryKey()
  late Uuid uuid;
}
