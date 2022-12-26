// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:method_browser/browser.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('BrowserView', () {
    testWidgets('renders Text', (tester) async {
      await tester.pumpWidget(
        MaterialApp(),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
