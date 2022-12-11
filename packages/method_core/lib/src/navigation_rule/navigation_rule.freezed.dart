// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'navigation_rule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NavigationRule _$NavigationRuleFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'conditional':
      return ConditionalNavigationRule.fromJson(json);
    case 'direct':
      return DirectNavigationRule.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'NavigationRule',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$NavigationRule {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'values')
            @ConditionalNavigationFunctionConverter()
                ConditionalNavigationFunction resultToTaskIdentifierMapper)
        conditional,
    required TResult Function(TaskIdentifier destinationTaskIdentifier) direct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'values')
            @ConditionalNavigationFunctionConverter()
                ConditionalNavigationFunction resultToTaskIdentifierMapper)?
        conditional,
    TResult Function(TaskIdentifier destinationTaskIdentifier)? direct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'values')
            @ConditionalNavigationFunctionConverter()
                ConditionalNavigationFunction resultToTaskIdentifierMapper)?
        conditional,
    TResult Function(TaskIdentifier destinationTaskIdentifier)? direct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConditionalNavigationRule value) conditional,
    required TResult Function(DirectNavigationRule value) direct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConditionalNavigationRule value)? conditional,
    TResult Function(DirectNavigationRule value)? direct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConditionalNavigationRule value)? conditional,
    TResult Function(DirectNavigationRule value)? direct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationRuleCopyWith<$Res> {
  factory $NavigationRuleCopyWith(
          NavigationRule value, $Res Function(NavigationRule) then) =
      _$NavigationRuleCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavigationRuleCopyWithImpl<$Res>
    implements $NavigationRuleCopyWith<$Res> {
  _$NavigationRuleCopyWithImpl(this._value, this._then);

  final NavigationRule _value;
  // ignore: unused_field
  final $Res Function(NavigationRule) _then;
}

/// @nodoc
abstract class _$$ConditionalNavigationRuleCopyWith<$Res> {
  factory _$$ConditionalNavigationRuleCopyWith(
          _$ConditionalNavigationRule value,
          $Res Function(_$ConditionalNavigationRule) then) =
      __$$ConditionalNavigationRuleCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'values')
      @ConditionalNavigationFunctionConverter()
          ConditionalNavigationFunction resultToTaskIdentifierMapper});
}

