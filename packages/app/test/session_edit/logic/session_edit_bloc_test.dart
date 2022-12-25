import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_app/session_edit/session_edit.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/exercise.dart';
import 'package:method_core/model/session.dart';
import 'package:method_data/collection/exercise.dart';
import 'package:method_data/collection/session.dart';
import 'package:method_data/method_data.dart';
import 'package:mocktail/mocktail.dart';

import '../../util/core_matcher.dart';
import '../../util/state_matcher.dart';
import '../mock/mock_data.dart';
import '../mock/mock_repository.dart';

void main() {
  group('SessionEditBloc', () {
    late Repository repository;
    late SessionRepository sessionRepo;
    late ExerciseRepository exerciseRepo;
    late StreamController<Session> sessionStream;

    setUp(() {
      repository = MockRepository();
      sessionRepo = MockSessionRepository();
      exerciseRepo = MockExerciseRepository();
      sessionStream = StreamController<Session>(
        onListen: () => sessionStream.add(mockSessions.first),
      );

      registerFallbackValue(mockSessions.first);

      when(() => repository.sessions).thenReturn(sessionRepo);

      when(() => sessionRepo.stream(
            any(),
            fireImmediately: any(named: 'fireImmediately'),
          )).thenAnswer((_) => sessionStream.stream);

      when(() => sessionRepo.remove(any()))
          .thenAnswer((_) async => sessionStream.sink.add(mockSessions.first));

      when(() => sessionRepo.put(any())).thenAnswer(
        (_) async => sessionStream.sink.add(modifiedFirstSession),
      );

      when(() => repository.exercises).thenReturn(exerciseRepo);

      when(() => exerciseRepo.get(any()))
          .thenAnswer((_) async => mockExercises.first);
    });

    blocTest<SessionEditBloc, SessionEditState>(
      'start exercise with id, create new session with given exercise',
      build: () => SessionEditBloc(repository: repository),
      act: (_) => _.add(
        SessionEditEvent.startExercise(exerciseId: mockExercises.first.id),
      ),
      verify: (_) => verifyNever(() => sessionRepo.put(any())),
      expect: () => [
        SessionEditStateWithSession(
          HasTemplate<Exercise, Session>(equals(mockExercises.first)),
        ),
        SessionEditStateWithSession(
          HasTemplate<Exercise, Session>(equals(mockExercises.first)),
        ),
      ],
    );

    blocTest<SessionEditBloc, SessionEditState>(
      'given StartExercise, session is updated via stream, when UpdateEntry are committed.',
      build: () => SessionEditBloc(repository: repository),
      act: (_) => _
        ..add(
          SessionEditEvent.startExercise(exerciseId: mockExercises.first.id),
        )
        ..add(SessionEditEvent.updateEntry(entry: mockFirstEntry)),
      expect: () => [
        SessionEditStateWithSession(
          HasTemplate<Exercise, Session>(equals(mockExercises.first)),
        ),
        SessionEditStateWithSession(
          HasTemplate<Exercise, Session>(equals(mockExercises.first)),
        ),
        SessionEditStateWithSession(
          HasBuiltDefinition(
            HasExpandedData(
              pairwiseCompare<Entry, Entry>(
                [mockFirstEntry],
                (a, b) => a == b,
                "Entry that matches with another entry",
              ),
            ),
          ),
        ),
      ],
    );

    blocTest<SessionEditBloc, SessionEditState>(
      'when StartSession, load (via stream) session from repo.',
      build: () => SessionEditBloc(repository: repository),
      act: (_) => _.add(
        SessionEditEvent.startSession(sessionId: mockSessions.first.id),
      ),
      verify: (_) => verify(() => sessionRepo.stream(any())).called(1),
      expect: () => [
        SessionEditStateWithSession(equals(mockSessions.first)),
      ],
    );

    blocTest<SessionEditBloc, SessionEditState>(
      'given StartSession, session is updated via stream, when changes are commited.',
      build: () => SessionEditBloc(repository: repository),
      act: (_) => _
        ..add(
          SessionEditEvent.startSession(sessionId: mockSessions.first.id),
        )
        ..add(SessionEditEvent.updateEntry(entry: mockFirstEntry)),
      verify: (_) => verify(() => sessionRepo.stream(any())).called(1),
      expect: () => [
        SessionEditStateWithSession(equals(mockSessions.first)),
        SessionEditStateWithSession(equals(modifiedFirstSession)),
      ],
    );
  });
}
