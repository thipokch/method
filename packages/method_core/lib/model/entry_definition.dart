import 'package:built_collection/built_collection.dart';
import 'package:method_core/model/definition.dart';
import 'package:method_core/model/task_definition.dart';
import 'package:method_core/util/uuid.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiver/core.dart';

import '../abstract/identify.dart';
import '../abstract/locate.dart';
import '../abstract/uniform.dart';

export '../util/list.dart';

part 'entry_definition.freezed.dart';
part 'entry_definition.g.dart';

@freezed
class EntryDefinition with _$EntryDefinition, Identify, Locate, Uniform {
  const EntryDefinition._();

  const factory EntryDefinition.label({
    required final String hierarchyPath,
    required final String id,
    @UuidConverter() final UuidValue? uuid,
  }) = _Label;

  const factory EntryDefinition.note({
    required final String data,
    required final String hierarchyPath,
    required final String id,
    @UuidConverter() final UuidValue? uuid,
  }) = _Note;

  factory EntryDefinition.from({
    required final TaskDefinition template,
    final String? data,
  }) =>
      template.map(
        label: (_) => EntryDefinition.label(
          hierarchyPath: _.hierarchyPath,
          id: _.id,
        ),
        note: (_) => EntryDefinition.note(
          data: data ?? "",
          // data: data!,
          hierarchyPath: _.hierarchyPath,
          id: _.id,
        ),
      );

  @override
  String get collectionSlug => map(
        label: (_) => "label",
        note: (_) => "note",
      );

  factory EntryDefinition.fromJson(Map<String, dynamic> json) =>
      _$EntryDefinitionFromJson(json);

  @override
  String toString() => map(
        label: (_) => "EntryDefinition.label(${_.uniformString})",
        note: (_) => "EntryDefinition.note(${_.uniformString})",
      );
}

typedef EntryDefinitionPair
    = MapEntry<TaskDefinition, Optional<EntryDefinition>>;
typedef EntryDefinitionList
    = BuiltList<MapEntry<TaskDefinition, Optional<EntryDefinition>>>;
typedef BuildEntryDefinition = BuiltDefinition<TaskDefinition, EntryDefinition>;
typedef BuildMultiEntryDefinition
    = BuiltMultiDefinition<TaskDefinition, EntryDefinition>;

extension AsEntryDefinitionList on BuildEntryDefinition {
  List<EntryDefinition> asEntryDefinitionList() =>
      map.values.expand((_) => _).toList();
}
