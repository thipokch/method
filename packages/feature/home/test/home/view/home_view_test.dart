// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:method_home/home.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HomeView', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => HomeBloc(),
          child: MaterialApp(home: HomeView()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
