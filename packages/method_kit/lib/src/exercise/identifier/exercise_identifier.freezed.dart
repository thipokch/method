// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exercise_identifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExerciseIdentifier _$ExerciseIdentifierFromJson(Map<String, dynamic> json) {
  return _ExerciseIdentifier.fromJson(json);
}

/// @nodoc
mixin _$ExerciseIdentifier {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseIdentifierCopyWith<ExerciseIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseIdentifierCopyWith<$Res> {
  factory $ExerciseIdentifierCopyWith(
          ExerciseIdentifier value, $Res Function(ExerciseIdentifier) then) =
      _$ExerciseIdentifierCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$ExerciseIdentifierCopyWithImpl<$Res>
    implements $ExerciseIdentifierCopyWith<$Res> {
  _$ExerciseIdentifierCopyWithImpl(this._value, this._then);

  final ExerciseIdentifier _value;
  // ignore: unused_field
  final $Res Function(ExerciseIdentifier) _then;

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
abstract class _$$_ExerciseIdentifierCopyWith<$Res>
    implements $ExerciseIdentifierCopyWith<$Res> {
  factory _$$_ExerciseIdentifierCopyWith(_$_ExerciseIdentifier value,
          $Res Function(_$_ExerciseIdentifier) then) =
      __$$_ExerciseIdentifierCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$$_ExerciseIdentifierCopyWithImpl<$Res>
    extends _$ExerciseIdentifierCopyWithImpl<$Res>
    implements _$$_ExerciseIdentifierCopyWith<$Res> {
  __$$_ExerciseIdentifierCopyWithImpl(
      _$_ExerciseIdentifier _value, $Res Function(_$_ExerciseIdentifier) _then)
      : super(_value, (v) => _then(v as _$_ExerciseIdentifier));

  @override
  _$_ExerciseIdentifier get _value => super._value as _$_ExerciseIdentifier;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_ExerciseIdentifier(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExerciseIdentifier extends _ExerciseIdentifier {
  const _$_ExerciseIdentifier({required this.id}) : super._();

  factory _$_ExerciseIdentifier.fromJson(Map<String, dynamic> json) =>
      _$$_ExerciseIdentifierFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'ExerciseIdentifier(id: $id)';
  }

  @JsonKey(ignore: true)
  @override
  _$$_ExerciseIdentifierCopyWith<_$_ExerciseIdentifier> get copyWith =>
      __$$_ExerciseIdentifierCopyWithImpl<_$_ExerciseIdentifier>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExerciseIdentifierToJson(
      this,
    );
  }
}

abstract class _ExerciseIdentifier extends ExerciseIdentifier {
  const factory _ExerciseIdentifier({required final String id}) =
      _$_ExerciseIdentifier;
  const _ExerciseIdentifier._() : super._();

  factory _ExerciseIdentifier.fromJson(Map<String, dynamic> json) =
      _$_ExerciseIdentifier.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_ExerciseIdentifierCopyWith<_$_ExerciseIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}
