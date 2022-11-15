import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_kit/method_kit.dart';
import 'package:provider/provider.dart';

void main() {
  DateAnswerView validDateAnswerView() => DateAnswerView(
        questionStep: QuestionStep(
          answerFormat: DateAnswerFormat(
            minDate: DateTime.now().subtract(const Duration(days: 365 * 70)),
            maxDate: DateTime.now().subtract(const Duration(days: 365 * 15)),
            defaultDate:
                DateTime.now().subtract(const Duration(days: 365 * 20)),
          ),
          stepIdentifier: StepIdentifier(id: Identifier.uuid()),
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
              Provider<SurveyController>.value(
                value: SurveyController(),
              ),
              Provider<bool>.value(value: false),
              Provider<SurveyProgressConfiguration>.value(
                value: SurveyProgressConfiguration(),
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
                Provider<SurveyController>.value(
                  value: SurveyController(),
                ),
                Provider<bool>.value(value: false),
                Provider<SurveyProgressConfiguration>.value(
                  value: SurveyProgressConfiguration(),
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
                Provider<SurveyController>.value(
                  value: SurveyController(),
                ),
                Provider<bool>.value(value: false),
                Provider<SurveyProgressConfiguration>.value(
                  value: SurveyProgressConfiguration(),
                ),
              ],
              child: DateAnswerView(
                questionStep: QuestionStep(
                  title: 'Your Birthday?',
                  answerFormat: DateAnswerFormat(),
                  stepIdentifier: StepIdentifier(id: Identifier.uuid()),
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
