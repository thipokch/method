import 'package:method_core/model/exercise.dart';
import 'package:method_core/model/session.dart';
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
