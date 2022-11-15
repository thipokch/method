import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/method_kit.dart';

part 'task_identifier.freezed.dart';
part 'task_identifier.g.dart';

/// Used to uniquly identify a [Task]
@freezed
class TaskIdentifier
    with _$TaskIdentifier, IdentifierEquality<TaskIdentifier>
    implements Identifier {
  const TaskIdentifier._();

  const factory TaskIdentifier({
    required final String id,
  }) = _TaskIdentifier;

  factory TaskIdentifier.fromJson(Map<String, dynamic> json) =>
      _$TaskIdentifierFromJson(json);
}
