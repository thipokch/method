// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:method_settings_appearance/settings_appearance.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SettingsAppearanceView', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => SettingsAppearanceBloc(),
          child: MaterialApp(home: SettingsAppearanceView()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
