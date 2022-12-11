import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_core/method_core.dart';
import 'package:provider/provider.dart';

void main() {
  DateAnswerView validDateAnswerView() => DateAnswerView(
        questionTask: QuestionTask(
          answerFormat: DateAnswerFormat(
            minDate: DateTime.now().subtract(const Duration(days: 365 * 70)),
            maxDate: DateTime.now().subtract(const Duration(days: 365 * 15)),
            defaultDate:
                DateTime.now().subtract(const Duration(days: 365 * 20)),
          ),
          taskIdentifier: TaskIdentifier(id: Identifier.uuid()),
        ),
        result: null,
      );

  testWidgets(
    'detects iOS platform and displays correct widget',
    (WidgetTester tester) async {
      debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
      await tester.pumpWidget(
        CupertinoApp(
          home: MultiProvider(
            providers: [
              Provider<ExerciseController>.value(
                value: ExerciseController(),
              ),
              Provider<bool>.value(value: false),
              Provider<ExerciseProgressConfiguration>.value(
                value: ExerciseProgressConfiguration(),
              ),
            ],
            child: validDateAnswerView(),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byType(CupertinoDatePicker), findsOneWidget);
      debugDefaultTargetPlatformOverride = null;
    },
  );

  testWidgets(
    'detects Android platform and displays correct widget',
    (WidgetTester tester) async {
      debugDefaultTargetPlatformOverride = TargetPlatform.android;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MultiProvider(
              providers: [
                Provider<ExerciseController>.value(
                  value: ExerciseController(),
                ),
                Provider<bool>.value(value: false),
                Provider<ExerciseProgressConfiguration>.value(
                  value: ExerciseProgressConfiguration(),
                ),
              ],
              child: validDateAnswerView(),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byType(CalendarDatePicker), findsOneWidget);
      debugDefaultTargetPlatformOverride = null;
    },
  );

  testWidgets(
    'initial date in between first and last date',
    (WidgetTester tester) async {
      debugDefaultTargetPlatformOverride = TargetPlatform.android;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MultiProvider(
              providers: [
                Provider<ExerciseController>.value(
                  value: ExerciseController(),
                ),
                Provider<bool>.value(value: false),
                Provider<ExerciseProgressConfiguration>.value(
                  value: ExerciseProgressConfiguration(),
                ),
              ],
              child: DateAnswerView(
                questionTask: QuestionTask(
                  title: 'Your Birthday?',
                  answerFormat: DateAnswerFormat(),
                  taskIdentifier: TaskIdentifier(id: Identifier.uuid()),
                ),
                result: null,
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byType(CalendarDatePicker), findsOneWidget);
      debugDefaultTargetPlatformOverride = null;
    },
  );
}
