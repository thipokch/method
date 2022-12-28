import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_settings_appearance/settings_appearance.dart';

void main() {
  group('SettingsAppearanceRoute', () {
    testWidgets('renders SettingsAppearanceRoute', (tester) async {
       await tester.pumpWidget(
        Builder( builder: (context) => 
        MaterialApp(home: const SettingsAppearanceRoute().build(context)),
        ),
      );
      expect(find.byType(SettingsAppearancePage), findsOneWidget);
    });
  });
}
