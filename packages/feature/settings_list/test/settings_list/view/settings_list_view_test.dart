// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:method_settings_list/settings_list.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SettingsListView', () {
    testWidgets('renders Text', (tester) async {
      await tester.pumpWidget(
        MaterialApp(home: SettingsListView(
          onSelectData: () {},
          onSelectAppearance: () {},
          onSelectLicense: () {},
          onSelectFeedback: () {},
          onSelectPrivacy: () {},
          onSelectTerms: () {},
        )),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
