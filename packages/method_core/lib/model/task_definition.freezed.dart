// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskDefinition _$TaskDefinitionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'label':
      return TaskDefinitionLabel.fromJson(json);
    case 'note':
      return TaskDefinitionNote.fromJson(json);
    case 'part':
      return TaskDefinitionPart.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'TaskDefinition',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$TaskDefinition {
  String get icon => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get hierarchyPath => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @UuidConverter()
  UuidValue? get uuid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)
        label,
    required TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)
        note,
    required TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)
        part,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        label,
    TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        note,
    TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        part,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        label,
    TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        note,
    TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        part,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDefinitionLabel value) label,
    required TResult Function(TaskDefinitionNote value) note,
    required TResult Function(TaskDefinitionPart value) part,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskDefinitionLabel value)? label,
    TResult Function(TaskDefinitionNote value)? note,
    TResult Function(TaskDefinitionPart value)? part,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDefinitionLabel value)? label,
    TResult Function(TaskDefinitionNote value)? note,
    TResult Function(TaskDefinitionPart value)? part,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskDefinitionCopyWith<TaskDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDefinitionCopyWith<$Res> {
  factory $TaskDefinitionCopyWith(
          TaskDefinition value, $Res Function(TaskDefinition) then) =
      _$TaskDefinitionCopyWithImpl<$Res>;
  $Res call(
      {String icon,
      String name,
      String description,
      String hierarchyPath,
      String id,
      @UuidConverter() UuidValue? uuid});
}

