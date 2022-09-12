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
      return _Linear.fromJson(json);
    case 'diverge':
      return _Diverge.fromJson(json);
    case 'converge':
      return _Converge.fromJson(json);

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
  String get uuid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            String uuid)
        linear,
    required TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            String uuid)
        diverge,
    required TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            String uuid)
        converge,
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
            String uuid)?
        linear,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            String uuid)?
        diverge,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            String uuid)?
        converge,
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
            String uuid)?
        linear,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            String uuid)?
        diverge,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            String uuid)?
        converge,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Linear value) linear,
    required TResult Function(_Diverge value) diverge,
    required TResult Function(_Converge value) converge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Linear value)? linear,
    TResult Function(_Diverge value)? diverge,
    TResult Function(_Converge value)? converge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Linear value)? linear,
    TResult Function(_Diverge value)? diverge,
    TResult Function(_Converge value)? converge,
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
      String uuid});
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
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LinearCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$_LinearCopyWith(_$_Linear value, $Res Function(_$_Linear) then) =
      __$$_LinearCopyWithImpl<$Res>;
  @override
  $Res call(
      {String icon,
      String name,
      String description,
      List<TaskDefinition> definitions,
      String hierarchyPath,
      String id,
      String uuid});
}

/// @nodoc
class __$$_LinearCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$$_LinearCopyWith<$Res> {
  __$$_LinearCopyWithImpl(_$_Linear _value, $Res Function(_$_Linear) _then)
      : super(_value, (v) => _then(v as _$_Linear));

  @override
  _$_Linear get _value => super._value as _$_Linear;

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
    return _then(_$_Linear(
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
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Linear extends _Linear {
  const _$_Linear(
      {required this.icon,
      required this.name,
      required this.description,
      required final List<TaskDefinition> definitions,
      required this.hierarchyPath,
      required this.id,
      required this.uuid,
      final String? $type})
      : _definitions = definitions,
        $type = $type ?? 'linear',
        super._();

  factory _$_Linear.fromJson(Map<String, dynamic> json) =>
      _$$_LinearFromJson(json);

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
  final String uuid;

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
            other is _$_Linear &&
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
  _$$_LinearCopyWith<_$_Linear> get copyWith =>
      __$$_LinearCopyWithImpl<_$_Linear>(this, _$identity);

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
            String uuid)
        linear,
    required TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            String uuid)
        diverge,
    required TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            String uuid)
        converge,
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
            String uuid)?
        linear,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            String uuid)?
        diverge,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            String uuid)?
        converge,
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
            String uuid)?
        linear,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            String uuid)?
        diverge,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            String uuid)?
        converge,
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
    required TResult Function(_Linear value) linear,
    required TResult Function(_Diverge value) diverge,
    required TResult Function(_Converge value) converge,
  }) {
    return linear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Linear value)? linear,
    TResult Function(_Diverge value)? diverge,
    TResult Function(_Converge value)? converge,
  }) {
    return linear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Linear value)? linear,
    TResult Function(_Diverge value)? diverge,
    TResult Function(_Converge value)? converge,
    required TResult orElse(),
  }) {
    if (linear != null) {
      return linear(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinearToJson(
      this,
    );
  }
}

abstract class _Linear extends Task {
  const factory _Linear(
      {required final String icon,
      required final String name,
      required final String description,
      required final List<TaskDefinition> definitions,
      required final String hierarchyPath,
      required final String id,
      required final String uuid}) = _$_Linear;
  const _Linear._() : super._();

  factory _Linear.fromJson(Map<String, dynamic> json) = _$_Linear.fromJson;

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
  String get uuid;
  @override
  @JsonKey(ignore: true)
  _$$_LinearCopyWith<_$_Linear> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DivergeCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$_DivergeCopyWith(
          _$_Diverge value, $Res Function(_$_Diverge) then) =
      __$$_DivergeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String icon,
      String name,
      String description,
      List<TaskDefinition> definitions,
      String hierarchyPath,
      String id,
      String uuid});
}

/// @nodoc
class __$$_DivergeCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$$_DivergeCopyWith<$Res> {
  __$$_DivergeCopyWithImpl(_$_Diverge _value, $Res Function(_$_Diverge) _then)
      : super(_value, (v) => _then(v as _$_Diverge));

