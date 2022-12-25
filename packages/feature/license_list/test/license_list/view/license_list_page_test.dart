// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:method_license_list/license_list.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LicenseListPage', () {
    testWidgets('renders LicenseListView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: LicenseListPage()));
      expect(find.byType(LicenseListView), findsOneWidget);
    });
  });
}
