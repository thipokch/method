import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method/entry_edit_linear/entry_edit_linear.dart';

void main() {
  group(
    'EntryEditLinearPage',
    () {
      testWidgets('renders EntryEditLinearPage', (tester) async {
        await tester.pumpWidget(
          const MaterialApp(home: EntryEditLinearPage()),
        );
        expect(find.byType(EntryEditLinearPage), findsOneWidget);
      });
    },
    skip: true,
  );
}
