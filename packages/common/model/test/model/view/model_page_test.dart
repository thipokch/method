// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:method_model/model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ModelPage', () {
    testWidgets('renders ModelView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: ModelPage()));
      expect(find.byType(ModelView), findsOneWidget);
    });
  });
}
