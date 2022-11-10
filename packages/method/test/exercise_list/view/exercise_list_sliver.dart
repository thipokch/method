import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method/exercise_list/exercise_list.dart';

void main() {
  group('ExerciseListSliver', () {
    testWidgets('renders ExerciseListSliver', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: ExerciseListSliver()),
      );
      expect(find.byType(ExerciseListSliver), findsOneWidget);
    });
  });
}
