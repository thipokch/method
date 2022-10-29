import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_core/model/definition.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/session.dart';
import 'package:method_core/model/task.dart';
import 'package:method_core/model/task_definition.dart';
import 'package:method_repo/content/content.dart';
import 'package:quiver/core.dart';

void main() {
  group('Session Definition :', () {
    late Session session;
    late BuiltDefinition<Task, Entry> initial;
    late BuiltDefinition<Task, Entry> populated;
    late BuiltDefinition<Task, Entry> completed;

    setUp(() {
      session = Session.from(template: Content.exerciseThought);
      initial = session.builtDefinition;
      populated = session.builtDefinition.mutateDataFor(
        session.template.definitions.first,
        Entry.from(template: session.template.definitions.first),
      );

      completed = session.builtDefinition.rebuild(
        (_) => _
          ..updateAllValues(
            (p0, p1) => Optional.fromNullable(Entry.from(template: p0)),
          ),
      );
    });

    test('Command keys are ordered on init', () {
      expect(
        initial.map.length,
        equals(session.template.definitions.length),
      );

      expect(
        listEquals(
          initial.map.keys.toList(),
          session.template.definitions,
        ),
        true,
      );
    });

    test('All data are null on init', () {
      expect(
        initial.map.entries.length,
        equals(session.template.definitions.length),
      );

      expect(
        listEquals(
          initial.data.map((d) => d.orNull).toList(),
          List.filled(
            session.template.definitions.length,
            null,
          ),
        ),
        true,
      );
    });

    test('Is incomplete on init', () {
      expect(initial.isCompleted, false);
    });

    test('Is complete with all data populated', () {
      expect(completed.isCompleted, true);
    });

    test('Command keys are in oreder after mutateData', () {
      expect(
        populated.map.length,
        equals(session.template.definitions.length),
      );

      expect(
        listEquals(
          populated.map.keys.toList(),
          session.template.definitions,
        ),
        true,
      );
    });

    test('Command keys are in order after clearData', () {
      final mutated =
          populated.clearDataFor(session.template.definitions.first);

      expect(
        mutated.map.length,
        equals(session.template.definitions.length),
      );

      expect(
        listEquals(
          mutated.map.keys.toList(),
          session.template.definitions,
        ),
        true,
      );
    });

    test('Entries removed after clearData', () {
      final mutated =
          populated.mutateDataAt(4, null).clearDataAt(2).clearDataAt(3);

      expect(mutated.isCompleted, false);

      expect(
        listEquals(
          mutated.map.values.map((d) => d.orNull).toList(),
          [populated.data.first.orNull, null, null, null, null],
        ),
        true,
      );
    });

    test('Mutate & Clear add at random index.', () {
      final commands = initial.commands;
      final a = Entry.from(template: commands.elementAt(2));
      final b = Entry.from(template: commands.elementAt(3));
      final c = Entry.from(template: commands.elementAt(4));
      final mutated = initial
          .mutateDataAt(2, a)
          .mutateDataAt(3, b)
          .clearDataAt(3)
          .mutateDataAt(4, c);

      expect(
        listEquals(
          mutated.map.values.map((d) => d.orNull).toList(),
          [null, null, a, null, c],
        ),
        true,
      );
    });
  });

  group('Entry Definition :', () {
    late Entry entry;
    late BuiltDefinition<TaskDefinition, EntryDefinition> initial;
    late BuiltDefinition<TaskDefinition, EntryDefinition> populated;
    late BuiltDefinition<TaskDefinition, EntryDefinition> completed;

    setUp(() {
      entry = Entry.from(template: Content.taskContext);
      initial = entry.builtDefinition;
      populated = entry.builtDefinition.mutateDataFor(
        entry.template.definitions.first,
        EntryDefinition.from(template: entry.template.definitions.first),
      );

      completed = entry.builtDefinition.rebuild(
        (_) => _
          ..updateAllValues(
            (k, v) => Optional.fromNullable(EntryDefinition.from(template: k)),
          ),
      );
    });

    test('Command keys are ordered on init', () {
      expect(
        initial.map.length,
        equals(entry.template.definitions.length),
      );

      expect(
        listEquals(
          initial.map.keys.toList(),
          entry.template.definitions,
        ),
        true,
      );
    });

    test('All data are null on init', () {
      expect(
        initial.map.entries.length,
        equals(entry.template.definitions.length),
      );

      expect(
        listEquals(
          initial.data.map((d) => d.orNull).toList(),
          List.filled(
            entry.template.definitions.length,
            null,
          ),
        ),
        true,
      );
    });

    test('Is incomplete on init', () {
      expect(initial.isCompleted, false);
    });

    test('Is complete with all data populated', () {
      expect(completed.isCompleted, true);
    });

    test('Command keys are in oreder after mutateData', () {
      expect(
        populated.map.length,
        equals(entry.template.definitions.length),
      );

      expect(
        listEquals(
          populated.map.keys.toList(),
          entry.template.definitions,
        ),
        true,
      );
    });

    test('Command keys are in order after clearData', () {
      final mutated = populated.clearDataFor(entry.template.definitions.first);

      expect(
        mutated.map.length,
        equals(entry.template.definitions.length),
      );

      expect(
        listEquals(
          mutated.map.keys.toList(),
          entry.template.definitions,
        ),
        true,
      );
    });

    test('Entries removed after clearData', () {
      final mutated =
          populated.mutateDataAt(4, null).clearDataAt(2).clearDataAt(3);

      final expected =
          List<EntryDefinition?>.filled(populated.commands.length, null)
            ..[0] = populated.data.first.value;

      expect(mutated.isCompleted, false);

      expect(
        listEquals(
          mutated.map.values.map((d) => d.orNull).toList(),
          expected,
        ),
        true,
      );
    });

    test('Mutate & Clear add at random index.', () {
      final commands = initial.commands;
      final a = EntryDefinition.from(template: commands.elementAt(2));
      final b = EntryDefinition.from(template: commands.elementAt(3));
      final c = EntryDefinition.from(template: commands.elementAt(4));
      final mutated = initial
          .mutateDataAt(2, a)
          .mutateDataAt(3, b)
          .clearDataAt(3)
          .mutateDataAt(4, c);

      final expected =
          List<EntryDefinition?>.filled(initial.commands.length, null)
            ..[2] = a
            ..[4] = c;

      expect(
        listEquals(mutated.map.values.map((d) => d.orNull).toList(), expected),
        true,
      );
    });
  });
}
