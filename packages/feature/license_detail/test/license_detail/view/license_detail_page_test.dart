// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:method_license_detail/license_detail.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LicenseDetailPage', () {
    testWidgets('renders LicenseDetailView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: LicenseDetailPage()));
      expect(find.byType(LicenseDetailView), findsOneWidget);
    });
  });
}
