import 'package:flutter_test/flutter_test.dart';
import 'package:method_kit/method_kit.dart';

void main() {
  final List<TaskResultDetail> tQuestionResults = ([
    InstructionTaskResult(
      const Identifier(id: 'example1_intro'),
      DateTime(2022, 8, 12, 16, 4),
      DateTime(2022, 8, 12, 16, 5),
    ),
    BooleanQuestionResult(
      id: const Identifier(id: 'example1_boolean'),
      startDate: DateTime(2022, 8, 12, 16, 5),
      endDate: DateTime(2022, 8, 12, 16, 10),
      valueIdentifier: 'bool1',
      result: BooleanResult.NEGATIVE,
    ),
    CompletionTaskResult(
      const Identifier(id: 'example1_completion'),
      DateTime(2022, 8, 12, 16, 10),
      DateTime(2022, 8, 12, 16, 14),
    ),
  ]);
  final tExerciseResult = ExerciseResult(
    id: const Identifier(id: 'example1'),
    startDate: DateTime(2022, 8, 12, 16, 4),
    endDate: DateTime(2022, 8, 12, 16, 14),
    finishReason: FinishReason.COMPLETED,
    results: [
      TaskResult(
        id: const Identifier(id: 'example1_taskResult'),
        startDate: DateTime(2022, 8, 12, 16, 5),
        endDate: DateTime(2022, 8, 12, 16, 10),
        results: tQuestionResults,
      ),
    ],
  );

  group('serialisation', () {
    test(
      'should work with valid example',
      () async {
        final encodedResult = tExerciseResult.toJson();
        final decodedResult = ExerciseResult.fromJson(encodedResult);
        expect(tExerciseResult, decodedResult);
      },
    );
  });
}
