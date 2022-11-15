import 'package:flutter_test/flutter_test.dart';
import 'package:method_kit/src/result/step/video_step_result.dart';
import 'package:method_kit/method_kit.dart';

void main() {
  final tResult = VideoStepResult(
    id: Identifier(id: 'example1'),
    startDate: DateTime(2022, 8, 12, 16, 4),
    endDate: DateTime(2022, 8, 12, 16, 14),
    result: VideoResult(
      stayedInVideo: DateTime(2022, 8, 12, 16, 12, 30),
      leftVideoAt: const Duration(minutes: 1, seconds: 13, milliseconds: 123),
    ),
  );

  group('serialisation', () {
    test(
      'should work with valid example',
      () async {
        final encodedResult = tResult.toJson();
        final decodedResult = VideoStepResult.fromJson(encodedResult);
        expect(tResult, decodedResult);
      },
    );
  });
}
