import 'package:flutter_test/flutter_test.dart';
import 'package:method_kit/method_kit.dart';

void main() {
  final tResult = BooleanQuestionResult(
    id: const Identifier(id: 'example1'),
    startDate: DateTime(2022, 8, 12, 16, 4),
    endDate: DateTime(2022, 8, 12, 16, 14),
    valueIdentifier: 'bool1',
    result: BooleanResult.NEGATIVE,
  );

  group('serialisation', () {
    test(
      'should work with valid example',
      () async {
        final encodedResult = tResult.toJson();
        final decodedResult = BooleanQuestionResult.fromJson(encodedResult);
        expect(tResult, decodedResult);
      },
    );
  });
}
