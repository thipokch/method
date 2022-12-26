// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:method_app_info/app_info.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AppInfoView', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => AppInfoCubit(),
          child: MaterialApp(home: AppInfoView()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
