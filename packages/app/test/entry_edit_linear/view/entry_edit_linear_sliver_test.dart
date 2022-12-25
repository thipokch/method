import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_app/entry_edit_linear/entry_edit_linear.dart';

void main() {
  group(
    'EntryEditLinearSliver',
    () {
      testWidgets('renders EntryEditLinearSliver', (tester) async {
        await tester.pumpWidget(
          const MaterialApp(home: EntryEditLinearSliver()),
        );
        expect(find.byType(EntryEditLinearSliver), findsOneWidget);
      });
    },
    skip: true,
  );
}
