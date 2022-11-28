import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_core/method_core.dart';

typedef ConditionalNavigationFunction = TaskIdentifier? Function(String?);

class ConditionalNavigationFunctionConverter
    extends JsonConverter<ConditionalNavigationFunction, Map<String, dynamic>> {
  const ConditionalNavigationFunctionConverter();

  @override
  ConditionalNavigationFunction fromJson(
    Map<String, dynamic> json,
  ) =>
      (input) {
        for (final MapEntry entry in json.entries) {
          if (entry.key == input) {
            return TaskIdentifier(id: entry.value);
          }
        }

        return null;
      };

  @override
  Map<String, dynamic> toJson(
    ConditionalNavigationFunction object,
  ) =>
      {'values': {}};
}
