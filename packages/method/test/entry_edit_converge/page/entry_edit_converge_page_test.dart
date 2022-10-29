import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method/entry_edit_converge/entry_edit_converge.dart';

void main() {
  group('EntryEditConvergePage', () {
    testWidgets('renders EntryEditConvergePage', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: EntryEditConvergePage()),
      );
      expect(find.byType(EntryEditConvergePage), findsOneWidget);
    });
  });
}
