import 'package:core/model/task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import '../abstract/define.dart';
import '../abstract/identify.dart';
import '../abstract/locate.dart';
import 'entry_definition.dart';

part 'entry.freezed.dart';

@freezed
class Entry
    with _$Entry, Identify, Locate, DefineDocument<EntryDefinition, Task> {
  const Entry._();

  const factory Entry({
    required final Task template,
    required final List<EntryDefinition> definitions,
    required String collectionSlug,
    required String hierarchyPath,
    required String id,
    required String uuid,
  }) = _Entry;

  factory Entry.create({
    required final Task template,
    required String collectionSlug,
    final List<EntryDefinition>? definitions,
    required final String hierarchyPath,
    required final String id,
    final String? uuid,
  }) =>
      Entry(
        template: template,
        definitions: definitions ?? [],
        collectionSlug: collectionSlug,
        hierarchyPath: hierarchyPath,
        id: id,
        uuid: uuid ?? const Uuid().v4(),
      );
}

// @freezed
// class Entry with _$Entry, Uniform {
//   @Implements<Uniform>()
//   @Implements<DefineDocument<EntryDefinition, Task>>()
//   const factory Entry._({
//     required final Task template,
//     required final List<EntryDefinition> definitions,
//     required final String collectionSlug,
//     required final String hierarchyPath,
//     required final String id,
//     required final String uuid,
//   }) = _Entry;

//   factory Entry.create({
//     required final Task template,
//     required String collectionSlug,
//     final List<EntryDefinition>? definitions,
//     required final String hierarchyPath,
//     required final String id,
//     final String? uuid,
//   }) =>
//       Entry._(
//         template: template,
//         definitions: definitions ?? [],
//         collectionSlug: collectionSlug,
//         hierarchyPath: hierarchyPath,
//         id: id,
//         uuid: uuid ?? const Uuid().v4(),
//       );
// }
