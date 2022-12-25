import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_license_list/license_list.dart';

void main() {
  group('LicenseListRoute', () {
    testWidgets('renders LicenseListRoute', (tester) async {
       await tester.pumpWidget(
        Builder( builder: (context) => 
        MaterialApp(home: const LicenseListRoute().build(context)),
        ),
      );
      expect(find.byType(LicenseListPage), findsOneWidget);
    });
  });
}
