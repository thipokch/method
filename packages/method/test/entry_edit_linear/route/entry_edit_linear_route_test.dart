import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method/entry_edit_linear/entry_edit_linear.dart';

void main() {
  group(
    'EntryEditLinearRoute',
    () {
      testWidgets('renders EntryEditLinearRoute', (tester) async {
        await tester.pumpWidget(
          Builder(
            builder: (context) =>
                MaterialApp(home: const EntryEditLinearRoute().build(context)),
          ),
        );
        expect(find.byType(EntryEditLinearPage), findsOneWidget);
      });
    },
    skip: true,
  );
}