  @override
  _$_Diverge get _value => super._value as _$_Diverge;

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
    return _then(_$_Diverge(
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
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Diverge extends _Diverge {
  const _$_Diverge(
      {required this.icon,
      required this.name,
      required this.description,
      required final List<TaskDefinition> definitions,
      required this.hierarchyPath,
      required this.id,
      required this.uuid,
      final String? $type})
      : _definitions = definitions,
        $type = $type ?? 'diverge',
        super._();

  factory _$_Diverge.fromJson(Map<String, dynamic> json) =>
      _$$_DivergeFromJson(json);

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
  final String uuid;

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
            other is _$_Diverge &&
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
  _$$_DivergeCopyWith<_$_Diverge> get copyWith =>
      __$$_DivergeCopyWithImpl<_$_Diverge>(this, _$identity);

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
            String uuid)
        linear,
    required TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            String uuid)
        diverge,
    required TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            String uuid)
        converge,
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
            String uuid)?
        linear,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            String uuid)?
        diverge,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            String uuid)?
        converge,
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
            String uuid)?
        linear,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            String uuid)?
        diverge,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            String uuid)?
        converge,
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
    required TResult Function(_Linear value) linear,
    required TResult Function(_Diverge value) diverge,
    required TResult Function(_Converge value) converge,
  }) {
    return diverge(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Linear value)? linear,
    TResult Function(_Diverge value)? diverge,
    TResult Function(_Converge value)? converge,
  }) {
    return diverge?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Linear value)? linear,
    TResult Function(_Diverge value)? diverge,
    TResult Function(_Converge value)? converge,
    required TResult orElse(),
  }) {
    if (diverge != null) {
      return diverge(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_DivergeToJson(
      this,
    );
  }
}

abstract class _Diverge extends Task {
  const factory _Diverge(
      {required final String icon,
      required final String name,
      required final String description,
      required final List<TaskDefinition> definitions,
      required final String hierarchyPath,
      required final String id,
      required final String uuid}) = _$_Diverge;
  const _Diverge._() : super._();

  factory _Diverge.fromJson(Map<String, dynamic> json) = _$_Diverge.fromJson;

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
  String get uuid;
  @override
  @JsonKey(ignore: true)
  _$$_DivergeCopyWith<_$_Diverge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ConvergeCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$_ConvergeCopyWith(
          _$_Converge value, $Res Function(_$_Converge) then) =
      __$$_ConvergeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String icon,
      String name,
      String description,
      List<TaskDefinition> definitions,
      String hierarchyPath,
      String id,
      String uuid});
}

/// @nodoc
class __$$_ConvergeCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$$_ConvergeCopyWith<$Res> {
  __$$_ConvergeCopyWithImpl(
      _$_Converge _value, $Res Function(_$_Converge) _then)
      : super(_value, (v) => _then(v as _$_Converge));

  @override
  _$_Converge get _value => super._value as _$_Converge;

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
    return _then(_$_Converge(
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
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Converge extends _Converge {
  const _$_Converge(
      {required this.icon,
      required this.name,
      required this.description,
      required final List<TaskDefinition> definitions,
      required this.hierarchyPath,
      required this.id,
      required this.uuid,
      final String? $type})
      : _definitions = definitions,
        $type = $type ?? 'converge',
        super._();

  factory _$_Converge.fromJson(Map<String, dynamic> json) =>
      _$$_ConvergeFromJson(json);

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
  final String uuid;

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
            other is _$_Converge &&
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
  _$$_ConvergeCopyWith<_$_Converge> get copyWith =>
      __$$_ConvergeCopyWithImpl<_$_Converge>(this, _$identity);

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
            String uuid)
        linear,
    required TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            String uuid)
        diverge,
    required TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            String uuid)
        converge,
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
            String uuid)?
        linear,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            String uuid)?
        diverge,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            String uuid)?
        converge,
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
            String uuid)?
        linear,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            String uuid)?
        diverge,
    TResult Function(
            String icon,
            String name,
            String description,
            List<TaskDefinition> definitions,
            String hierarchyPath,
            String id,
            String uuid)?
        converge,
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
    required TResult Function(_Linear value) linear,
    required TResult Function(_Diverge value) diverge,
    required TResult Function(_Converge value) converge,
  }) {
    return converge(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Linear value)? linear,
    TResult Function(_Diverge value)? diverge,
    TResult Function(_Converge value)? converge,
  }) {
    return converge?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Linear value)? linear,
    TResult Function(_Diverge value)? diverge,
    TResult Function(_Converge value)? converge,
    required TResult orElse(),
  }) {
    if (converge != null) {
      return converge(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConvergeToJson(
      this,
    );
  }
}

abstract class _Converge extends Task {
  const factory _Converge(
      {required final String icon,
      required final String name,
      required final String description,
      required final List<TaskDefinition> definitions,
      required final String hierarchyPath,
      required final String id,
      required final String uuid}) = _$_Converge;
  const _Converge._() : super._();

  factory _Converge.fromJson(Map<String, dynamic> json) = _$_Converge.fromJson;

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
  String get uuid;
  @override
  @JsonKey(ignore: true)
  _$$_ConvergeCopyWith<_$_Converge> get copyWith =>
      throw _privateConstructorUsedError;
}
