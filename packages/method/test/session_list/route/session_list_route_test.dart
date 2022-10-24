import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method/session_list/session_list.dart';
import 'package:method_core/model/session.dart';
import 'package:method_repo/collection/session.dart';
import 'package:method_repo/repository.dart';
import 'package:mocktail/mocktail.dart';

import '../mock/mock_data.dart';
import '../mock/mock_repository.dart';

void main() {
  group('SessionListRoute', () {
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
    });

    testWidgets('renders SessionListRoute', (tester) async {
      await tester.pumpWidget(
        Builder(
          builder: (context) => RepositoryProvider.value(
            value: repository,
            child: MaterialApp(home: const SessionListRoute().build(context)),
          ),
        ),
      );
      expect(find.byType(SessionListPage), findsOneWidget);
    });
  });
}
