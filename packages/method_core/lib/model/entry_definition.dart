import 'package:method_core/model/task_definition.dart';
import 'package:method_core/util/uuid.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../abstract/identify.dart';
import '../abstract/locate.dart';

export '../util/list.dart';

part 'entry_definition.freezed.dart';
part 'entry_definition.g.dart';

@freezed
class EntryDefinition with _$EntryDefinition, Identify, Locate {
  const EntryDefinition._();

  const factory EntryDefinition.label({
    required String hierarchyPath,
    required String id,
    @UuidConverter() UuidValue? uuid,
  }) = _Label;

  const factory EntryDefinition.note({
    required String data,
    required String hierarchyPath,
    required String id,
    @UuidConverter() UuidValue? uuid,
  }) = _Note;

  factory EntryDefinition.from({
    required final TaskDefinition template,
    String? data,
  }) =>
      template.map(
        label: (_) => EntryDefinition.label(
          hierarchyPath: _.hierarchyPath,
          id: _.id,
        ),
        note: (_) => EntryDefinition.note(
          data: data!,
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
}
