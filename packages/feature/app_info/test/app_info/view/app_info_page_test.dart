// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:method_app_info/app_info.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AppInfoPage', () {
    testWidgets('renders AppInfoView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: AppInfoPage()));
      expect(find.byType(AppInfoView), findsOneWidget);
    });
  });
}
