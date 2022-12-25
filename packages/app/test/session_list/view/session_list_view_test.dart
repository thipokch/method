import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_app/session_list/session_list.dart';

void main() {
  group(
    'SessionListView',
    () {
      testWidgets('renders SessionListView', (tester) async {
        await tester.pumpWidget(
          const MaterialApp(home: SessionListView()),
        );
        expect(find.byType(SessionListView), findsOneWidget);
      });
    },
    skip: true,
  );
}
