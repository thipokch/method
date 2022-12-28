import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_settings_list/settings_list.dart';

void main() {
  group('SettingsListRoute', () {
    testWidgets('renders SettingsListRoute', (tester) async {
      await tester.pumpWidget(
        Builder(
          builder: (context) => MaterialApp(
              home: SettingsListRoute(
            onSelectData: () {},
            onSelectAppearance: () {},
            onSelectLicense: () {},
            onSelectFeedback: () {},
            onSelectPrivacy: () {},
            onSelectTerms: () {},
          ).build(context)),
        ),
      );
      expect(find.byType(SettingsListPage), findsOneWidget);
    });
  });
}
