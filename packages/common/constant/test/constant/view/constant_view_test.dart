// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:method_constant/constant.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ConstantView', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        MaterialApp(home: ConstantView()),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
