import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_home/home.dart';

void main() {
  group('HomeRoute', () {
    testWidgets('renders HomeRoute', (tester) async {
       await tester.pumpWidget(
        Builder( builder: (context) => 
        MaterialApp(home: const HomeRoute().build(context)),
        ),
      );
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
