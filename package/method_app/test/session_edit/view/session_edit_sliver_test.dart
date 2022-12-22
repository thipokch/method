import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_app/session_edit/session_edit.dart';

void main() {
  group(
    'SessionEditSliver',
    () {
      testWidgets('renders SessionEditSliver', (tester) async {
        await tester.pumpWidget(
          const MaterialApp(home: SessionEditSliver()),
        );
        expect(find.byType(SessionEditSliver), findsOneWidget);
      });
    },
    skip: true,
  );
}
