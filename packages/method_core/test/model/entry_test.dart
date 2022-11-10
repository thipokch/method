import 'package:method_core/model/entry.dart';
import 'package:method_core/model/task.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('create()', () {
    Task aTemplate = Task.createLinear(
      icon: "💫",
      description: "description",
      name: "name",
      // collectionSlug: "collectionSlug",
      hierarchyPath: "hierarchyPath",
    );

    Entry a = Entry.create(
      template: aTemplate,
      hierarchyPath: "hierarchyPath",
      id: "id",
    );

    expect(a.hierarchyPath, "hierarchyPath");
    expect(a.id, "id");
    expect(a.template, aTemplate);

    expect(a.uuid, isNotNull);
    expect(a.definitions, isEmpty);
  });
}
