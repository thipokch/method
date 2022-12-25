import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_app/session_list/session_list.dart';

void main() {
  group(
    'SessionListSliver',
    () {
      testWidgets('renders SessionListSliver', (tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: CustomScrollView(slivers: [SessionListSliver()]),
          ),
        );
        expect(find.byType(SessionListSliver), findsOneWidget);
      });
    },
    skip: true,
  );
}
