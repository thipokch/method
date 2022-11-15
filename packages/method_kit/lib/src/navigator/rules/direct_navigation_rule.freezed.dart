// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'direct_navigation_rule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DirectNavigationRule _$DirectNavigationRuleFromJson(Map<String, dynamic> json) {
  return _DirectNavigationRule.fromJson(json);
}

/// @nodoc
mixin _$DirectNavigationRule {
  StepIdentifier get destinationStepIdentifier =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DirectNavigationRuleCopyWith<DirectNavigationRule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectNavigationRuleCopyWith<$Res> {
  factory $DirectNavigationRuleCopyWith(DirectNavigationRule value,
          $Res Function(DirectNavigationRule) then) =
      _$DirectNavigationRuleCopyWithImpl<$Res>;
  $Res call({StepIdentifier destinationStepIdentifier});

  $StepIdentifierCopyWith<$Res> get destinationStepIdentifier;
}

/// @nodoc
class _$DirectNavigationRuleCopyWithImpl<$Res>
    implements $DirectNavigationRuleCopyWith<$Res> {
  _$DirectNavigationRuleCopyWithImpl(this._value, this._then);

  final DirectNavigationRule _value;
  // ignore: unused_field
  final $Res Function(DirectNavigationRule) _then;

  @override
  $Res call({
    Object? destinationStepIdentifier = freezed,
  }) {
    return _then(_value.copyWith(
      destinationStepIdentifier: destinationStepIdentifier == freezed
          ? _value.destinationStepIdentifier
          : destinationStepIdentifier // ignore: cast_nullable_to_non_nullable
              as StepIdentifier,
    ));
  }

  @override
  $StepIdentifierCopyWith<$Res> get destinationStepIdentifier {
    return $StepIdentifierCopyWith<$Res>(_value.destinationStepIdentifier,
        (value) {
      return _then(_value.copyWith(destinationStepIdentifier: value));
    });
  }
}

/// @nodoc
abstract class _$$_DirectNavigationRuleCopyWith<$Res>
    implements $DirectNavigationRuleCopyWith<$Res> {
  factory _$$_DirectNavigationRuleCopyWith(_$_DirectNavigationRule value,
          $Res Function(_$_DirectNavigationRule) then) =
      __$$_DirectNavigationRuleCopyWithImpl<$Res>;
  @override
  $Res call({StepIdentifier destinationStepIdentifier});

  @override
  $StepIdentifierCopyWith<$Res> get destinationStepIdentifier;
}

/// @nodoc
class __$$_DirectNavigationRuleCopyWithImpl<$Res>
    extends _$DirectNavigationRuleCopyWithImpl<$Res>
    implements _$$_DirectNavigationRuleCopyWith<$Res> {
  __$$_DirectNavigationRuleCopyWithImpl(_$_DirectNavigationRule _value,
      $Res Function(_$_DirectNavigationRule) _then)
      : super(_value, (v) => _then(v as _$_DirectNavigationRule));

  @override
  _$_DirectNavigationRule get _value => super._value as _$_DirectNavigationRule;

  @override
  $Res call({
    Object? destinationStepIdentifier = freezed,
  }) {
    return _then(_$_DirectNavigationRule(
      destinationStepIdentifier == freezed
          ? _value.destinationStepIdentifier
          : destinationStepIdentifier // ignore: cast_nullable_to_non_nullable
              as StepIdentifier,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DirectNavigationRule extends _DirectNavigationRule {
  _$_DirectNavigationRule(this.destinationStepIdentifier) : super._();

  factory _$_DirectNavigationRule.fromJson(Map<String, dynamic> json) =>
      _$$_DirectNavigationRuleFromJson(json);

  @override
  final StepIdentifier destinationStepIdentifier;

  @override
  String toString() {
    return 'DirectNavigationRule(destinationStepIdentifier: $destinationStepIdentifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DirectNavigationRule &&
            const DeepCollectionEquality().equals(
                other.destinationStepIdentifier, destinationStepIdentifier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(destinationStepIdentifier));

  @JsonKey(ignore: true)
  @override
  _$$_DirectNavigationRuleCopyWith<_$_DirectNavigationRule> get copyWith =>
      __$$_DirectNavigationRuleCopyWithImpl<_$_DirectNavigationRule>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DirectNavigationRuleToJson(
      this,
    );
  }
}

abstract class _DirectNavigationRule extends DirectNavigationRule {
  factory _DirectNavigationRule(
      final StepIdentifier destinationStepIdentifier) = _$_DirectNavigationRule;
  _DirectNavigationRule._() : super._();

  factory _DirectNavigationRule.fromJson(Map<String, dynamic> json) =
      _$_DirectNavigationRule.fromJson;

  @override
  StepIdentifier get destinationStepIdentifier;
  @override
  @JsonKey(ignore: true)
  _$$_DirectNavigationRuleCopyWith<_$_DirectNavigationRule> get copyWith =>
      throw _privateConstructorUsedError;
}
