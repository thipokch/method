// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:method_settings_appearance/settings_appearance.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SettingsAppearancePage', () {
    testWidgets('renders SettingsAppearanceView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: SettingsAppearancePage()));
      expect(find.byType(SettingsAppearanceView), findsOneWidget);
    });
  });
}
