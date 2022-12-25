import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:method_app/app/app.dart';

void main() {
  group(
    'AppView',
    () {
      testWidgets('renders AppView', (tester) async {
        await tester.pumpWidget(
          BlocProvider(
            create: (_) => AppBloc(
              routerConfig: GoRouter(
                debugLogDiagnostics: true,
                initialLocation: const SettingsFlow().location,
                routes: $appRoutes,
              ),
            ),
            child: const MaterialApp(home: AppView()),
          ),
        );
        expect(find.byType(AppView), findsOneWidget);
      });
    },
    skip: true,
  );
}
