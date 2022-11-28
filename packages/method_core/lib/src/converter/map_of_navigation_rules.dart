import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_core/method_core.dart';

// typedef MapOfNavigationRules = Map<TaskIdentifier, NavigationRule>;

class MapOfNavigationRulesConverter
    extends JsonConverter<Map<TaskIdentifier, NavigationRule>, List> {
  const MapOfNavigationRulesConverter();

  @override
  Map<TaskIdentifier, NavigationRule> fromJson(
    List json,
  ) =>
      {
        for (final entry in json)
          TaskIdentifier.fromJson(entry['triggerTaskIdentifier']):
              NavigationRule.fromJson(entry as Map<String, dynamic>),
      };

  @override
  List toJson(
    Map<TaskIdentifier, NavigationRule> object,
  ) =>
      [
        for (final entry in object.values) entry,
      ];
}