/// @nodoc
class _$TaskDefinitionCopyWithImpl<$Res>
    implements $TaskDefinitionCopyWith<$Res> {
  _$TaskDefinitionCopyWithImpl(this._value, this._then);

  final TaskDefinition _value;
  // ignore: unused_field
  final $Res Function(TaskDefinition) _then;

  @override
  $Res call({
    Object? icon = freezed,
    Object? name = freezed,
    Object? description = freezed,
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
abstract class _$$TaskDefinitionLabelCopyWith<$Res>
    implements $TaskDefinitionCopyWith<$Res> {
  factory _$$TaskDefinitionLabelCopyWith(_$TaskDefinitionLabel value,
          $Res Function(_$TaskDefinitionLabel) then) =
      __$$TaskDefinitionLabelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String icon,
      String name,
      String description,
      String hierarchyPath,
      String id,
      @UuidConverter() UuidValue? uuid});
}

/// @nodoc
class __$$TaskDefinitionLabelCopyWithImpl<$Res>
    extends _$TaskDefinitionCopyWithImpl<$Res>
    implements _$$TaskDefinitionLabelCopyWith<$Res> {
  __$$TaskDefinitionLabelCopyWithImpl(
      _$TaskDefinitionLabel _value, $Res Function(_$TaskDefinitionLabel) _then)
      : super(_value, (v) => _then(v as _$TaskDefinitionLabel));

  @override
  _$TaskDefinitionLabel get _value => super._value as _$TaskDefinitionLabel;

  @override
  $Res call({
    Object? icon = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? hierarchyPath = freezed,
    Object? id = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_$TaskDefinitionLabel(
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
class _$TaskDefinitionLabel extends TaskDefinitionLabel {
  const _$TaskDefinitionLabel(
      {required this.icon,
      required this.name,
      required this.description,
      required this.hierarchyPath,
      required this.id,
      @UuidConverter() this.uuid,
      final String? $type})
      : $type = $type ?? 'label',
        super._();

  factory _$TaskDefinitionLabel.fromJson(Map<String, dynamic> json) =>
      _$$TaskDefinitionLabelFromJson(json);

  @override
  final String icon;
  @override
  final String name;
  @override
  final String description;
  @override
  final String hierarchyPath;
  @override
  final String id;
  @override
  @UuidConverter()
  final UuidValue? uuid;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDefinitionLabel &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
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
      const DeepCollectionEquality().hash(hierarchyPath),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(uuid));

  @JsonKey(ignore: true)
  @override
  _$$TaskDefinitionLabelCopyWith<_$TaskDefinitionLabel> get copyWith =>
      __$$TaskDefinitionLabelCopyWithImpl<_$TaskDefinitionLabel>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)
        label,
    required TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)
        note,
    required TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)
        part,
  }) {
    return label(icon, name, description, hierarchyPath, id, uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        label,
    TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        note,
    TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        part,
  }) {
    return label?.call(icon, name, description, hierarchyPath, id, uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        label,
    TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        note,
    TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        part,
    required TResult orElse(),
  }) {
    if (label != null) {
      return label(icon, name, description, hierarchyPath, id, uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDefinitionLabel value) label,
    required TResult Function(TaskDefinitionNote value) note,
    required TResult Function(TaskDefinitionPart value) part,
  }) {
    return label(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskDefinitionLabel value)? label,
    TResult Function(TaskDefinitionNote value)? note,
    TResult Function(TaskDefinitionPart value)? part,
  }) {
    return label?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDefinitionLabel value)? label,
    TResult Function(TaskDefinitionNote value)? note,
    TResult Function(TaskDefinitionPart value)? part,
    required TResult orElse(),
  }) {
    if (label != null) {
      return label(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskDefinitionLabelToJson(
      this,
    );
  }
}

abstract class TaskDefinitionLabel extends TaskDefinition {
  const factory TaskDefinitionLabel(
      {required final String icon,
      required final String name,
      required final String description,
      required final String hierarchyPath,
      required final String id,
      @UuidConverter() final UuidValue? uuid}) = _$TaskDefinitionLabel;
  const TaskDefinitionLabel._() : super._();

  factory TaskDefinitionLabel.fromJson(Map<String, dynamic> json) =
      _$TaskDefinitionLabel.fromJson;

  @override
  String get icon;
  @override
  String get name;
  @override
  String get description;
  @override
  String get hierarchyPath;
  @override
  String get id;
  @override
  @UuidConverter()
  UuidValue? get uuid;
  @override
  @JsonKey(ignore: true)
  _$$TaskDefinitionLabelCopyWith<_$TaskDefinitionLabel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskDefinitionNoteCopyWith<$Res>
    implements $TaskDefinitionCopyWith<$Res> {
  factory _$$TaskDefinitionNoteCopyWith(_$TaskDefinitionNote value,
          $Res Function(_$TaskDefinitionNote) then) =
      __$$TaskDefinitionNoteCopyWithImpl<$Res>;
  @override
  $Res call(
      {String icon,
      String name,
      String description,
      String hierarchyPath,
      String id,
      @UuidConverter() UuidValue? uuid});
}

/// @nodoc
class __$$TaskDefinitionNoteCopyWithImpl<$Res>
    extends _$TaskDefinitionCopyWithImpl<$Res>
    implements _$$TaskDefinitionNoteCopyWith<$Res> {
  __$$TaskDefinitionNoteCopyWithImpl(
      _$TaskDefinitionNote _value, $Res Function(_$TaskDefinitionNote) _then)
      : super(_value, (v) => _then(v as _$TaskDefinitionNote));

  @override
  _$TaskDefinitionNote get _value => super._value as _$TaskDefinitionNote;

  @override
  $Res call({
    Object? icon = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? hierarchyPath = freezed,
    Object? id = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_$TaskDefinitionNote(
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
class _$TaskDefinitionNote extends TaskDefinitionNote {
  const _$TaskDefinitionNote(
      {required this.icon,
      required this.name,
      required this.description,
      required this.hierarchyPath,
      required this.id,
      @UuidConverter() this.uuid,
      final String? $type})
      : $type = $type ?? 'note',
        super._();

  factory _$TaskDefinitionNote.fromJson(Map<String, dynamic> json) =>
      _$$TaskDefinitionNoteFromJson(json);

  @override
  final String icon;
  @override
  final String name;
  @override
  final String description;
  @override
  final String hierarchyPath;
  @override
  final String id;
  @override
  @UuidConverter()
  final UuidValue? uuid;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDefinitionNote &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
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
      const DeepCollectionEquality().hash(hierarchyPath),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(uuid));

  @JsonKey(ignore: true)
  @override
  _$$TaskDefinitionNoteCopyWith<_$TaskDefinitionNote> get copyWith =>
      __$$TaskDefinitionNoteCopyWithImpl<_$TaskDefinitionNote>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)
        label,
    required TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)
        note,
    required TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)
        part,
  }) {
    return note(icon, name, description, hierarchyPath, id, uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        label,
    TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        note,
    TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        part,
  }) {
    return note?.call(icon, name, description, hierarchyPath, id, uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        label,
    TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        note,
    TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        part,
    required TResult orElse(),
  }) {
    if (note != null) {
      return note(icon, name, description, hierarchyPath, id, uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDefinitionLabel value) label,
    required TResult Function(TaskDefinitionNote value) note,
    required TResult Function(TaskDefinitionPart value) part,
  }) {
    return note(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskDefinitionLabel value)? label,
    TResult Function(TaskDefinitionNote value)? note,
    TResult Function(TaskDefinitionPart value)? part,
  }) {
    return note?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDefinitionLabel value)? label,
    TResult Function(TaskDefinitionNote value)? note,
    TResult Function(TaskDefinitionPart value)? part,
    required TResult orElse(),
  }) {
    if (note != null) {
      return note(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskDefinitionNoteToJson(
      this,
    );
  }
}

abstract class TaskDefinitionNote extends TaskDefinition {
  const factory TaskDefinitionNote(
      {required final String icon,
      required final String name,
      required final String description,
      required final String hierarchyPath,
      required final String id,
      @UuidConverter() final UuidValue? uuid}) = _$TaskDefinitionNote;
  const TaskDefinitionNote._() : super._();

  factory TaskDefinitionNote.fromJson(Map<String, dynamic> json) =
      _$TaskDefinitionNote.fromJson;

  @override
  String get icon;
  @override
  String get name;
  @override
  String get description;
  @override
  String get hierarchyPath;
  @override
  String get id;
  @override
  @UuidConverter()
  UuidValue? get uuid;
  @override
  @JsonKey(ignore: true)
  _$$TaskDefinitionNoteCopyWith<_$TaskDefinitionNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskDefinitionPartCopyWith<$Res>
    implements $TaskDefinitionCopyWith<$Res> {
  factory _$$TaskDefinitionPartCopyWith(_$TaskDefinitionPart value,
          $Res Function(_$TaskDefinitionPart) then) =
      __$$TaskDefinitionPartCopyWithImpl<$Res>;
  @override
  $Res call(
      {String icon,
      String name,
      String description,
      String hierarchyPath,
      String id,
      @UuidConverter() UuidValue? uuid});
}

/// @nodoc
class __$$TaskDefinitionPartCopyWithImpl<$Res>
    extends _$TaskDefinitionCopyWithImpl<$Res>
    implements _$$TaskDefinitionPartCopyWith<$Res> {
  __$$TaskDefinitionPartCopyWithImpl(
      _$TaskDefinitionPart _value, $Res Function(_$TaskDefinitionPart) _then)
      : super(_value, (v) => _then(v as _$TaskDefinitionPart));

  @override
  _$TaskDefinitionPart get _value => super._value as _$TaskDefinitionPart;

  @override
  $Res call({
    Object? icon = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? hierarchyPath = freezed,
    Object? id = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_$TaskDefinitionPart(
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
class _$TaskDefinitionPart extends TaskDefinitionPart {
  const _$TaskDefinitionPart(
      {required this.icon,
      required this.name,
      required this.description,
      required this.hierarchyPath,
      required this.id,
      @UuidConverter() this.uuid,
      final String? $type})
      : $type = $type ?? 'part',
        super._();

  factory _$TaskDefinitionPart.fromJson(Map<String, dynamic> json) =>
      _$$TaskDefinitionPartFromJson(json);

  @override
  final String icon;
  @override
  final String name;
  @override
  final String description;
  @override
  final String hierarchyPath;
  @override
  final String id;
  @override
  @UuidConverter()
  final UuidValue? uuid;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDefinitionPart &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
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
      const DeepCollectionEquality().hash(hierarchyPath),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(uuid));

  @JsonKey(ignore: true)
  @override
  _$$TaskDefinitionPartCopyWith<_$TaskDefinitionPart> get copyWith =>
      __$$TaskDefinitionPartCopyWithImpl<_$TaskDefinitionPart>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)
        label,
    required TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)
        note,
    required TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)
        part,
  }) {
    return part(icon, name, description, hierarchyPath, id, uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        label,
    TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        note,
    TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        part,
  }) {
    return part?.call(icon, name, description, hierarchyPath, id, uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        label,
    TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        note,
    TResult Function(String icon, String name, String description,
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        part,
    required TResult orElse(),
  }) {
    if (part != null) {
      return part(icon, name, description, hierarchyPath, id, uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskDefinitionLabel value) label,
    required TResult Function(TaskDefinitionNote value) note,
    required TResult Function(TaskDefinitionPart value) part,
  }) {
    return part(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TaskDefinitionLabel value)? label,
    TResult Function(TaskDefinitionNote value)? note,
    TResult Function(TaskDefinitionPart value)? part,
  }) {
    return part?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskDefinitionLabel value)? label,
    TResult Function(TaskDefinitionNote value)? note,
    TResult Function(TaskDefinitionPart value)? part,
    required TResult orElse(),
  }) {
    if (part != null) {
      return part(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskDefinitionPartToJson(
      this,
    );
  }
}

abstract class TaskDefinitionPart extends TaskDefinition {
  const factory TaskDefinitionPart(
      {required final String icon,
      required final String name,
      required final String description,
      required final String hierarchyPath,
      required final String id,
      @UuidConverter() final UuidValue? uuid}) = _$TaskDefinitionPart;
  const TaskDefinitionPart._() : super._();

  factory TaskDefinitionPart.fromJson(Map<String, dynamic> json) =
      _$TaskDefinitionPart.fromJson;

  @override
  String get icon;
  @override
  String get name;
  @override
  String get description;
  @override
  String get hierarchyPath;
  @override
  String get id;
  @override
  @UuidConverter()
  UuidValue? get uuid;
  @override
  @JsonKey(ignore: true)
  _$$TaskDefinitionPartCopyWith<_$TaskDefinitionPart> get copyWith =>
      throw _privateConstructorUsedError;
}
