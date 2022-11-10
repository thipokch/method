import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method/session_edit/session_edit.dart';

void main() {
  group(
    'SessionEditRoute',
    () {
      testWidgets('renders SessionEditRoute', (tester) async {
        await tester.pumpWidget(
          Builder(
            builder: (context) =>
                MaterialApp(home: const SessionEditRoute("").build(context)),
          ),
        );
        expect(find.byType(SessionEditPage), findsOneWidget);
      });
    },
    skip: true,
  );
}