/// @nodoc
class __$$ConditionalNavigationRuleCopyWithImpl<$Res>
    extends _$NavigationRuleCopyWithImpl<$Res>
    implements _$$ConditionalNavigationRuleCopyWith<$Res> {
  __$$ConditionalNavigationRuleCopyWithImpl(_$ConditionalNavigationRule _value,
      $Res Function(_$ConditionalNavigationRule) _then)
      : super(_value, (v) => _then(v as _$ConditionalNavigationRule));

  @override
  _$ConditionalNavigationRule get _value =>
      super._value as _$ConditionalNavigationRule;

  @override
  $Res call({
    Object? resultToTaskIdentifierMapper = freezed,
  }) {
    return _then(_$ConditionalNavigationRule(
      resultToTaskIdentifierMapper: resultToTaskIdentifierMapper == freezed
          ? _value.resultToTaskIdentifierMapper
          : resultToTaskIdentifierMapper // ignore: cast_nullable_to_non_nullable
              as ConditionalNavigationFunction,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConditionalNavigationRule extends ConditionalNavigationRule {
  const _$ConditionalNavigationRule(
      {@JsonKey(name: 'values')
      @ConditionalNavigationFunctionConverter()
          required this.resultToTaskIdentifierMapper,
      final String? $type})
      : $type = $type ?? 'conditional',
        super._();

  factory _$ConditionalNavigationRule.fromJson(Map<String, dynamic> json) =>
      _$$ConditionalNavigationRuleFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'values')
  @ConditionalNavigationFunctionConverter()
  final ConditionalNavigationFunction resultToTaskIdentifierMapper;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NavigationRule.conditional(resultToTaskIdentifierMapper: $resultToTaskIdentifierMapper)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionalNavigationRule &&
            (identical(other.resultToTaskIdentifierMapper,
                    resultToTaskIdentifierMapper) ||
                other.resultToTaskIdentifierMapper ==
                    resultToTaskIdentifierMapper));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, resultToTaskIdentifierMapper);

  @JsonKey(ignore: true)
  @override
  _$$ConditionalNavigationRuleCopyWith<_$ConditionalNavigationRule>
      get copyWith => __$$ConditionalNavigationRuleCopyWithImpl<
          _$ConditionalNavigationRule>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'values')
            @ConditionalNavigationFunctionConverter()
                ConditionalNavigationFunction resultToTaskIdentifierMapper)
        conditional,
    required TResult Function(TaskIdentifier destinationTaskIdentifier) direct,
  }) {
    return conditional(resultToTaskIdentifierMapper);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'values')
            @ConditionalNavigationFunctionConverter()
                ConditionalNavigationFunction resultToTaskIdentifierMapper)?
        conditional,
    TResult Function(TaskIdentifier destinationTaskIdentifier)? direct,
  }) {
    return conditional?.call(resultToTaskIdentifierMapper);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'values')
            @ConditionalNavigationFunctionConverter()
                ConditionalNavigationFunction resultToTaskIdentifierMapper)?
        conditional,
    TResult Function(TaskIdentifier destinationTaskIdentifier)? direct,
    required TResult orElse(),
  }) {
    if (conditional != null) {
      return conditional(resultToTaskIdentifierMapper);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConditionalNavigationRule value) conditional,
    required TResult Function(DirectNavigationRule value) direct,
  }) {
    return conditional(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConditionalNavigationRule value)? conditional,
    TResult Function(DirectNavigationRule value)? direct,
  }) {
    return conditional?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConditionalNavigationRule value)? conditional,
    TResult Function(DirectNavigationRule value)? direct,
    required TResult orElse(),
  }) {
    if (conditional != null) {
      return conditional(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionalNavigationRuleToJson(
      this,
    );
  }
}

abstract class ConditionalNavigationRule extends NavigationRule {
  const factory ConditionalNavigationRule(
      {@JsonKey(name: 'values')
      @ConditionalNavigationFunctionConverter()
          required final ConditionalNavigationFunction
              resultToTaskIdentifierMapper}) = _$ConditionalNavigationRule;
  const ConditionalNavigationRule._() : super._();

  factory ConditionalNavigationRule.fromJson(Map<String, dynamic> json) =
      _$ConditionalNavigationRule.fromJson;

// ignore: invalid_annotation_target
  @JsonKey(name: 'values')
  @ConditionalNavigationFunctionConverter()
  ConditionalNavigationFunction get resultToTaskIdentifierMapper;
  @JsonKey(ignore: true)
  _$$ConditionalNavigationRuleCopyWith<_$ConditionalNavigationRule>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DirectNavigationRuleCopyWith<$Res> {
  factory _$$DirectNavigationRuleCopyWith(_$DirectNavigationRule value,
          $Res Function(_$DirectNavigationRule) then) =
      __$$DirectNavigationRuleCopyWithImpl<$Res>;
  $Res call({TaskIdentifier destinationTaskIdentifier});
}

/// @nodoc
class __$$DirectNavigationRuleCopyWithImpl<$Res>
    extends _$NavigationRuleCopyWithImpl<$Res>
    implements _$$DirectNavigationRuleCopyWith<$Res> {
  __$$DirectNavigationRuleCopyWithImpl(_$DirectNavigationRule _value,
      $Res Function(_$DirectNavigationRule) _then)
      : super(_value, (v) => _then(v as _$DirectNavigationRule));

  @override
  _$DirectNavigationRule get _value => super._value as _$DirectNavigationRule;

  @override
  $Res call({
    Object? destinationTaskIdentifier = freezed,
  }) {
    return _then(_$DirectNavigationRule(
      destinationTaskIdentifier: destinationTaskIdentifier == freezed
          ? _value.destinationTaskIdentifier
          : destinationTaskIdentifier // ignore: cast_nullable_to_non_nullable
              as TaskIdentifier,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DirectNavigationRule extends DirectNavigationRule {
  const _$DirectNavigationRule(
      {required this.destinationTaskIdentifier, final String? $type})
      : $type = $type ?? 'direct',
        super._();

  factory _$DirectNavigationRule.fromJson(Map<String, dynamic> json) =>
      _$$DirectNavigationRuleFromJson(json);

  @override
  final TaskIdentifier destinationTaskIdentifier;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NavigationRule.direct(destinationTaskIdentifier: $destinationTaskIdentifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectNavigationRule &&
            const DeepCollectionEquality().equals(
                other.destinationTaskIdentifier, destinationTaskIdentifier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(destinationTaskIdentifier));

  @JsonKey(ignore: true)
  @override
  _$$DirectNavigationRuleCopyWith<_$DirectNavigationRule> get copyWith =>
      __$$DirectNavigationRuleCopyWithImpl<_$DirectNavigationRule>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'values')
            @ConditionalNavigationFunctionConverter()
                ConditionalNavigationFunction resultToTaskIdentifierMapper)
        conditional,
    required TResult Function(TaskIdentifier destinationTaskIdentifier) direct,
  }) {
    return direct(destinationTaskIdentifier);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'values')
            @ConditionalNavigationFunctionConverter()
                ConditionalNavigationFunction resultToTaskIdentifierMapper)?
        conditional,
    TResult Function(TaskIdentifier destinationTaskIdentifier)? direct,
  }) {
    return direct?.call(destinationTaskIdentifier);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'values')
            @ConditionalNavigationFunctionConverter()
                ConditionalNavigationFunction resultToTaskIdentifierMapper)?
        conditional,
    TResult Function(TaskIdentifier destinationTaskIdentifier)? direct,
    required TResult orElse(),
  }) {
    if (direct != null) {
      return direct(destinationTaskIdentifier);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConditionalNavigationRule value) conditional,
    required TResult Function(DirectNavigationRule value) direct,
  }) {
    return direct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConditionalNavigationRule value)? conditional,
    TResult Function(DirectNavigationRule value)? direct,
  }) {
    return direct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConditionalNavigationRule value)? conditional,
    TResult Function(DirectNavigationRule value)? direct,
    required TResult orElse(),
  }) {
    if (direct != null) {
      return direct(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DirectNavigationRuleToJson(
      this,
    );
  }
}

abstract class DirectNavigationRule extends NavigationRule {
  const factory DirectNavigationRule(
          {required final TaskIdentifier destinationTaskIdentifier}) =
      _$DirectNavigationRule;
  const DirectNavigationRule._() : super._();

  factory DirectNavigationRule.fromJson(Map<String, dynamic> json) =
      _$DirectNavigationRule.fromJson;

  TaskIdentifier get destinationTaskIdentifier;
  @JsonKey(ignore: true)
  _$$DirectNavigationRuleCopyWith<_$DirectNavigationRule> get copyWith =>
      throw _privateConstructorUsedError;
}
