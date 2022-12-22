import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_app/<FTName | snakecase&lowercase>/<FTName | snakecase&lowercase>.dart';

void main() {
  group('<FTName | pascalcase>Sliver', () {
    testWidgets('renders <FTName | pascalcase>Sliver', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: <FTName | pascalcase>Sliver()),
      );
      expect(find.byType(<FTName | pascalcase>Sliver), findsOneWidget);
    });
  });
}
