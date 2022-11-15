// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'step_identifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StepIdentifier _$StepIdentifierFromJson(Map<String, dynamic> json) {
  return _StepIdentifier.fromJson(json);
}

/// @nodoc
mixin _$StepIdentifier {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StepIdentifierCopyWith<StepIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepIdentifierCopyWith<$Res> {
  factory $StepIdentifierCopyWith(
          StepIdentifier value, $Res Function(StepIdentifier) then) =
      _$StepIdentifierCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$StepIdentifierCopyWithImpl<$Res>
    implements $StepIdentifierCopyWith<$Res> {
  _$StepIdentifierCopyWithImpl(this._value, this._then);

  final StepIdentifier _value;
  // ignore: unused_field
  final $Res Function(StepIdentifier) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_StepIdentifierCopyWith<$Res>
    implements $StepIdentifierCopyWith<$Res> {
  factory _$$_StepIdentifierCopyWith(
          _$_StepIdentifier value, $Res Function(_$_StepIdentifier) then) =
      __$$_StepIdentifierCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$$_StepIdentifierCopyWithImpl<$Res>
    extends _$StepIdentifierCopyWithImpl<$Res>
    implements _$$_StepIdentifierCopyWith<$Res> {
  __$$_StepIdentifierCopyWithImpl(
      _$_StepIdentifier _value, $Res Function(_$_StepIdentifier) _then)
      : super(_value, (v) => _then(v as _$_StepIdentifier));

  @override
  _$_StepIdentifier get _value => super._value as _$_StepIdentifier;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_StepIdentifier(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StepIdentifier extends _StepIdentifier {
  const _$_StepIdentifier({required this.id}) : super._();

  factory _$_StepIdentifier.fromJson(Map<String, dynamic> json) =>
      _$$_StepIdentifierFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'StepIdentifier(id: $id)';
  }

  @JsonKey(ignore: true)
  @override
  _$$_StepIdentifierCopyWith<_$_StepIdentifier> get copyWith =>
      __$$_StepIdentifierCopyWithImpl<_$_StepIdentifier>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StepIdentifierToJson(
      this,
    );
  }
}

abstract class _StepIdentifier extends StepIdentifier {
  const factory _StepIdentifier({required final String id}) = _$_StepIdentifier;
  const _StepIdentifier._() : super._();

  factory _StepIdentifier.fromJson(Map<String, dynamic> json) =
      _$_StepIdentifier.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_StepIdentifierCopyWith<_$_StepIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}
