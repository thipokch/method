import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method/entry_edit/base/entry_edit_bloc_base.dart';
import 'package:method/entry_edit_converge/entry_edit_converge.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_repo/collection/entry.dart';
import 'package:method_repo/collection/task.dart';
import 'package:method_repo/repository.dart';
import 'package:mocktail/mocktail.dart';

import '../mock/mock_data.dart';
import '../mock/mock_repository.dart';

void main() {
  group('EntryEditConvergeBloc', () {
    late Repository repository;
    late TaskRepository taskRepo;
    late EntryRepository entryRepo;
    late StreamController<List<Entry>> entryStream;

    setUp(() {
      repository = MockRepository();
      taskRepo = MockTaskRepository();
      entryRepo = MockEntryRepository();
      entryStream = StreamController<List<Entry>>(
        onListen: () => entryStream.add([mockEntries.first]),
      );

      registerFallbackValue(mockEntries.first);

      when(() => repository.entries).thenReturn(entryRepo);
      when(() => repository.tasks).thenReturn(taskRepo);

      when(() => entryRepo.get(any())).thenAnswer((_) async => mockEntries[0]);
      when(() => taskRepo.get(any())).thenAnswer((_) async => mockTasks[0]);
    });

    blocTest<EntryEditConvergeBloc, EntryEditConvergeState>(
      'Emits _Started when entry starts.',
      build: () => EntryEditConvergeBloc(repository: repository),
      act: (_) => _
        ..add(EntryEditConvergeEvent.startEntry(entryId: mockEntries.first.id)),
      expect: () => [
        EntryEditConvergeState.started(entry: mockEntries.first),
      ],
    );

    blocTest<EntryEditConvergeBloc, EntryEditConvergeState>(
      'Emits _Started when task starts.',
      build: () => EntryEditConvergeBloc(repository: repository),
      act: (_) =>
          _..add(EntryEditConvergeEvent.startTask(taskId: mockTasks.first.id)),
      expect: () => [
        isA<EntryEditBase_Started>(),
      ],
    );

    blocTest<EntryEditConvergeBloc, EntryEditConvergeState>(
      'Single SelectLabel.',
      build: () => EntryEditConvergeBloc(repository: repository),
      act: (_) => _
        ..add(EntryEditConvergeEvent.startEntry(entryId: mockEntries.first.id))
        ..add(const EntryEditConvergeEvent.selectLabel(index: 1)),
      expect: () => [
        EntryEditConvergeState.started(entry: mockEntries.first),
        isA<EntryEditBase_Started>().having(
          (_) => _.entry.builtDefinition.data[2].orNull,
          "definition",
          isNotNull,
        ),
      ],
    );

    blocTest<EntryEditConvergeBloc, EntryEditConvergeState>(
      'Multiple SelectLabel.',
      build: () => EntryEditConvergeBloc(repository: repository),
      act: (_) => _
        ..add(EntryEditConvergeEvent.startEntry(entryId: mockEntries.first.id))
        ..add(const EntryEditConvergeEvent.selectLabel(index: 1))
        ..add(const EntryEditConvergeEvent.selectLabel(index: 2))
        ..add(const EntryEditConvergeEvent.selectLabel(index: 3))
        ..add(const EntryEditConvergeEvent.selectLabel(index: 1))
        ..add(const EntryEditConvergeEvent.selectLabel(index: 2))
        ..add(const EntryEditConvergeEvent.selectLabel(index: 3)),
      expect: () => [
        EntryEditConvergeState.started(entry: mockEntries.first),
        isA<EntryEditBase_Started>().having(
          (_) => _.entry.builtDefinition.data[2].orNull,
          "definition",
          isNotNull,
        ),
        isA<EntryEditBase_Started>().having(
          (_) => _.entry.builtDefinition.data[3].orNull,
          "definition",
          isNotNull,
        ),
        isA<EntryEditBase_Started>().having(
          (_) => _.entry.builtDefinition.data[4].orNull,
          "definition",
          isNotNull,
        ),
        isA<EntryEditBase_Started>().having(
          (_) => _.entry.builtDefinition.data[2].orNull,
          "definition",
          isNull,
        ),
        isA<EntryEditBase_Started>().having(
          (_) => _.entry.builtDefinition.data[3].orNull,
          "definition",
          isNull,
        ),
        isA<EntryEditBase_Started>().having(
          (_) => _.entry.builtDefinition.data[4].orNull,
          "definition",
          isNull,
        ),
      ],
    );
  });
}
