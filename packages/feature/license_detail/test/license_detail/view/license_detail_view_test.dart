// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:method_license_detail/license_detail.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LicenseDetailView', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => LicenseDetailBloc(),
          child: MaterialApp(home: LicenseDetailView()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
