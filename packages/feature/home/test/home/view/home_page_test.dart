// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:method_home/home.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HomePage', () {
    testWidgets('renders HomeView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: HomePage()));
      expect(find.byType(HomeView), findsOneWidget);
    });
  });
}
