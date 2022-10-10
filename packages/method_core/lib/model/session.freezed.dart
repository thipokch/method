// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Session _$SessionFromJson(Map<String, dynamic> json) {
  return _Session.fromJson(json);
}

/// @nodoc
mixin _$Session {
  Exercise get template => throw _privateConstructorUsedError;
  List<Entry?> get definitions => throw _privateConstructorUsedError;
  String get hierarchyPath => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @UuidConverter()
  UuidValue? get uuid => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get readAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime? get commitedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionCopyWith<Session> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) then) =
      _$SessionCopyWithImpl<$Res>;
  $Res call(
      {Exercise template,
      List<Entry?> definitions,
      String hierarchyPath,
      String id,
      @UuidConverter() UuidValue? uuid,
      DateTime createdAt,
      DateTime readAt,
      DateTime updatedAt,
      DateTime? commitedAt,
      DateTime? deletedAt});

  $ExerciseCopyWith<$Res> get template;
}

/// @nodoc
class _$SessionCopyWithImpl<$Res> implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._value, this._then);

  final Session _value;
  // ignore: unused_field
  final $Res Function(Session) _then;

  @override
  $Res call({
    Object? template = freezed,
    Object? definitions = freezed,
    Object? hierarchyPath = freezed,
    Object? id = freezed,
    Object? uuid = freezed,
    Object? createdAt = freezed,
    Object? readAt = freezed,
    Object? updatedAt = freezed,
    Object? commitedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      template: template == freezed
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as Exercise,
      definitions: definitions == freezed
          ? _value.definitions
          : definitions // ignore: cast_nullable_to_non_nullable
              as List<Entry?>,
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
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      readAt: readAt == freezed
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      commitedAt: commitedAt == freezed
          ? _value.commitedAt
          : commitedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $ExerciseCopyWith<$Res> get template {
    return $ExerciseCopyWith<$Res>(_value.template, (value) {
      return _then(_value.copyWith(template: value));
    });
  }
}

/// @nodoc
abstract class _$$_SessionCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$$_SessionCopyWith(
          _$_Session value, $Res Function(_$_Session) then) =
      __$$_SessionCopyWithImpl<$Res>;
  @override
  $Res call(
      {Exercise template,
      List<Entry?> definitions,
      String hierarchyPath,
      String id,
      @UuidConverter() UuidValue? uuid,
      DateTime createdAt,
      DateTime readAt,
      DateTime updatedAt,
      DateTime? commitedAt,
      DateTime? deletedAt});

  @override
  $ExerciseCopyWith<$Res> get template;
}

/// @nodoc
class __$$_SessionCopyWithImpl<$Res> extends _$SessionCopyWithImpl<$Res>
    implements _$$_SessionCopyWith<$Res> {
  __$$_SessionCopyWithImpl(_$_Session _value, $Res Function(_$_Session) _then)
      : super(_value, (v) => _then(v as _$_Session));

  @override
  _$_Session get _value => super._value as _$_Session;

  @override
  $Res call({
    Object? template = freezed,
    Object? definitions = freezed,
    Object? hierarchyPath = freezed,
    Object? id = freezed,
    Object? uuid = freezed,
    Object? createdAt = freezed,
    Object? readAt = freezed,
    Object? updatedAt = freezed,
    Object? commitedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$_Session(
      template: template == freezed
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as Exercise,
      definitions: definitions == freezed
          ? _value._definitions
          : definitions // ignore: cast_nullable_to_non_nullable
              as List<Entry?>,
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
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      readAt: readAt == freezed
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      commitedAt: commitedAt == freezed
          ? _value.commitedAt
          : commitedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Session extends _Session {
  const _$_Session(
      {required this.template,
      required final List<Entry?> definitions,
      required this.hierarchyPath,
      required this.id,
      @UuidConverter() this.uuid,
      required this.createdAt,
      required this.readAt,
      required this.updatedAt,
      this.commitedAt,
      this.deletedAt})
      : _definitions = definitions,
        super._();

  factory _$_Session.fromJson(Map<String, dynamic> json) =>
      _$$_SessionFromJson(json);

  @override
  final Exercise template;
  final List<Entry?> _definitions;
  @override
  List<Entry?> get definitions {
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
  @override
  final DateTime createdAt;
  @override
  final DateTime readAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime? commitedAt;
  @override
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'Session(template: $template, definitions: $definitions, hierarchyPath: $hierarchyPath, id: $id, uuid: $uuid, createdAt: $createdAt, readAt: $readAt, updatedAt: $updatedAt, commitedAt: $commitedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Session &&
            const DeepCollectionEquality().equals(other.template, template) &&
            const DeepCollectionEquality()
                .equals(other._definitions, _definitions) &&
            const DeepCollectionEquality()
                .equals(other.hierarchyPath, hierarchyPath) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.readAt, readAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.commitedAt, commitedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(template),
      const DeepCollectionEquality().hash(_definitions),
      const DeepCollectionEquality().hash(hierarchyPath),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(readAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(commitedAt),
      const DeepCollectionEquality().hash(deletedAt));

  @JsonKey(ignore: true)
  @override
  _$$_SessionCopyWith<_$_Session> get copyWith =>
      __$$_SessionCopyWithImpl<_$_Session>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SessionToJson(
      this,
    );
  }
}

abstract class _Session extends Session {
  const factory _Session(
      {required final Exercise template,
      required final List<Entry?> definitions,
      required final String hierarchyPath,
      required final String id,
      @UuidConverter() final UuidValue? uuid,
      required final DateTime createdAt,
      required final DateTime readAt,
      required final DateTime updatedAt,
      final DateTime? commitedAt,
      final DateTime? deletedAt}) = _$_Session;
  const _Session._() : super._();

  factory _Session.fromJson(Map<String, dynamic> json) = _$_Session.fromJson;

  @override
  Exercise get template;
  @override
  List<Entry?> get definitions;
  @override
  String get hierarchyPath;
  @override
  String get id;
  @override
  @UuidConverter()
  UuidValue? get uuid;
  @override
  DateTime get createdAt;
  @override
  DateTime get readAt;
  @override
  DateTime get updatedAt;
  @override
  DateTime? get commitedAt;
  @override
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$_SessionCopyWith<_$_Session> get copyWith =>
      throw _privateConstructorUsedError;
}
