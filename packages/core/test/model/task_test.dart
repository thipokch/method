import 'package:core/model/task.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('construct using create()', () {
    Task a = Task.create(
      name: "name",
      collectionSlug: "collectionSlug",
      hierarchyPath: "hierarchyPath",
    );

    expect(a.name, "name");
    expect(a.collectionSlug, "collectionSlug");
    expect(a.hierarchyPath, "hierarchyPath");

    expect(a.id, "name");
    expect(a.uuid, isNotEmpty);
    expect(a.definitions, isEmpty);
  });
}
