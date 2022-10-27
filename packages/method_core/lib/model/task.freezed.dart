// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Task _$TaskFromJson(Map<String, dynamic> json) {
  switch (json['collectionSlug']) {
    case 'linear':
      return TaskLinear.fromJson(json);
    case 'diverge':
      return TaskDiverge.fromJson(json);
    case 'converge':
      return TaskConverge.fromJson(json);
    case 'feedback':
      return TaskFeedback.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'collectionSlug', 'Task',
          'Invalid union type "${json['collectionSlug']}"!');
  }
}

/// @nodoc
mixin _$Task {
  String get icon => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<TaskDefinition> get definitions => throw _privateConstructorUsedError;
  String get hierarchyPath => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @UuidConverter()
  UuidValue? get uuid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)
        linear,
    required TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)
        diverge,
    required TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)
        converge,
    required TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)
        feedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        linear,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        diverge,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        converge,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        feedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        linear,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        diverge,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        converge,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        feedback,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskLinear value) linear,
    required TResult Function(TaskDiverge value) diverge,
    required TResult Function(TaskConverge value) converge,
    required TResult Function(TaskFeedback value) feedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskLinear value)? linear,
    TResult Function(TaskDiverge value)? diverge,
    TResult Function(TaskConverge value)? converge,
    TResult Function(TaskFeedback value)? feedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskLinear value)? linear,
    TResult Function(TaskDiverge value)? diverge,
    TResult Function(TaskConverge value)? converge,
    TResult Function(TaskFeedback value)? feedback,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res>;
  $Res call(
      {String icon,
      String name,
      String description,
      List<TaskDefinition> definitions,
      String hierarchyPath,
      String id,
      @UuidConverter() UuidValue? uuid});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res> implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  final Task _value;
  // ignore: unused_field
  final $Res Function(Task) _then;

  @override
  $Res call({
    Object? icon = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? definitions = freezed,
    Object? hierarchyPath = freezed,
    Object? id = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_value.copyWith(
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      definitions: definitions == freezed
          ? _value.definitions
          : definitions // ignore: cast_nullable_to_non_nullable
              as List<TaskDefinition>,
      hierarchyPath: hierarchyPath == freezed
          ? _value.hierarchyPath
          : hierarchyPath // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as UuidValue?,
    ));
  }
}

/// @nodoc
abstract class _$$TaskLinearCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskLinearCopyWith(
          _$TaskLinear value, $Res Function(_$TaskLinear) then) =
      __$$TaskLinearCopyWithImpl<$Res>;
  @override
  $Res call(
      {String icon,
      String name,
      String description,
      List<TaskDefinition> definitions,
      String hierarchyPath,
      String id,
      @UuidConverter() UuidValue? uuid});
}

/// @nodoc
class __$$TaskLinearCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$$TaskLinearCopyWith<$Res> {
  __$$TaskLinearCopyWithImpl(
      _$TaskLinear _value, $Res Function(_$TaskLinear) _then)
      : super(_value, (v) => _then(v as _$TaskLinear));

  @override
  _$TaskLinear get _value => super._value as _$TaskLinear;

