import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method/entry_edit_converge/entry_edit_converge.dart';

void main() {
  group('EntryEditConvergeRoute', () {
    testWidgets('renders EntryEditConvergeRoute', (tester) async {
      await tester.pumpWidget(
        Builder(
          builder: (context) =>
              MaterialApp(home: const EntryEditConvergeRoute().build(context)),
        ),
      );
      expect(find.byType(EntryEditConvergePage), findsOneWidget);
    });
  });
}
