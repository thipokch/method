import 'package:core/abstract/uniform.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'entry_definition.freezed.dart';

@freezed
class EntryDefinition with _$EntryDefinition, Uniform {
  const EntryDefinition._();

  @Implements<Uniform>()
  const factory EntryDefinition.label({
    required final String hierarchyPath,
    required final String id,
    required final String text,
  }) = _Label;

  @Implements<Uniform>()
  const factory EntryDefinition.note({
    required final String hierarchyPath,
    required final String id,
    required final String text,
  }) = _Note;

  @override
  String get collectionSlug => when(
        label: ((hierarchyPath, id, text) => "label"),
        note: ((hierarchyPath, id, text) => "note"),
      );

  @override
  String get uuid => "";
}
