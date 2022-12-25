import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_app/exercise_list/exercise_list.dart';

void main() {
  group('ExerciseListRoute', () {
    testWidgets('renders ExerciseListRoute', (tester) async {
      await tester.pumpWidget(
        Builder(
          builder: (context) =>
              MaterialApp(home: const ExerciseListRoute().build(context)),
        ),
      );
      expect(find.byType(ExerciseListPage), findsOneWidget);
    });
  });
}
