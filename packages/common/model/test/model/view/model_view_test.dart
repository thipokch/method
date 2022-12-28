// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:method_model/model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ModelView', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        MaterialApp(home: ModelView()),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
