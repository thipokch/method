import 'package:core/model/task.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('create', () {
    Task a = Task.create(
      icon: "💫",
      description: "description",
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

  test('equality', () {
    Task a = Task.create(
      icon: "💫",
      name: "name",
      description: "description",
      collectionSlug: "collectionSlug",
      hierarchyPath: "hierarchyPath",
    );

    Task b = Task.create(
      icon: "💫",
      name: "name",
      description: "description",
      collectionSlug: "collectionSlug",
      hierarchyPath: "hierarchyPath",
      uuid: a.uuid,
    );

    expect(b, a);

    Task c = Task.create(
      icon: "💫",
      name: "c",
      description: "description",
      collectionSlug: "collectionSlug",
      hierarchyPath: "hierarchyPath",
      uuid: a.uuid,
    );

    expect(c, isNot(a));
  });

  test('copy', () {
    Task a = Task.create(
      icon: "💫",
      name: "name",
      description: "description",
      collectionSlug: "collectionSlug",
      hierarchyPath: "hierarchyPath",
    );
    Task a2 = a.copyWith();

    expect(a2, a);

    Task b = a.copyWith(name: "b");
    expect(b, isNot(a));
  });
}
