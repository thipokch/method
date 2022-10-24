import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method/<FTName | snakecase&lowercase>/<FTName | snakecase&lowercase>.dart';

void main() {
  group('<FTName | pascalcase>Page', () {
    testWidgets('renders <FTName | pascalcase>Page', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: <FTName | pascalcase>Page()),
      );
      expect(find.byType(<FTName | pascalcase>Page), findsOneWidget);
    });
  });
}
