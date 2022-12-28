import 'package:bloc_test/bloc_test.dart';
import 'package:firebase_app_installations/firebase_app_installations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:method_app/app/app.dart';
import 'package:mocktail/mocktail.dart';

class MockFirebaseInstallation extends Mock implements FirebaseInstallations {}

void main() {
  group('AppBloc', () {
    blocTest<AppBloc, AppState>(
      'Construct AppBloc without services.',
      build: () => AppBloc(
        routerConfig: GoRouter(
          debugLogDiagnostics: true,
          initialLocation: const SessionFlow().path,
          routes: $appRoutes,
        ),
        services: const [],
      ),
      expect: () => [
        isA<AppStateStarted>(),
      ],
    );
  });
}
