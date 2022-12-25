import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_license_detail/license_detail.dart';

void main() {
  group('LicenseDetailRoute', () {
    testWidgets('renders LicenseDetailRoute', (tester) async {
       await tester.pumpWidget(
        Builder( builder: (context) => 
        MaterialApp(home: const LicenseDetailRoute().build(context)),
        ),
      );
      expect(find.byType(LicenseDetailPage), findsOneWidget);
    });
  });
}
