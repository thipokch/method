import 'package:core/model/entry.dart';
import 'package:core/model/task.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('create()', () {
    Task aTemplate = Task.create(
      icon: "💫",
      name: "name",
      collectionSlug: "collectionSlug",
      hierarchyPath: "hierarchyPath",
    );

    Entry a = Entry.create(
      template: aTemplate,
      collectionSlug: "collectionSlug",
      hierarchyPath: "hierarchyPath",
      id: "id",
    );

    expect(a.collectionSlug, "collectionSlug");
    expect(a.hierarchyPath, "hierarchyPath");
    expect(a.id, "id");
    expect(a.template, aTemplate);

    expect(a.uuid, isNotEmpty);
    expect(a.definitions, isEmpty);
  });
}
