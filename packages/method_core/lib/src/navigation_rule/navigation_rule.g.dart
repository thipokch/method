// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConditionalNavigationRule _$$ConditionalNavigationRuleFromJson(
        Map<String, dynamic> json) =>
    _$ConditionalNavigationRule(
      resultToTaskIdentifierMapper:
          const ConditionalNavigationFunctionConverter()
              .fromJson(json['values'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ConditionalNavigationRuleToJson(
        _$ConditionalNavigationRule instance) =>
    <String, dynamic>{
      'values': const ConditionalNavigationFunctionConverter()
          .toJson(instance.resultToTaskIdentifierMapper),
      'runtimeType': instance.$type,
    };

_$DirectNavigationRule _$$DirectNavigationRuleFromJson(
        Map<String, dynamic> json) =>
    _$DirectNavigationRule(
      destinationTaskIdentifier: TaskIdentifier.fromJson(
          json['destinationTaskIdentifier'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DirectNavigationRuleToJson(
        _$DirectNavigationRule instance) =>
    <String, dynamic>{
      'destinationTaskIdentifier': instance.destinationTaskIdentifier,
      'runtimeType': instance.$type,
    };
