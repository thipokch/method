import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_kit/src/navigator/rules/navigation_rule.dart';
import 'package:method_kit/src/task/identifier/task_identifier.dart';

part 'direct_navigation_rule.freezed.dart';
part 'direct_navigation_rule.g.dart';

@freezed
class DirectNavigationRule
    with _$DirectNavigationRule
    implements NavigationRule {
  const DirectNavigationRule._();

  factory DirectNavigationRule(final TaskIdentifier destinationTaskIdentifier) =
      _DirectNavigationRule;

  factory DirectNavigationRule.fromJson(Map<String, dynamic> json) =>
      _$DirectNavigationRuleFromJson(json);
}
