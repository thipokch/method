// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'identifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Identifier _$IdentifierFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'exercise':
      return ExerciseIdentifier.fromJson(json);
    case 'task':
      return TaskIdentifier.fromJson(json);

    default:
      return BaseIdentifier.fromJson(json);
  }
}

/// @nodoc
mixin _$Identifier {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id) $default, {
    required TResult Function(String id) exercise,
    required TResult Function(String id) task,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String id)? $default, {
    TResult Function(String id)? exercise,
    TResult Function(String id)? task,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id)? $default, {
    TResult Function(String id)? exercise,
    TResult Function(String id)? task,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(BaseIdentifier value) $default, {
    required TResult Function(ExerciseIdentifier value) exercise,
    required TResult Function(TaskIdentifier value) task,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(BaseIdentifier value)? $default, {
    TResult Function(ExerciseIdentifier value)? exercise,
    TResult Function(TaskIdentifier value)? task,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(BaseIdentifier value)? $default, {
    TResult Function(ExerciseIdentifier value)? exercise,
    TResult Function(TaskIdentifier value)? task,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdentifierCopyWith<Identifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentifierCopyWith<$Res> {
  factory $IdentifierCopyWith(
          Identifier value, $Res Function(Identifier) then) =
      _$IdentifierCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$IdentifierCopyWithImpl<$Res> implements $IdentifierCopyWith<$Res> {
  _$IdentifierCopyWithImpl(this._value, this._then);

  final Identifier _value;
  // ignore: unused_field
  final $Res Function(Identifier) _then;

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
abstract class _$$BaseIdentifierCopyWith<$Res>
    implements $IdentifierCopyWith<$Res> {
  factory _$$BaseIdentifierCopyWith(
          _$BaseIdentifier value, $Res Function(_$BaseIdentifier) then) =
      __$$BaseIdentifierCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$$BaseIdentifierCopyWithImpl<$Res>
    extends _$IdentifierCopyWithImpl<$Res>
    implements _$$BaseIdentifierCopyWith<$Res> {
  __$$BaseIdentifierCopyWithImpl(
      _$BaseIdentifier _value, $Res Function(_$BaseIdentifier) _then)
      : super(_value, (v) => _then(v as _$BaseIdentifier));

  @override
  _$BaseIdentifier get _value => super._value as _$BaseIdentifier;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$BaseIdentifier(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseIdentifier implements BaseIdentifier {
  const _$BaseIdentifier({required this.id, final String? $type})
      : $type = $type ?? 'default';

  factory _$BaseIdentifier.fromJson(Map<String, dynamic> json) =>
      _$$BaseIdentifierFromJson(json);

  @override
  final String id;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Identifier(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseIdentifier &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$BaseIdentifierCopyWith<_$BaseIdentifier> get copyWith =>
      __$$BaseIdentifierCopyWithImpl<_$BaseIdentifier>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id) $default, {
    required TResult Function(String id) exercise,
    required TResult Function(String id) task,
  }) {
    return $default(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String id)? $default, {
    TResult Function(String id)? exercise,
    TResult Function(String id)? task,
  }) {
    return $default?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id)? $default, {
    TResult Function(String id)? exercise,
    TResult Function(String id)? task,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(BaseIdentifier value) $default, {
    required TResult Function(ExerciseIdentifier value) exercise,
    required TResult Function(TaskIdentifier value) task,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(BaseIdentifier value)? $default, {
    TResult Function(ExerciseIdentifier value)? exercise,
    TResult Function(TaskIdentifier value)? task,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(BaseIdentifier value)? $default, {
    TResult Function(ExerciseIdentifier value)? exercise,
    TResult Function(TaskIdentifier value)? task,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseIdentifierToJson(
      this,
    );
  }
}

abstract class BaseIdentifier implements Identifier {
  const factory BaseIdentifier({required final String id}) = _$BaseIdentifier;

  factory BaseIdentifier.fromJson(Map<String, dynamic> json) =
      _$BaseIdentifier.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$BaseIdentifierCopyWith<_$BaseIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExerciseIdentifierCopyWith<$Res>
    implements $IdentifierCopyWith<$Res> {
  factory _$$ExerciseIdentifierCopyWith(_$ExerciseIdentifier value,
          $Res Function(_$ExerciseIdentifier) then) =
      __$$ExerciseIdentifierCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$$ExerciseIdentifierCopyWithImpl<$Res>
    extends _$IdentifierCopyWithImpl<$Res>
    implements _$$ExerciseIdentifierCopyWith<$Res> {
  __$$ExerciseIdentifierCopyWithImpl(
      _$ExerciseIdentifier _value, $Res Function(_$ExerciseIdentifier) _then)
      : super(_value, (v) => _then(v as _$ExerciseIdentifier));

  @override
  _$ExerciseIdentifier get _value => super._value as _$ExerciseIdentifier;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$ExerciseIdentifier(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseIdentifier implements ExerciseIdentifier {
  const _$ExerciseIdentifier({required this.id, final String? $type})
      : $type = $type ?? 'exercise';

  factory _$ExerciseIdentifier.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseIdentifierFromJson(json);

  @override
  final String id;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Identifier.exercise(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseIdentifier &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$ExerciseIdentifierCopyWith<_$ExerciseIdentifier> get copyWith =>
      __$$ExerciseIdentifierCopyWithImpl<_$ExerciseIdentifier>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id) $default, {
    required TResult Function(String id) exercise,
    required TResult Function(String id) task,
  }) {
    return exercise(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String id)? $default, {
    TResult Function(String id)? exercise,
    TResult Function(String id)? task,
  }) {
    return exercise?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id)? $default, {
    TResult Function(String id)? exercise,
    TResult Function(String id)? task,
    required TResult orElse(),
  }) {
    if (exercise != null) {
      return exercise(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(BaseIdentifier value) $default, {
    required TResult Function(ExerciseIdentifier value) exercise,
    required TResult Function(TaskIdentifier value) task,
  }) {
    return exercise(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(BaseIdentifier value)? $default, {
    TResult Function(ExerciseIdentifier value)? exercise,
    TResult Function(TaskIdentifier value)? task,
  }) {
    return exercise?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(BaseIdentifier value)? $default, {
    TResult Function(ExerciseIdentifier value)? exercise,
    TResult Function(TaskIdentifier value)? task,
    required TResult orElse(),
  }) {
    if (exercise != null) {
      return exercise(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseIdentifierToJson(
      this,
    );
  }
}

abstract class ExerciseIdentifier implements Identifier {
  const factory ExerciseIdentifier({required final String id}) =
      _$ExerciseIdentifier;

  factory ExerciseIdentifier.fromJson(Map<String, dynamic> json) =
      _$ExerciseIdentifier.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$ExerciseIdentifierCopyWith<_$ExerciseIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskIdentifierCopyWith<$Res>
    implements $IdentifierCopyWith<$Res> {
  factory _$$TaskIdentifierCopyWith(
          _$TaskIdentifier value, $Res Function(_$TaskIdentifier) then) =
      __$$TaskIdentifierCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$$TaskIdentifierCopyWithImpl<$Res>
    extends _$IdentifierCopyWithImpl<$Res>
    implements _$$TaskIdentifierCopyWith<$Res> {
  __$$TaskIdentifierCopyWithImpl(
      _$TaskIdentifier _value, $Res Function(_$TaskIdentifier) _then)
      : super(_value, (v) => _then(v as _$TaskIdentifier));

  @override
  _$TaskIdentifier get _value => super._value as _$TaskIdentifier;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$TaskIdentifier(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskIdentifier implements TaskIdentifier {
  const _$TaskIdentifier({required this.id, final String? $type})
      : $type = $type ?? 'task';

  factory _$TaskIdentifier.fromJson(Map<String, dynamic> json) =>
      _$$TaskIdentifierFromJson(json);

  @override
  final String id;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Identifier.task(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskIdentifier &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$TaskIdentifierCopyWith<_$TaskIdentifier> get copyWith =>
      __$$TaskIdentifierCopyWithImpl<_$TaskIdentifier>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id) $default, {
    required TResult Function(String id) exercise,
    required TResult Function(String id) task,
  }) {
    return task(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String id)? $default, {
    TResult Function(String id)? exercise,
    TResult Function(String id)? task,
  }) {
    return task?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id)? $default, {
    TResult Function(String id)? exercise,
    TResult Function(String id)? task,
    required TResult orElse(),
  }) {
    if (task != null) {
      return task(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(BaseIdentifier value) $default, {
    required TResult Function(ExerciseIdentifier value) exercise,
    required TResult Function(TaskIdentifier value) task,
  }) {
    return task(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(BaseIdentifier value)? $default, {
    TResult Function(ExerciseIdentifier value)? exercise,
    TResult Function(TaskIdentifier value)? task,
  }) {
    return task?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(BaseIdentifier value)? $default, {
    TResult Function(ExerciseIdentifier value)? exercise,
    TResult Function(TaskIdentifier value)? task,
    required TResult orElse(),
  }) {
    if (task != null) {
      return task(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskIdentifierToJson(
      this,
    );
  }
}

abstract class TaskIdentifier implements Identifier {
  const factory TaskIdentifier({required final String id}) = _$TaskIdentifier;

  factory TaskIdentifier.fromJson(Map<String, dynamic> json) =
      _$TaskIdentifier.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$TaskIdentifierCopyWith<_$TaskIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}
