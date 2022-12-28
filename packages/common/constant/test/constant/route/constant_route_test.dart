import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_constant/constant.dart';

void main() {
  group('ConstantRoute', () {
    testWidgets('renders ConstantRoute', (tester) async {
       await tester.pumpWidget(
        Builder( builder: (context) => 
        MaterialApp(home: const ConstantRoute().build(context)),
        ),
      );
      expect(find.byType(ConstantPage), findsOneWidget);
    });
  });
}
