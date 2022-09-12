import 'package:core/model/exercise.dart';
import 'package:core/model/session.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('create()', () {
    Exercise aTemplate = Exercise.create(
      icon: "💫",
      description: "description",
      name: "name",
      hierarchyPath: "hierarchyPath",
    );

    Session a = Session.create(
      template: aTemplate,
      collectionSlug: "collectionSlug",
      hierarchyPath: "hierarchyPath",
      id: "id",
    );

    expect(a.hierarchyPath, "hierarchyPath");
    expect(a.id, "id");
    expect(a.template, aTemplate);

    expect(a.uuid, isNotEmpty);
    expect(a.definitions, isEmpty);
  });
}
