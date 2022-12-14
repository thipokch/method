import 'package:flutter_test/flutter_test.dart';
import 'package:method_core/method_core.dart';

void main() {
  final tResult = CompletionTaskResult(
    const Identifier(id: 'example1'),
    DateTime(2022, 8, 12, 16, 4),
    DateTime(2022, 8, 12, 16, 14),
  );

  group('serialisation', () {
    test(
      'should work with valid example',
      () async {
        final encodedResult = tResult.toJson();
        final decodedResult = CompletionTaskResult.fromJson(encodedResult);
        expect(tResult, decodedResult);
      },
    );
  });
}