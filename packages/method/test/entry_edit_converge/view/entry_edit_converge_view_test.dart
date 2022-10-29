import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method/entry_edit_converge/entry_edit_converge.dart';

void main() {
  group('EntryEditConvergeView', () {
    testWidgets('renders EntryEditConvergeView', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: EntryEditConvergeView()),
      );
      expect(find.byType(EntryEditConvergeView), findsOneWidget);
    });
  });
}
