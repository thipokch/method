import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/method_kit.dart';
import 'package:uuid/uuid.dart';

part 'task_identifier.freezed.dart';
part 'task_identifier.g.dart';

@freezed
class TaskIdentifier
    with _$TaskIdentifier, IdentifierEquality<TaskIdentifier>
    implements Identifier {
  const TaskIdentifier._();

  const factory TaskIdentifier({
    required final String id,
  }) = _TaskIdentifier;

  static TaskIdentifier fromNullable({
    String? id,
  }) =>
      TaskIdentifier(id: id ?? const Uuid().v4());

  factory TaskIdentifier.fromJson(Map<String, dynamic> json) =>
      _$TaskIdentifierFromJson(json);
}
