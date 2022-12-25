// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:method_license_list/license_list.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LicenseListView', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => LicenseListBloc(),
          child: MaterialApp(home: LicenseListView()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
