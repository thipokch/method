import 'package:method_kit/src/navigator/rules/navigation_rule.dart';
import 'package:method_kit/src/task/identifier/task_identifier.dart';

class ConditionalNavigationRule implements NavigationRule {
  final TaskIdentifier? Function(String?) resultToTaskIdentifierMapper;

  const ConditionalNavigationRule({
    required this.resultToTaskIdentifierMapper,
  });

  factory ConditionalNavigationRule.fromJson(Map<String, dynamic> json) {
    final inputValues = json['values'] as Map<String, dynamic>;

    return ConditionalNavigationRule(
      resultToTaskIdentifierMapper: (input) {
        for (final MapEntry entry in inputValues.entries) {
          if (entry.key == input) {
            return TaskIdentifier(id: entry.value);
          }
        }

        return null;
      },
    );
  }

  @override
  Map<String, dynamic> toJson() => {'values': {}};
}
