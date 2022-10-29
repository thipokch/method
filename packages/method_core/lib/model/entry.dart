import 'package:method_core/abstract/maintain.dart';
import 'package:method_core/model/definition.dart';
import 'package:method_core/model/task.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_core/model/task_definition.dart';

import '../abstract/define.dart';
import '../abstract/identify.dart';
import '../abstract/locate.dart';
import '../abstract/uniform.dart';
import '../util/uuid.dart';
import 'entry_definition.dart';

part 'entry.freezed.dart';
part 'entry.g.dart';

@freezed
class Entry
    with
        Identify,
        Locate,
        Maintain,
        Uniform,
        DefineTemplate<Task>,
        DefineDefinition<EntryDefinition>,
        DefinitionBuilder<Task, TaskDefinition, EntryDefinition>,
        _$Entry {
  const Entry._();

  const factory Entry({
    required final Task template,
    required final List<EntryDefinition> definitions,
    required final String hierarchyPath,
    required final String id,
    @UuidConverter() final UuidValue? uuid,
    required final DateTime createdAt,
    required final DateTime readAt,
    required final DateTime updatedAt,
    final DateTime? commitedAt,
    final DateTime? deletedAt,
  }) = _Entry;

  factory Entry.create({
    required final Task template,
    final List<EntryDefinition>? definitions,
    required final String hierarchyPath,
    required final String id,
    final String? uuid,
    final DateTime? commitedAt,
  }) =>
      Entry(
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

  factory Entry.from({
    required final Task template,
  }) =>
      Entry.create(
        template: template,
        hierarchyPath: "${template.hierarchyPath}/${template.id}",
        id: DateTime.now().millisecondsSinceEpoch.toString(),
      );

  factory Entry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);

  @override
  final String collectionSlug = "exercise";

  List<TaskDefinition> get labels => definitions
      .asMap()
      .entries
      .map((e) => e.value.maybeMap(
            label: (_) => true,
            orElse: () => false,
          )
              ? template.definitions[e.key]
              : null)
      .whereType<TaskDefinition>()
      .toList();

  @override
  String commandIdMapper(TaskDefinition cd) => cd.id;

  @override
  String dataIdMapper(EntryDefinition d) => d.id;

  @override
  String toString() =>
      "Entry($uniformString, task: $template, definitions: $definitions)";
}
