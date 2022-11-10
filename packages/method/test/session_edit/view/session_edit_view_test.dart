import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method/session_edit/session_edit.dart';

void main() {
  group(
    'SessionEditView',
    () {
      testWidgets('renders SessionEditView', (tester) async {
        await tester.pumpWidget(
          const MaterialApp(home: SessionEditView()),
        );
        expect(find.byType(SessionEditView), findsOneWidget);
      });
    },
    skip: true,
  );
}
