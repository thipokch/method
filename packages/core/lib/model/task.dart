import 'package:core/abstract/describe.dart';
import 'package:core/abstract/uniform.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required Uniform uniform,
    required Describe describe,
  }) = _Task;
}
