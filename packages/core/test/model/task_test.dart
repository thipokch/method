import 'package:core/model/task.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('create', () {
    Task a = Task.createLinear(
      icon: "💫",
      description: "description",
      name: "name",
      hierarchyPath: "hierarchyPath",
    );

    expect(a.name, "name");
    expect(a.collectionSlug, "linear");
    expect(a.hierarchyPath, "hierarchyPath");

    expect(a.id, "name");
    expect(a.uuid, isNotNull);
    expect(a.definitions, isEmpty);
  });

  test('equality', () {
    Task a = Task.createLinear(
      icon: "💫",
      name: "name",
      description: "description",
      hierarchyPath: "hierarchyPath",
    );

    Task b = Task.createLinear(
      icon: "💫",
      name: "name",
      description: "description",
      hierarchyPath: "hierarchyPath",
      uuid: a.uuid.toString(),
    );

    expect(b, a);

    Task c = Task.createLinear(
      icon: "💫",
      name: "c",
      description: "description",
      hierarchyPath: "hierarchyPath",
      uuid: a.uuid.toString(),
    );

    expect(c, isNot(a));
  });

  test('copy', () {
    Task a = Task.createLinear(
      icon: "💫",
      name: "name",
      description: "description",
      hierarchyPath: "hierarchyPath",
    );
    Task a2 = a.copyWith();

    expect(a2, a);

    Task b = a.copyWith(name: "b");
    expect(b, isNot(a));
  });
}
