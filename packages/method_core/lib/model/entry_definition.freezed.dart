// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entry_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EntryDefinition _$EntryDefinitionFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'label':
      return EntryDefinitionLabel.fromJson(json);
    case 'note':
      return EntryDefinitionNote.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'EntryDefinition',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$EntryDefinition {
  String get hierarchyPath => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @UuidConverter()
  UuidValue? get uuid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)
        label,
    required TResult Function(String data, String hierarchyPath, String id,
            @UuidConverter() UuidValue? uuid)
        note,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        label,
    TResult Function(String data, String hierarchyPath, String id,
            @UuidConverter() UuidValue? uuid)?
        note,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        label,
    TResult Function(String data, String hierarchyPath, String id,
            @UuidConverter() UuidValue? uuid)?
        note,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EntryDefinitionLabel value) label,
    required TResult Function(EntryDefinitionNote value) note,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EntryDefinitionLabel value)? label,
    TResult Function(EntryDefinitionNote value)? note,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EntryDefinitionLabel value)? label,
    TResult Function(EntryDefinitionNote value)? note,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntryDefinitionCopyWith<EntryDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryDefinitionCopyWith<$Res> {
  factory $EntryDefinitionCopyWith(
          EntryDefinition value, $Res Function(EntryDefinition) then) =
      _$EntryDefinitionCopyWithImpl<$Res>;
  $Res call(
      {String hierarchyPath, String id, @UuidConverter() UuidValue? uuid});
}

