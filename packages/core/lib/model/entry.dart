import 'package:core/abstract/define.dart';
import 'package:core/abstract/uniform.dart';
import 'package:core/model/entry_definition.dart';
import 'package:core/model/task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'entry.freezed.dart';

@freezed
class Entry with _$Entry, Uniform {
  @Implements<Uniform>()
  @Implements<DefineDocument<EntryDefinition, Task>>()
  const factory Entry._({
    required Task template,
    required List<EntryDefinition> definitions,
    required String collectionSlug,
    required String hierarchyPath,
    required String id,
    required String uuid,
  }) = _Entry;

  factory Entry.create({
    required Task template,
    required String collectionSlug,
    List<EntryDefinition>? definitions,
    required String hierarchyPath,
    required String id,
    String? uuid,
  }) =>
      Entry._(
        template: template,
        definitions: definitions ?? [],
        collectionSlug: collectionSlug,
        hierarchyPath: hierarchyPath,
        id: id,
        uuid: uuid ?? const Uuid().v4(),
      );
}
