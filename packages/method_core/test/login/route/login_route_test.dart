import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_core/login/login.dart';

void main() {
  group('LoginRoute', () {
    testWidgets('renders LoginRoute', (tester) async {
      await tester.pumpWidget(
        Builder(
          builder: (context) =>
              MaterialApp(home: const LoginRoute().build(context)),
        ),
      );
      expect(find.byType(LoginPage), findsOneWidget);
    });
  });
}
