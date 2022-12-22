import 'package:method_core/model/definition.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/exercise.dart';
import 'package:method_core/model/session.dart';
import 'package:method_core/model/task.dart';
import 'package:method_data/content/content.dart';

final List<Session> mockSessions =
    mockExercises.map((e) => Session.from(template: e)).toList();

final Task mockFirstTask = mockSessions.first.template.definitions.first;
final Entry mockFirstEntry = Entry.from(template: mockFirstTask);

final Session modifiedFirstSession = mockSessions.first.copyWith(
  definitions: mockSessions.first.builtDefinition
      .mutateDataFor(mockFirstTask, mockFirstEntry)
      .asEntryList(),
);

final List<Exercise> mockExercises = [
  Content.exerciseAct,
  Content.exerciseMood,
  Content.exerciseNote,
  Content.exerciseThought,
];