  @override
  $Res call({
    Object? icon = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? definitions = freezed,
    Object? hierarchyPath = freezed,
    Object? id = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_$TaskLinear(
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      definitions: definitions == freezed
          ? _value._definitions
          : definitions // ignore: cast_nullable_to_non_nullable
              as List<TaskDefinition>,
      hierarchyPath: hierarchyPath == freezed
          ? _value.hierarchyPath
          : hierarchyPath // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as UuidValue?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskLinear extends TaskLinear {
  const _$TaskLinear(
      {required this.icon,
      required this.name,
      required this.description,
      required final List<TaskDefinition> definitions,
      required this.hierarchyPath,
      required this.id,
      @UuidConverter() this.uuid,
      final String? $type})
      : _definitions = definitions,
        $type = $type ?? 'linear',
        super._();

  factory _$TaskLinear.fromJson(Map<String, dynamic> json) =>
      _$$TaskLinearFromJson(json);

  @override
  final String icon;
  @override
  final String name;
  @override
  final String description;
  final List<TaskDefinition> _definitions;
  @override
  List<TaskDefinition> get definitions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_definitions);
  }

  @override
  final String hierarchyPath;
  @override
  final String id;
  @override
  @UuidConverter()
  final UuidValue? uuid;

  @JsonKey(name: 'collectionSlug')
  final String $type;

  @override
  String toString() {
    return 'Task.linear(icon: $icon, name: $name, description: $description, definitions: $definitions, hierarchyPath: $hierarchyPath, id: $id, uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskLinear &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other._definitions, _definitions) &&
            const DeepCollectionEquality()
                .equals(other.hierarchyPath, hierarchyPath) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.uuid, uuid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(_definitions),
      const DeepCollectionEquality().hash(hierarchyPath),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(uuid));

  @JsonKey(ignore: true)
  @override
  _$$TaskLinearCopyWith<_$TaskLinear> get copyWith =>
      __$$TaskLinearCopyWithImpl<_$TaskLinear>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)
        linear,
    required TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)
        diverge,
    required TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)
        converge,
    required TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)
        feedback,
  }) {
    return linear(
        icon, name, description, definitions, hierarchyPath, id, uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        linear,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        diverge,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        converge,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        feedback,
  }) {
    return linear?.call(
        icon, name, description, definitions, hierarchyPath, id, uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        linear,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        diverge,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        converge,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        feedback,
    required TResult orElse(),
  }) {
    if (linear != null) {
      return linear(
          icon, name, description, definitions, hierarchyPath, id, uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskLinear value) linear,
    required TResult Function(TaskDiverge value) diverge,
    required TResult Function(TaskConverge value) converge,
    required TResult Function(TaskFeedback value) feedback,
  }) {
    return linear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskLinear value)? linear,
    TResult Function(TaskDiverge value)? diverge,
    TResult Function(TaskConverge value)? converge,
    TResult Function(TaskFeedback value)? feedback,
  }) {
    return linear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskLinear value)? linear,
    TResult Function(TaskDiverge value)? diverge,
    TResult Function(TaskConverge value)? converge,
    TResult Function(TaskFeedback value)? feedback,
    required TResult orElse(),
  }) {
    if (linear != null) {
      return linear(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskLinearToJson(
      this,
    );
  }
}

abstract class TaskLinear extends Task {
  const factory TaskLinear(
      {required final String icon,
      required final String name,
      required final String description,
      required final List<TaskDefinition> definitions,
      required final String hierarchyPath,
      required final String id,
      @UuidConverter() final UuidValue? uuid}) = _$TaskLinear;
  const TaskLinear._() : super._();

  factory TaskLinear.fromJson(Map<String, dynamic> json) =
      _$TaskLinear.fromJson;

  @override
  String get icon;
  @override
  String get name;
  @override
  String get description;
  @override
  List<TaskDefinition> get definitions;
  @override
  String get hierarchyPath;
  @override
  String get id;
  @override
  @UuidConverter()
  UuidValue? get uuid;
  @override
  @JsonKey(ignore: true)
  _$$TaskLinearCopyWith<_$TaskLinear> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskDivergeCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskDivergeCopyWith(
          _$TaskDiverge value, $Res Function(_$TaskDiverge) then) =
      __$$TaskDivergeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String icon,
      String name,
      String description,
      List<TaskDefinition> definitions,
      String hierarchyPath,
      String id,
      @UuidConverter() UuidValue? uuid});
}

/// @nodoc
class __$$TaskDivergeCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$$TaskDivergeCopyWith<$Res> {
  __$$TaskDivergeCopyWithImpl(
      _$TaskDiverge _value, $Res Function(_$TaskDiverge) _then)
      : super(_value, (v) => _then(v as _$TaskDiverge));

  @override
  _$TaskDiverge get _value => super._value as _$TaskDiverge;

