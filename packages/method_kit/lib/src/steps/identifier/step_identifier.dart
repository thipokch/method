import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/method_kit.dart';
import 'package:uuid/uuid.dart';

part 'step_identifier.freezed.dart';
part 'step_identifier.g.dart';

@freezed
class StepIdentifier
    with _$StepIdentifier, IdentifierEquality<StepIdentifier>
    implements Identifier {
  const StepIdentifier._();

  const factory StepIdentifier({
    required final String id,
  }) = _StepIdentifier;

  static StepIdentifier fromNullable({
    String? id,
  }) =>
      StepIdentifier(id: id ?? const Uuid().v4());

  factory StepIdentifier.fromJson(Map<String, dynamic> json) =>
      _$StepIdentifierFromJson(json);
}
