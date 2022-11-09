import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method/entry_edit_linear/entry_edit_linear.dart';

void main() {
  group(
    'EntryEditLinearView',
    () {
      testWidgets('renders EntryEditLinearView', (tester) async {
        await tester.pumpWidget(
          const MaterialApp(home: EntryEditLinearView()),
        );
        expect(find.byType(EntryEditLinearView), findsOneWidget);
      });
    },
    skip: true,
  );
}
