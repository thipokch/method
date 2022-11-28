import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_core/method_core.dart';
import 'package:method_core/src/converter/conditional_navigation_rule.dart';

part 'navigation_rule.freezed.dart';

part 'navigation_rule.g.dart';

@freezed
class NavigationRule with _$NavigationRule {
  const NavigationRule._();

  const factory NavigationRule.conditional({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'values')
    @ConditionalNavigationFunctionConverter()
        required final ConditionalNavigationFunction
            resultToTaskIdentifierMapper,
  }) = ConditionalNavigationRule;

  const factory NavigationRule.direct({
    required final TaskIdentifier destinationTaskIdentifier,
  }) = DirectNavigationRule;

  factory NavigationRule.fromJson(Map<String, dynamic> json) =>
      _$NavigationRuleFromJson(json);
}
