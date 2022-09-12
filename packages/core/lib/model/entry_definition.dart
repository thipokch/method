import 'package:freezed_annotation/freezed_annotation.dart';

import '../abstract/identify.dart';
import '../abstract/locate.dart';

part 'entry_definition.freezed.dart';
part 'entry_definition.g.dart';

@freezed
class EntryDefinition with _$EntryDefinition, Identify, Locate {
  const EntryDefinition._();

  const factory EntryDefinition.label({
    required String collectionSlug,
    required String hierarchyPath,
    required String id,
    required String uuid,
  }) = _Label;

  const factory EntryDefinition.note({
    required String collectionSlug,
    required String hierarchyPath,
    required String id,
    required String uuid,
  }) = _Note;

  @override
  String get collectionSlug => map(
        label: (_) => "label",
        note: (_) => "note",
      );

  factory EntryDefinition.fromJson(Map<String, dynamic> json) =>
      _$EntryDefinitionFromJson(json);
}
