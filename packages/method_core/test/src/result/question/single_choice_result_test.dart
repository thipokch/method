import 'package:flutter_test/flutter_test.dart';
import 'package:method_core/method_core.dart';

void main() {
  final tResult = SingleChoiceQuestionResult(
    id: const Identifier(id: 'example1'),
    startDate: DateTime(2022, 8, 12, 16, 4),
    endDate: DateTime(2022, 8, 12, 16, 14),
    valueIdentifier: 'singleChoiceValue1',
    result: const TextChoice(text: 'choice1', value: 'option2'),
  );

  group('serialisation', () {
    test(
      'should work with valid example',
      () async {
        final encodedResult = tResult.toJson();
        final decodedResult =
            SingleChoiceQuestionResult.fromJson(encodedResult);
        expect(tResult, decodedResult);
      },
    );
  });
}
