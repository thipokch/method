// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_identifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskIdentifier _$TaskIdentifierFromJson(Map<String, dynamic> json) {
  return _TaskIdentifier.fromJson(json);
}

/// @nodoc
mixin _$TaskIdentifier {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskIdentifierCopyWith<TaskIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskIdentifierCopyWith<$Res> {
  factory $TaskIdentifierCopyWith(
          TaskIdentifier value, $Res Function(TaskIdentifier) then) =
      _$TaskIdentifierCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$TaskIdentifierCopyWithImpl<$Res>
    implements $TaskIdentifierCopyWith<$Res> {
  _$TaskIdentifierCopyWithImpl(this._value, this._then);

  final TaskIdentifier _value;
  // ignore: unused_field
  final $Res Function(TaskIdentifier) _then;

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
abstract class _$$_TaskIdentifierCopyWith<$Res>
    implements $TaskIdentifierCopyWith<$Res> {
  factory _$$_TaskIdentifierCopyWith(
          _$_TaskIdentifier value, $Res Function(_$_TaskIdentifier) then) =
      __$$_TaskIdentifierCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$$_TaskIdentifierCopyWithImpl<$Res>
    extends _$TaskIdentifierCopyWithImpl<$Res>
    implements _$$_TaskIdentifierCopyWith<$Res> {
  __$$_TaskIdentifierCopyWithImpl(
      _$_TaskIdentifier _value, $Res Function(_$_TaskIdentifier) _then)
      : super(_value, (v) => _then(v as _$_TaskIdentifier));

  @override
  _$_TaskIdentifier get _value => super._value as _$_TaskIdentifier;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_TaskIdentifier(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskIdentifier extends _TaskIdentifier {
  const _$_TaskIdentifier({required this.id}) : super._();

  factory _$_TaskIdentifier.fromJson(Map<String, dynamic> json) =>
      _$$_TaskIdentifierFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'TaskIdentifier(id: $id)';
  }

  @JsonKey(ignore: true)
  @override
  _$$_TaskIdentifierCopyWith<_$_TaskIdentifier> get copyWith =>
      __$$_TaskIdentifierCopyWithImpl<_$_TaskIdentifier>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskIdentifierToJson(
      this,
    );
  }
}

abstract class _TaskIdentifier extends TaskIdentifier {
  const factory _TaskIdentifier({required final String id}) = _$_TaskIdentifier;
  const _TaskIdentifier._() : super._();

  factory _TaskIdentifier.fromJson(Map<String, dynamic> json) =
      _$_TaskIdentifier.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_TaskIdentifierCopyWith<_$_TaskIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}
