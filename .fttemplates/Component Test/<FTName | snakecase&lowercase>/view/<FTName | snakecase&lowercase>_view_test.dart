import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_app/<FTName | snakecase&lowercase>/<FTName | snakecase&lowercase>.dart';

void main() {
  group('<FTName | pascalcase>View', () {
    testWidgets('renders <FTName | pascalcase>View', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: <FTName | pascalcase>View()),
      );
      expect(find.byType(<FTName | pascalcase>View), findsOneWidget);
    });
  });
}
