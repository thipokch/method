// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:method_core/login/login.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LoginView', () {
    testWidgets('renders Text', (tester) async {
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => LoginBloc(),
          child: MaterialApp(home: LoginView()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
