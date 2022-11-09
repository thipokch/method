import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method/<FTName | snakecase&lowercase>/<FTName | snakecase&lowercase>.dart';

void main() {
  group('<FTName | pascalcase>Route', () {
    testWidgets('renders <FTName | pascalcase>Route', (tester) async {
       await tester.pumpWidget(
        Builder( builder: (context) => 
        MaterialApp(home: const <FTName | pascalcase>Route().build(context)),
        ),
      );
      expect(find.byType(<FTName | pascalcase>Page), findsOneWidget);
    });
  });
}
