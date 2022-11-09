import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method/session_edit/session_edit.dart';

void main() {
  group(
    'SessionEditPage',
    () {
      testWidgets('renders SessionEditPage', (tester) async {
        await tester.pumpWidget(
          const MaterialApp(home: SessionEditPage()),
        );
        expect(find.byType(SessionEditPage), findsOneWidget);
      });
    },
    skip: true,
  );
}
