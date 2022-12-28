// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:method_constant/constant.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ConstantPage', () {
    testWidgets('renders ConstantView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: ConstantPage()));
      expect(find.byType(ConstantView), findsOneWidget);
    });
  });
}
