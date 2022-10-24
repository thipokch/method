import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method/app/route/app_route.dart';
import 'package:method/session_list/session_list.dart';
import 'package:method_core/model/session.dart';
import 'package:method_repo/collection/session.dart';
import 'package:method_repo/repository.dart';
import 'package:mocktail/mocktail.dart';

import '../mock/mock_data.dart';
import '../mock/mock_repository.dart';

void main() {
  group('SessionListBloc', () {
    late Repository repository;
    late SessionRepository sessionRepo;
    late StreamController<List<Session>> sessionStream;

    setUp(() {
      repository = MockRepository();
      sessionRepo = MockSessionRepository();
      sessionStream = StreamController<List<Session>>(
        onListen: () => sessionStream.add([mockSessions.first]),
      );
      registerFallbackValue(mockSessions[0]);

      when(() => repository.sessions).thenReturn(sessionRepo);

      when(() => sessionRepo.streamAll())
          .thenAnswer((_) => sessionStream.stream);

      when(() => sessionRepo.remove(any()))
          .thenAnswer((_) async => sessionStream.sink.add([]));

      when(() => sessionRepo.put(any()))
          .thenAnswer((_) async => sessionStream.sink.add(mockSessions));
    });

    blocTest<SessionListBloc, SessionListState>(
      'Emits _Started when stream starts.',
      build: () => SessionListBloc(
        navigator: AppRoute.defaultNavigator,
        repository: repository,
      ),
      act: (_) => _.add(const SessionListEvent.start()),
      expect: () => [
        SessionListState.started(sessions: [mockSessions.first]),
      ],
    );

    blocTest<SessionListBloc, SessionListState>(
      'Given _Started state, DeleteSession emits new _Started state.',
      build: () => SessionListBloc(
        navigator: AppRoute.defaultNavigator,
        repository: repository,
      ),
      act: (_) => _
        ..add(const SessionListEvent.start())
        ..add(SessionListEvent.deleteSession(session: mockSessions.first)),
      expect: () => [
        SessionListState.started(sessions: [mockSessions.first]),
        const SessionListState.started(sessions: []),
      ],
    );

    blocTest<SessionListBloc, SessionListState>(
      'Given _Started state, new session added to repository emits new _Started state.',
      build: () => SessionListBloc(
        navigator: AppRoute.defaultNavigator,
        repository: repository,
      ),
      act: (_) async {
        _.add(const SessionListEvent.start());
        await Future.delayed(
          const Duration(milliseconds: 100),
          () => sessionRepo.put(mockSessions[2]),
        );
      },
      expect: () => [
        SessionListState.started(sessions: [mockSessions.first]),
        SessionListState.started(sessions: mockSessions),
      ],
    );

    // Skipped:
    // https://github.com/felangel/bloc/issues/3586#issue-1418033166

    blocTest<SessionListBloc, SessionListState>(
      'Given _Destroyed state, no new _Started state should be emitted when repository changes.',
      build: () => SessionListBloc(
        navigator: AppRoute.defaultNavigator,
        repository: repository,
      ),
      // act: (_) async {
      //   _.add(const SessionListEvent.start());
      //   repo.put(sessions[2]);
      // },
      expect: () => [
        // SessionListState.started(sessions: [sessions.first]),
        // const SessionListState.destroyed(),
        // const SessionListState.destroyed(),
      ],
    );
  });
}