  @override
  $Res call({
    Object? icon = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? definitions = freezed,
    Object? hierarchyPath = freezed,
    Object? id = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_$TaskDiverge(
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      definitions: definitions == freezed
          ? _value._definitions
          : definitions // ignore: cast_nullable_to_non_nullable
              as List<TaskDefinition>,
      hierarchyPath: hierarchyPath == freezed
          ? _value.hierarchyPath
          : hierarchyPath // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as UuidValue?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskDiverge extends TaskDiverge {
  const _$TaskDiverge(
      {required this.icon,
      required this.name,
      required this.description,
      required final List<TaskDefinition> definitions,
      required this.hierarchyPath,
      required this.id,
      @UuidConverter() this.uuid,
      final String? $type})
      : _definitions = definitions,
        $type = $type ?? 'diverge',
        super._();

  factory _$TaskDiverge.fromJson(Map<String, dynamic> json) =>
      _$$TaskDivergeFromJson(json);

  @override
  final String icon;
  @override
  final String name;
  @override
  final String description;
  final List<TaskDefinition> _definitions;
  @override
  List<TaskDefinition> get definitions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_definitions);
  }

  @override
  final String hierarchyPath;
  @override
  final String id;
  @override
  @UuidConverter()
  final UuidValue? uuid;

  @JsonKey(name: 'collectionSlug')
  final String $type;

  @override
  String toString() {
    return 'Task.diverge(icon: $icon, name: $name, description: $description, definitions: $definitions, hierarchyPath: $hierarchyPath, id: $id, uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDiverge &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other._definitions, _definitions) &&
            const DeepCollectionEquality()
                .equals(other.hierarchyPath, hierarchyPath) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.uuid, uuid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(_definitions),
      const DeepCollectionEquality().hash(hierarchyPath),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(uuid));

  @JsonKey(ignore: true)
  @override
  _$$TaskDivergeCopyWith<_$TaskDiverge> get copyWith =>
      __$$TaskDivergeCopyWithImpl<_$TaskDiverge>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)
        linear,
    required TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)
        diverge,
    required TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)
        converge,
    required TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)
        feedback,
  }) {
    return diverge(
        icon, name, description, definitions, hierarchyPath, id, uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        linear,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        diverge,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        converge,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        feedback,
  }) {
    return diverge?.call(
        icon, name, description, definitions, hierarchyPath, id, uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        linear,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        diverge,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        converge,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        feedback,
    required TResult orElse(),
  }) {
    if (diverge != null) {
      return diverge(
          icon, name, description, definitions, hierarchyPath, id, uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskLinear value) linear,
    required TResult Function(TaskDiverge value) diverge,
    required TResult Function(TaskConverge value) converge,
    required TResult Function(TaskFeedback value) feedback,
  }) {
    return diverge(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskLinear value)? linear,
    TResult Function(TaskDiverge value)? diverge,
    TResult Function(TaskConverge value)? converge,
    TResult Function(TaskFeedback value)? feedback,
  }) {
    return diverge?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskLinear value)? linear,
    TResult Function(TaskDiverge value)? diverge,
    TResult Function(TaskConverge value)? converge,
    TResult Function(TaskFeedback value)? feedback,
    required TResult orElse(),
  }) {
    if (diverge != null) {
      return diverge(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskDivergeToJson(
      this,
    );
  }
}

abstract class TaskDiverge extends Task {
  const factory TaskDiverge(
      {required final String icon,
      required final String name,
      required final String description,
      required final List<TaskDefinition> definitions,
      required final String hierarchyPath,
      required final String id,
      @UuidConverter() final UuidValue? uuid}) = _$TaskDiverge;
  const TaskDiverge._() : super._();

  factory TaskDiverge.fromJson(Map<String, dynamic> json) =
      _$TaskDiverge.fromJson;

  @override
  String get icon;
  @override
  String get name;
  @override
  String get description;
  @override
  List<TaskDefinition> get definitions;
  @override
  String get hierarchyPath;
  @override
  String get id;
  @override
  @UuidConverter()
  UuidValue? get uuid;
  @override
  @JsonKey(ignore: true)
  _$$TaskDivergeCopyWith<_$TaskDiverge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskConvergeCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskConvergeCopyWith(
          _$TaskConverge value, $Res Function(_$TaskConverge) then) =
      __$$TaskConvergeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String icon,
      String name,
      String description,
      List<TaskDefinition> definitions,
      String hierarchyPath,
      String id,
      @UuidConverter() UuidValue? uuid});
}

/// @nodoc
class __$$TaskConvergeCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$$TaskConvergeCopyWith<$Res> {
  __$$TaskConvergeCopyWithImpl(
      _$TaskConverge _value, $Res Function(_$TaskConverge) _then)
      : super(_value, (v) => _then(v as _$TaskConverge));

  @override
  _$TaskConverge get _value => super._value as _$TaskConverge;

