import 'package:freezed_annotation/freezed_annotation.dart';

import '../abstract/identify.dart';
import '../abstract/locate.dart';

part 'entry_definition.freezed.dart';

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
}
