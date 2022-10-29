import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method/entry_edit_converge/entry_edit_converge.dart';

void main() {
  group('EntryEditConvergeSliver', () {
    testWidgets('renders EntryEditConvergeSliver', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: EntryEditConvergeSliver()),
      );
      expect(find.byType(EntryEditConvergeSliver), findsOneWidget);
    });
  });
}
