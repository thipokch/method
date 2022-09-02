// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inform.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Information {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InformationCopyWith<Information> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InformationCopyWith<$Res> {
  factory $InformationCopyWith(
          Information value, $Res Function(Information) then) =
      _$InformationCopyWithImpl<$Res>;
  $Res call({String name, String description});
}

/// @nodoc
class _$InformationCopyWithImpl<$Res> implements $InformationCopyWith<$Res> {
  _$InformationCopyWithImpl(this._value, this._then);

  final Information _value;
  // ignore: unused_field
  final $Res Function(Information) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_InformationCopyWith<$Res>
    implements $InformationCopyWith<$Res> {
  factory _$$_InformationCopyWith(
          _$_Information value, $Res Function(_$_Information) then) =
      __$$_InformationCopyWithImpl<$Res>;
  @override
  $Res call({String name, String description});
}

/// @nodoc
class __$$_InformationCopyWithImpl<$Res> extends _$InformationCopyWithImpl<$Res>
    implements _$$_InformationCopyWith<$Res> {
  __$$_InformationCopyWithImpl(
      _$_Information _value, $Res Function(_$_Information) _then)
      : super(_value, (v) => _then(v as _$_Information));

  @override
  _$_Information get _value => super._value as _$_Information;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_Information(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Information implements _Information {
  const _$_Information({required this.name, required this.description});

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'Information(name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Information &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_InformationCopyWith<_$_Information> get copyWith =>
      __$$_InformationCopyWithImpl<_$_Information>(this, _$identity);
}

abstract class _Information implements Information, Inform {
  const factory _Information(
      {required final String name,
      required final String description}) = _$_Information;

  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_InformationCopyWith<_$_Information> get copyWith =>
      throw _privateConstructorUsedError;
}