  @override
  $Res call({
    Object? icon = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? definitions = freezed,
    Object? hierarchyPath = freezed,
    Object? id = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_$TaskConverge(
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      definitions: definitions == freezed
          ? _value._definitions
          : definitions // ignore: cast_nullable_to_non_nullable
              as List<TaskDefinition>,
      hierarchyPath: hierarchyPath == freezed
          ? _value.hierarchyPath
          : hierarchyPath // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as UuidValue?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskConverge extends TaskConverge {
  const _$TaskConverge(
      {required this.icon,
      required this.name,
      required this.description,
      required final List<TaskDefinition> definitions,
      required this.hierarchyPath,
      required this.id,
      @UuidConverter() this.uuid,
      final String? $type})
      : _definitions = definitions,
        $type = $type ?? 'converge',
        super._();

  factory _$TaskConverge.fromJson(Map<String, dynamic> json) =>
      _$$TaskConvergeFromJson(json);

  @override
  final String icon;
  @override
  final String name;
  @override
  final String description;
  final List<TaskDefinition> _definitions;
  @override
  List<TaskDefinition> get definitions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_definitions);
  }

  @override
  final String hierarchyPath;
  @override
  final String id;
  @override
  @UuidConverter()
  final UuidValue? uuid;

  @JsonKey(name: 'collectionSlug')
  final String $type;

  @override
  String toString() {
    return 'Task.converge(icon: $icon, name: $name, description: $description, definitions: $definitions, hierarchyPath: $hierarchyPath, id: $id, uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskConverge &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other._definitions, _definitions) &&
            const DeepCollectionEquality()
                .equals(other.hierarchyPath, hierarchyPath) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.uuid, uuid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(_definitions),
      const DeepCollectionEquality().hash(hierarchyPath),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(uuid));

  @JsonKey(ignore: true)
  @override
  _$$TaskConvergeCopyWith<_$TaskConverge> get copyWith =>
      __$$TaskConvergeCopyWithImpl<_$TaskConverge>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)
        linear,
    required TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)
        diverge,
    required TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)
        converge,
    required TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)
        feedback,
  }) {
    return converge(
        icon, name, description, definitions, hierarchyPath, id, uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        linear,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        diverge,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        converge,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        feedback,
  }) {
    return converge?.call(
        icon, name, description, definitions, hierarchyPath, id, uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        linear,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        diverge,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        converge,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        feedback,
    required TResult orElse(),
  }) {
    if (converge != null) {
      return converge(
          icon, name, description, definitions, hierarchyPath, id, uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskLinear value) linear,
    required TResult Function(TaskDiverge value) diverge,
    required TResult Function(TaskConverge value) converge,
    required TResult Function(TaskFeedback value) feedback,
  }) {
    return converge(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskLinear value)? linear,
    TResult Function(TaskDiverge value)? diverge,
    TResult Function(TaskConverge value)? converge,
    TResult Function(TaskFeedback value)? feedback,
  }) {
    return converge?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskLinear value)? linear,
    TResult Function(TaskDiverge value)? diverge,
    TResult Function(TaskConverge value)? converge,
    TResult Function(TaskFeedback value)? feedback,
    required TResult orElse(),
  }) {
    if (converge != null) {
      return converge(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskConvergeToJson(
      this,
    );
  }
}

abstract class TaskConverge extends Task {
  const factory TaskConverge(
      {required final String icon,
      required final String name,
      required final String description,
      required final List<TaskDefinition> definitions,
      required final String hierarchyPath,
      required final String id,
      @UuidConverter() final UuidValue? uuid}) = _$TaskConverge;
  const TaskConverge._() : super._();

  factory TaskConverge.fromJson(Map<String, dynamic> json) =
      _$TaskConverge.fromJson;

  @override
  String get icon;
  @override
  String get name;
  @override
  String get description;
  @override
  List<TaskDefinition> get definitions;
  @override
  String get hierarchyPath;
  @override
  String get id;
  @override
  @UuidConverter()
  UuidValue? get uuid;
  @override
  @JsonKey(ignore: true)
  _$$TaskConvergeCopyWith<_$TaskConverge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskFeedbackCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskFeedbackCopyWith(
          _$TaskFeedback value, $Res Function(_$TaskFeedback) then) =
      __$$TaskFeedbackCopyWithImpl<$Res>;
  @override
  $Res call(
      {String icon,
      String name,
      String description,
      List<TaskDefinition> definitions,
      String hierarchyPath,
      String id,
      @UuidConverter() UuidValue? uuid});
}

/// @nodoc
class __$$TaskFeedbackCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$$TaskFeedbackCopyWith<$Res> {
  __$$TaskFeedbackCopyWithImpl(
      _$TaskFeedback _value, $Res Function(_$TaskFeedback) _then)
      : super(_value, (v) => _then(v as _$TaskFeedback));

  @override
  _$TaskFeedback get _value => super._value as _$TaskFeedback;

  @override
  $Res call({
    Object? icon = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? definitions = freezed,
    Object? hierarchyPath = freezed,
    Object? id = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_$TaskFeedback(
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      definitions: definitions == freezed
          ? _value._definitions
          : definitions // ignore: cast_nullable_to_non_nullable
              as List<TaskDefinition>,
      hierarchyPath: hierarchyPath == freezed
          ? _value.hierarchyPath
          : hierarchyPath // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as UuidValue?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskFeedback extends TaskFeedback {
  const _$TaskFeedback(
      {required this.icon,
      required this.name,
      required this.description,
      required final List<TaskDefinition> definitions,
      required this.hierarchyPath,
      required this.id,
      @UuidConverter() this.uuid,
      final String? $type})
      : _definitions = definitions,
        $type = $type ?? 'feedback',
        super._();

  factory _$TaskFeedback.fromJson(Map<String, dynamic> json) =>
      _$$TaskFeedbackFromJson(json);

  @override
  final String icon;
  @override
  final String name;
  @override
  final String description;
  final List<TaskDefinition> _definitions;
  @override
  List<TaskDefinition> get definitions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_definitions);
  }

  @override
  final String hierarchyPath;
  @override
  final String id;
  @override
  @UuidConverter()
  final UuidValue? uuid;

  @JsonKey(name: 'collectionSlug')
  final String $type;

  @override
  String toString() {
    return 'Task.feedback(icon: $icon, name: $name, description: $description, definitions: $definitions, hierarchyPath: $hierarchyPath, id: $id, uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskFeedback &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other._definitions, _definitions) &&
            const DeepCollectionEquality()
                .equals(other.hierarchyPath, hierarchyPath) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.uuid, uuid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(_definitions),
      const DeepCollectionEquality().hash(hierarchyPath),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(uuid));

  @JsonKey(ignore: true)
  @override
  _$$TaskFeedbackCopyWith<_$TaskFeedback> get copyWith =>
      __$$TaskFeedbackCopyWithImpl<_$TaskFeedback>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)
        linear,
    required TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)
        diverge,
    required TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)
        converge,
    required TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)
        feedback,
  }) {
    return feedback(
        icon, name, description, definitions, hierarchyPath, id, uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        linear,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        diverge,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        converge,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        feedback,
  }) {
    return feedback?.call(
        icon, name, description, definitions, hierarchyPath, id, uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        linear,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        diverge,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        converge,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            @UuidConverter() UuidValue? uuid)?
        feedback,
    required TResult orElse(),
  }) {
    if (feedback != null) {
      return feedback(
          icon, name, description, definitions, hierarchyPath, id, uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskLinear value) linear,
    required TResult Function(TaskDiverge value) diverge,
    required TResult Function(TaskConverge value) converge,
    required TResult Function(TaskFeedback value) feedback,
  }) {
    return feedback(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskLinear value)? linear,
    TResult Function(TaskDiverge value)? diverge,
    TResult Function(TaskConverge value)? converge,
    TResult Function(TaskFeedback value)? feedback,
  }) {
    return feedback?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskLinear value)? linear,
    TResult Function(TaskDiverge value)? diverge,
    TResult Function(TaskConverge value)? converge,
    TResult Function(TaskFeedback value)? feedback,
    required TResult orElse(),
  }) {
    if (feedback != null) {
      return feedback(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskFeedbackToJson(
      this,
    );
  }
}

abstract class TaskFeedback extends Task {
  const factory TaskFeedback(
      {required final String icon,
      required final String name,
      required final String description,
      required final List<TaskDefinition> definitions,
      required final String hierarchyPath,
      required final String id,
      @UuidConverter() final UuidValue? uuid}) = _$TaskFeedback;
  const TaskFeedback._() : super._();

  factory TaskFeedback.fromJson(Map<String, dynamic> json) =
      _$TaskFeedback.fromJson;

  @override
  String get icon;
  @override
  String get name;
  @override
  String get description;
  @override
  List<TaskDefinition> get definitions;
  @override
  String get hierarchyPath;
  @override
  String get id;
  @override
  @UuidConverter()
  UuidValue? get uuid;
  @override
  @JsonKey(ignore: true)
  _$$TaskFeedbackCopyWith<_$TaskFeedback> get copyWith =>
      throw _privateConstructorUsedError;
}
