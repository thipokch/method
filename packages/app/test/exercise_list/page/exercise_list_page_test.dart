import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_app/exercise_list/exercise_list.dart';

void main() {
  group(
    'ExerciseListPage',
    () {
      testWidgets('renders ExerciseListPage', (tester) async {
        await tester.pumpWidget(
          const MaterialApp(home: ExerciseListPage()),
        );
        expect(find.byType(ExerciseListPage), findsOneWidget);
      });
    },
    skip: true,
  );
}
