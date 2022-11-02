import 'package:built_collection/built_collection.dart';
import 'package:method_core/model/definition.dart';
import 'package:method_core/model/entry.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_core/model/task.dart';
import 'package:quiver/core.dart';

import '../abstract/define.dart';
import '../abstract/identify.dart';
import '../abstract/locate.dart';
import '../abstract/maintain.dart';
import '../abstract/uniform.dart';
import '../util/uuid.dart';
import 'exercise.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@freezed
class Session
    with
        Identify,
        Locate,
        Maintain,
        Uniform,
        DefineTemplate<Exercise>,
        DefineDefinition<Entry>,
        DefinitionBuilder<Exercise, Task, Entry>,
        _$Session {
  const Session._();

  const factory Session({
    required final Exercise template,
    required final List<Entry> definitions,
    required final String hierarchyPath,
    required final String id,
    @UuidConverter() final UuidValue? uuid,
    required final DateTime createdAt,
    required final DateTime readAt,
    required final DateTime updatedAt,
    final DateTime? commitedAt,
    final DateTime? deletedAt,
  }) = _Session;

  factory Session.create({
    required final Exercise template,
    final List<Entry>? definitions,
    required final String hierarchyPath,
    required final String id,
    final String? uuid,
    final DateTime? commitedAt,
  }) =>
      Session(
        template: template,
        definitions: definitions ?? const [],
        hierarchyPath: hierarchyPath,
        id: id,
        uuid: uuid != null && uuid.isNotEmpty
            ? UuidValue(uuid)
            : const Uuid().v4obj(),
        createdAt: DateTime.now(),
        readAt: DateTime.now(),
        updatedAt: DateTime.now(),
        commitedAt: commitedAt,
      );

  factory Session.from({
    required final Exercise template,
  }) =>
      Session.create(
        template: template,
        hierarchyPath: "${template.hierarchyPath}/${template.id}",
        id: DateTime.now().millisecondsSinceEpoch.toString(),
      );

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);

  @override
  String get collectionSlug => "session";

  // List<TaskDefinition> get labels => definitions
  //     .map((e) => e.labels)
  //     .whereType<List<TaskDefinition>>()
  //     .expand((e) => e)
  //     .toList();

  @override
  String toString() => "Session($uniformString, exercise: $template)";

  // Map<String, Entry?> get mappedDefinitions =>
  //     mapId(keys: template.definitions, values: definitions);
}

typedef SessionDefinitionList = BuiltList<MapEntry<Task, Optional<Entry>>>;

extension AsEntryDefinitionList on BuiltDefinition<Task, Entry> {
  List<Entry> asEntryList() => map.values.expand((_) => _).toList();
}
