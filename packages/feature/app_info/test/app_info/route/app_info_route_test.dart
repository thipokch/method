import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_app_info/app_info.dart';

void main() {
  group('AppInfoRoute', () {
    testWidgets('renders AppInfoRoute', (tester) async {
       await tester.pumpWidget(
        Builder( builder: (context) => 
        MaterialApp(home: const AppInfoRoute().build(context)),
        ),
      );
      expect(find.byType(AppInfoPage), findsOneWidget);
    });
  });
}
