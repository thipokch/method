import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_app/exercise_list/exercise_list.dart';

void main() {
  group('ExerciseListView', () {
    testWidgets('renders ExerciseListView', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: ExerciseListView()),
      );
      expect(find.byType(ExerciseListView), findsOneWidget);
    });
  });
}
