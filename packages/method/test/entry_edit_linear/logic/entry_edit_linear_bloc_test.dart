import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method/entry_edit_linear/entry_edit_linear.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_repo/content/content.dart';

import '../../util/entry_edit_matcher.dart';

void main() {
  group('EntryEditLinearBloc', () {
    final task = Content.exerciseNote.definitions.first;
    final def = Entry.from(template: task).builtMultiDefinition;

    blocTest<EntryEditLinearBloc, EntryEditLinearState>(
      'on start()',
      build: () => EntryEditLinearBloc(),
      act: (_) => _.add(EntryEditLinearEvent.start(definitions: def)),
      expect: () => [
        EntryEditLinearState.started(definitions: def),
      ],
    );

    blocTest<EntryEditLinearBloc, EntryEditLinearState>(
      'on addNote()',
      build: () => EntryEditLinearBloc(),
      act: (_) => _
        ..add(EntryEditLinearEvent.start(definitions: def))
        ..add(const EntryEditLinearEvent.addNote(text: "I am repeating...")),
      expect: () => [
        EntryEditLinearState.started(definitions: def),
        HasEntryDefinitions(pairwiseCompare<String, EntryDefinitionNote>(
          ["I am repeating..."],
          (data, note) => data == note.data,
          "EntryDefinitionNote that contains matching data.",
        )),
      ],
    );
    blocTest<EntryEditLinearBloc, EntryEditLinearState>(
      'on addUpdateNote()',
      build: () => EntryEditLinearBloc(),
      act: (_) => _
        ..add(EntryEditLinearEvent.start(definitions: def))
        ..add(const EntryEditLinearEvent.addNote(text: "I am repeating..."))
        ..add(const EntryEditLinearEvent.updateNote(
          text: "I am repeating twice...",
          index: 0,
        )),
      expect: () => [
        EntryEditLinearState.started(definitions: def),
        HasEntryDefinitions(pairwiseCompare<String, EntryDefinitionNote>(
          ["I am repeating..."],
          (data, note) => data == note.data,
          "EntryDefinitionNote that contains matching data.",
        )),
        HasEntryDefinitions(pairwiseCompare<String, EntryDefinitionNote>(
          ["I am repeating twice..."],
          (data, note) => data == note.data,
          "EntryDefinitionNote that contains matching data.",
        )),
      ],
    );
  });
}
