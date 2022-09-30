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
  switch (json['runtimeType']) {
    case 'label':
      return _Label.fromJson(json);
    case 'note':
      return _Note.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'EntryDefinition',
          'Invalid union type "${json['runtimeType']}"!');
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
    required TResult Function(_Label value) label,
    required TResult Function(_Note value) note,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Label value)? label,
    TResult Function(_Note value)? note,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Label value)? label,
    TResult Function(_Note value)? note,
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
abstract class _$$_LabelCopyWith<$Res>
    implements $EntryDefinitionCopyWith<$Res> {
  factory _$$_LabelCopyWith(_$_Label value, $Res Function(_$_Label) then) =
      __$$_LabelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String hierarchyPath, String id, @UuidConverter() UuidValue? uuid});
}

/// @nodoc
class __$$_LabelCopyWithImpl<$Res> extends _$EntryDefinitionCopyWithImpl<$Res>
    implements _$$_LabelCopyWith<$Res> {
  __$$_LabelCopyWithImpl(_$_Label _value, $Res Function(_$_Label) _then)
      : super(_value, (v) => _then(v as _$_Label));

  @override
  _$_Label get _value => super._value as _$_Label;

  @override
  $Res call({
    Object? hierarchyPath = freezed,
    Object? id = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_$_Label(
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
class _$_Label extends _Label {
  const _$_Label(
      {required this.hierarchyPath,
      required this.id,
      @UuidConverter() this.uuid,
      final String? $type})
      : $type = $type ?? 'label',
        super._();

  factory _$_Label.fromJson(Map<String, dynamic> json) =>
      _$$_LabelFromJson(json);

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
  String toString() {
    return 'EntryDefinition.label(hierarchyPath: $hierarchyPath, id: $id, uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Label &&
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
  _$$_LabelCopyWith<_$_Label> get copyWith =>
      __$$_LabelCopyWithImpl<_$_Label>(this, _$identity);

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
    required TResult Function(_Label value) label,
    required TResult Function(_Note value) note,
  }) {
    return label(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Label value)? label,
    TResult Function(_Note value)? note,
  }) {
    return label?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Label value)? label,
    TResult Function(_Note value)? note,
    required TResult orElse(),
  }) {
    if (label != null) {
      return label(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_LabelToJson(
      this,
    );
  }
}

abstract class _Label extends EntryDefinition {
  const factory _Label(
      {required final String hierarchyPath,
      required final String id,
      @UuidConverter() final UuidValue? uuid}) = _$_Label;
  const _Label._() : super._();

  factory _Label.fromJson(Map<String, dynamic> json) = _$_Label.fromJson;

  @override
  String get hierarchyPath;
  @override
  String get id;
  @override
  @UuidConverter()
  UuidValue? get uuid;
  @override
  @JsonKey(ignore: true)
  _$$_LabelCopyWith<_$_Label> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NoteCopyWith<$Res>
    implements $EntryDefinitionCopyWith<$Res> {
  factory _$$_NoteCopyWith(_$_Note value, $Res Function(_$_Note) then) =
      __$$_NoteCopyWithImpl<$Res>;
  @override
  $Res call(
      {String data,
      String hierarchyPath,
      String id,
      @UuidConverter() UuidValue? uuid});
}

/// @nodoc
class __$$_NoteCopyWithImpl<$Res> extends _$EntryDefinitionCopyWithImpl<$Res>
    implements _$$_NoteCopyWith<$Res> {
  __$$_NoteCopyWithImpl(_$_Note _value, $Res Function(_$_Note) _then)
      : super(_value, (v) => _then(v as _$_Note));

  @override
  _$_Note get _value => super._value as _$_Note;

  @override
  $Res call({
    Object? data = freezed,
    Object? hierarchyPath = freezed,
    Object? id = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_$_Note(
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
class _$_Note extends _Note {
  const _$_Note(
      {required this.data,
      required this.hierarchyPath,
      required this.id,
      @UuidConverter() this.uuid,
      final String? $type})
      : $type = $type ?? 'note',
        super._();

  factory _$_Note.fromJson(Map<String, dynamic> json) => _$$_NoteFromJson(json);

  @override
  final String data;
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
  String toString() {
    return 'EntryDefinition.note(data: $data, hierarchyPath: $hierarchyPath, id: $id, uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Note &&
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
  _$$_NoteCopyWith<_$_Note> get copyWith =>
      __$$_NoteCopyWithImpl<_$_Note>(this, _$identity);

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
    required TResult Function(_Label value) label,
    required TResult Function(_Note value) note,
  }) {
    return note(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Label value)? label,
    TResult Function(_Note value)? note,
  }) {
    return note?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Label value)? label,
    TResult Function(_Note value)? note,
    required TResult orElse(),
  }) {
    if (note != null) {
      return note(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoteToJson(
      this,
    );
  }
}

abstract class _Note extends EntryDefinition {
  const factory _Note(
      {required final String data,
      required final String hierarchyPath,
      required final String id,
      @UuidConverter() final UuidValue? uuid}) = _$_Note;
  const _Note._() : super._();

  factory _Note.fromJson(Map<String, dynamic> json) = _$_Note.fromJson;

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
  _$$_NoteCopyWith<_$_Note> get copyWith => throw _privateConstructorUsedError;
}
