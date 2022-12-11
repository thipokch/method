import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_core/method_core.dart';

void main() {
  testWidgets(
    'method_core click through three tasks',
    (WidgetTester tester) async {
      final exerciseWidget = MaterialApp(
        home: Scaffold(
          body: Method(
            exercise: OrderedExercise(
              id: const ExerciseIdentifier(id: "1"),
              tasks: [
                InstructionTask(
                  title: 'Welcome to the\nQuickBird Studios\nHealth Exercise',
                  text: 'Get ready for a bunch of super random questions!',
                  buttonText: 'Let\'s go!',
                  taskIdentifier: Identifier.newTask(),
                ),
                QuestionTask(
                  title: 'How old are you?',
                  answerFormat: const IntegerAnswerFormat(
                    defaultValue: 25,
                    hint: 'Please enter your age',
                  ),
                  taskIdentifier: Identifier.newTask(),
                ),
                const CompletionTask(
                  taskIdentifier: TaskIdentifier(id: '321'),
                  text:
                      'Thanks for taking the Exercise, we will contact you soon!',
                  title: 'Done!',
                  buttonText: 'Submit Exercise',
                ),
              ],
            ),
            onResult: (result) {
              expect(result.finishReason, FinishReason.COMPLETED);
            },
          ),
        ),
      );

      await tester.pumpWidget(exerciseWidget);
      await tester.pumpAndSettle();

      final introButton = find.text('Let\'s go!'.toUpperCase());
      expect(introButton, findsOneWidget);
      await tester.tap(introButton);

      await tester.pumpAndSettle();
      final textField = find.byType(TextField);
      await tester.enterText(textField, '20');
      await tester.pumpAndSettle();
      final questionButton = find.text('Next'.toUpperCase());
      expect(questionButton, findsOneWidget);
      await tester.tap(questionButton);

      await tester.pumpAndSettle();
      final completeButtom = find.text('Submit Exercise'.toUpperCase());
      expect(completeButtom, findsOneWidget);
      await tester.tap(completeButtom);
    },
  );
}
