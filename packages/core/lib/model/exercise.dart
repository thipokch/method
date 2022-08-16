import 'package:core/abstract/describe.dart';
import 'package:core/abstract/uniform.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise.freezed.dart';

@freezed
class Exercise with _$Exercise {
  const factory Exercise({
    required Uniform uniform,
    required Describe describe,
  }) = _Exercise;
}