/// @nodoc
class _$EntryDefinitionCopyWithImpl<$Res>
    implements $EntryDefinitionCopyWith<$Res> {
  _$EntryDefinitionCopyWithImpl(this._value, this._then);

  final EntryDefinition _value;
  // ignore: unused_field
  final $Res Function(EntryDefinition) _then;

  @override
  $Res call({
    Object? hierarchyPath = freezed,
    Object? id = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$EntryDefinitionLabelCopyWith<$Res>
    implements $EntryDefinitionCopyWith<$Res> {
  factory _$$EntryDefinitionLabelCopyWith(_$EntryDefinitionLabel value,
          $Res Function(_$EntryDefinitionLabel) then) =
      __$$EntryDefinitionLabelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String hierarchyPath, String id, @UuidConverter() UuidValue? uuid});
}

/// @nodoc
class __$$EntryDefinitionLabelCopyWithImpl<$Res>
    extends _$EntryDefinitionCopyWithImpl<$Res>
    implements _$$EntryDefinitionLabelCopyWith<$Res> {
  __$$EntryDefinitionLabelCopyWithImpl(_$EntryDefinitionLabel _value,
      $Res Function(_$EntryDefinitionLabel) _then)
      : super(_value, (v) => _then(v as _$EntryDefinitionLabel));

  @override
  _$EntryDefinitionLabel get _value => super._value as _$EntryDefinitionLabel;

  @override
  $Res call({
    Object? hierarchyPath = freezed,
    Object? id = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_$EntryDefinitionLabel(
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
class _$EntryDefinitionLabel extends EntryDefinitionLabel {
  const _$EntryDefinitionLabel(
      {required this.hierarchyPath,
      required this.id,
      @UuidConverter() this.uuid,
      final String? $type})
      : $type = $type ?? 'label',
        super._();

  factory _$EntryDefinitionLabel.fromJson(Map<String, dynamic> json) =>
      _$$EntryDefinitionLabelFromJson(json);

  @override
  final String hierarchyPath;
  @override
  final String id;
  @override
  @UuidConverter()
  final UuidValue? uuid;

  @JsonKey(name: 'type')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntryDefinitionLabel &&
            const DeepCollectionEquality()
                .equals(other.hierarchyPath, hierarchyPath) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.uuid, uuid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hierarchyPath),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(uuid));

  @JsonKey(ignore: true)
  @override
  _$$EntryDefinitionLabelCopyWith<_$EntryDefinitionLabel> get copyWith =>
      __$$EntryDefinitionLabelCopyWithImpl<_$EntryDefinitionLabel>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)
        label,
    required TResult Function(String data, String hierarchyPath, String id,
            @UuidConverter() UuidValue? uuid)
        note,
  }) {
    return label(hierarchyPath, id, uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        label,
    TResult Function(String data, String hierarchyPath, String id,
            @UuidConverter() UuidValue? uuid)?
        note,
  }) {
    return label?.call(hierarchyPath, id, uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        label,
    TResult Function(String data, String hierarchyPath, String id,
            @UuidConverter() UuidValue? uuid)?
        note,
    required TResult orElse(),
  }) {
    if (label != null) {
      return label(hierarchyPath, id, uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EntryDefinitionLabel value) label,
    required TResult Function(EntryDefinitionNote value) note,
  }) {
    return label(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EntryDefinitionLabel value)? label,
    TResult Function(EntryDefinitionNote value)? note,
  }) {
    return label?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EntryDefinitionLabel value)? label,
    TResult Function(EntryDefinitionNote value)? note,
    required TResult orElse(),
  }) {
    if (label != null) {
      return label(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EntryDefinitionLabelToJson(
      this,
    );
  }
}

abstract class EntryDefinitionLabel extends EntryDefinition {
  const factory EntryDefinitionLabel(
      {required final String hierarchyPath,
      required final String id,
      @UuidConverter() final UuidValue? uuid}) = _$EntryDefinitionLabel;
  const EntryDefinitionLabel._() : super._();

  factory EntryDefinitionLabel.fromJson(Map<String, dynamic> json) =
      _$EntryDefinitionLabel.fromJson;

  @override
  String get hierarchyPath;
  @override
  String get id;
  @override
  @UuidConverter()
  UuidValue? get uuid;
  @override
  @JsonKey(ignore: true)
  _$$EntryDefinitionLabelCopyWith<_$EntryDefinitionLabel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EntryDefinitionNoteCopyWith<$Res>
    implements $EntryDefinitionCopyWith<$Res> {
  factory _$$EntryDefinitionNoteCopyWith(_$EntryDefinitionNote value,
          $Res Function(_$EntryDefinitionNote) then) =
      __$$EntryDefinitionNoteCopyWithImpl<$Res>;
  @override
  $Res call(
      {String data,
      String hierarchyPath,
      String id,
      @UuidConverter() UuidValue? uuid});
}

/// @nodoc
class __$$EntryDefinitionNoteCopyWithImpl<$Res>
    extends _$EntryDefinitionCopyWithImpl<$Res>
    implements _$$EntryDefinitionNoteCopyWith<$Res> {
  __$$EntryDefinitionNoteCopyWithImpl(
      _$EntryDefinitionNote _value, $Res Function(_$EntryDefinitionNote) _then)
      : super(_value, (v) => _then(v as _$EntryDefinitionNote));

  @override
  _$EntryDefinitionNote get _value => super._value as _$EntryDefinitionNote;

  @override
  $Res call({
    Object? data = freezed,
    Object? hierarchyPath = freezed,
    Object? id = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_$EntryDefinitionNote(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
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
class _$EntryDefinitionNote extends EntryDefinitionNote {
  const _$EntryDefinitionNote(
      {required this.data,
      required this.hierarchyPath,
      required this.id,
      @UuidConverter() this.uuid,
      final String? $type})
      : $type = $type ?? 'note',
        super._();

  factory _$EntryDefinitionNote.fromJson(Map<String, dynamic> json) =>
      _$$EntryDefinitionNoteFromJson(json);

  @override
  final String data;
  @override
  final String hierarchyPath;
  @override
  final String id;
  @override
  @UuidConverter()
  final UuidValue? uuid;

  @JsonKey(name: 'type')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntryDefinitionNote &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality()
                .equals(other.hierarchyPath, hierarchyPath) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.uuid, uuid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(hierarchyPath),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(uuid));

  @JsonKey(ignore: true)
  @override
  _$$EntryDefinitionNoteCopyWith<_$EntryDefinitionNote> get copyWith =>
      __$$EntryDefinitionNoteCopyWithImpl<_$EntryDefinitionNote>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)
        label,
    required TResult Function(String data, String hierarchyPath, String id,
            @UuidConverter() UuidValue? uuid)
        note,
  }) {
    return note(data, hierarchyPath, id, uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        label,
    TResult Function(String data, String hierarchyPath, String id,
            @UuidConverter() UuidValue? uuid)?
        note,
  }) {
    return note?.call(data, hierarchyPath, id, uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String hierarchyPath, String id, @UuidConverter() UuidValue? uuid)?
        label,
    TResult Function(String data, String hierarchyPath, String id,
            @UuidConverter() UuidValue? uuid)?
        note,
    required TResult orElse(),
  }) {
    if (note != null) {
      return note(data, hierarchyPath, id, uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EntryDefinitionLabel value) label,
    required TResult Function(EntryDefinitionNote value) note,
  }) {
    return note(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EntryDefinitionLabel value)? label,
    TResult Function(EntryDefinitionNote value)? note,
  }) {
    return note?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EntryDefinitionLabel value)? label,
    TResult Function(EntryDefinitionNote value)? note,
    required TResult orElse(),
  }) {
    if (note != null) {
      return note(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EntryDefinitionNoteToJson(
      this,
    );
  }
}

abstract class EntryDefinitionNote extends EntryDefinition {
  const factory EntryDefinitionNote(
      {required final String data,
      required final String hierarchyPath,
      required final String id,
      @UuidConverter() final UuidValue? uuid}) = _$EntryDefinitionNote;
  const EntryDefinitionNote._() : super._();

  factory EntryDefinitionNote.fromJson(Map<String, dynamic> json) =
      _$EntryDefinitionNote.fromJson;

  String get data;
  @override
  String get hierarchyPath;
  @override
  String get id;
  @override
  @UuidConverter()
  UuidValue? get uuid;
  @override
  @JsonKey(ignore: true)
  _$$EntryDefinitionNoteCopyWith<_$EntryDefinitionNote> get copyWith =>
      throw _privateConstructorUsedError;
}
