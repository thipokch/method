// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'video_step_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoStepResult _$VideoStepResultFromJson(Map<String, dynamic> json) {
  return _VideoStepResult.fromJson(json);
}

/// @nodoc
mixin _$VideoStepResult {
  Identifier get id => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  VideoResult get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoStepResultCopyWith<VideoStepResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoStepResultCopyWith<$Res> {
  factory $VideoStepResultCopyWith(
          VideoStepResult value, $Res Function(VideoStepResult) then) =
      _$VideoStepResultCopyWithImpl<$Res>;
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      VideoResult result});

  $VideoResultCopyWith<$Res> get result;
}

/// @nodoc
class _$VideoStepResultCopyWithImpl<$Res>
    implements $VideoStepResultCopyWith<$Res> {
  _$VideoStepResultCopyWithImpl(this._value, this._then);

  final VideoStepResult _value;
  // ignore: unused_field
  final $Res Function(VideoStepResult) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as VideoResult,
    ));
  }

  @override
  $VideoResultCopyWith<$Res> get result {
    return $VideoResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$$_VideoStepResultCopyWith<$Res>
    implements $VideoStepResultCopyWith<$Res> {
  factory _$$_VideoStepResultCopyWith(
          _$_VideoStepResult value, $Res Function(_$_VideoStepResult) then) =
      __$$_VideoStepResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {Identifier id,
      DateTime startDate,
      DateTime endDate,
      VideoResult result});

  @override
  $VideoResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$_VideoStepResultCopyWithImpl<$Res>
    extends _$VideoStepResultCopyWithImpl<$Res>
    implements _$$_VideoStepResultCopyWith<$Res> {
  __$$_VideoStepResultCopyWithImpl(
      _$_VideoStepResult _value, $Res Function(_$_VideoStepResult) _then)
      : super(_value, (v) => _then(v as _$_VideoStepResult));

  @override
  _$_VideoStepResult get _value => super._value as _$_VideoStepResult;

  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_VideoStepResult(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as VideoResult,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_VideoStepResult extends _VideoStepResult {
  const _$_VideoStepResult(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required this.result})
      : super._();

  factory _$_VideoStepResult.fromJson(Map<String, dynamic> json) =>
      _$$_VideoStepResultFromJson(json);

  @override
  final Identifier id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final VideoResult result;

  @override
  String toString() {
    return 'VideoStepResult(id: $id, startDate: $startDate, endDate: $endDate, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoStepResult &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$_VideoStepResultCopyWith<_$_VideoStepResult> get copyWith =>
      __$$_VideoStepResultCopyWithImpl<_$_VideoStepResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoStepResultToJson(
      this,
    );
  }
}

abstract class _VideoStepResult extends VideoStepResult {
  const factory _VideoStepResult(
      {required final Identifier id,
      required final DateTime startDate,
      required final DateTime endDate,
      required final VideoResult result}) = _$_VideoStepResult;
  const _VideoStepResult._() : super._();

  factory _VideoStepResult.fromJson(Map<String, dynamic> json) =
      _$_VideoStepResult.fromJson;

  @override
  Identifier get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  VideoResult get result;
  @override
  @JsonKey(ignore: true)
  _$$_VideoStepResultCopyWith<_$_VideoStepResult> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoResult _$VideoResultFromJson(Map<String, dynamic> json) {
  return _VideoResult.fromJson(json);
}

/// @nodoc
mixin _$VideoResult {
  Duration get leftVideoAt => throw _privateConstructorUsedError;
  DateTime get stayedInVideo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoResultCopyWith<VideoResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoResultCopyWith<$Res> {
  factory $VideoResultCopyWith(
          VideoResult value, $Res Function(VideoResult) then) =
      _$VideoResultCopyWithImpl<$Res>;
  $Res call({Duration leftVideoAt, DateTime stayedInVideo});
}

/// @nodoc
class _$VideoResultCopyWithImpl<$Res> implements $VideoResultCopyWith<$Res> {
  _$VideoResultCopyWithImpl(this._value, this._then);

  final VideoResult _value;
  // ignore: unused_field
  final $Res Function(VideoResult) _then;

  @override
  $Res call({
    Object? leftVideoAt = freezed,
    Object? stayedInVideo = freezed,
  }) {
    return _then(_value.copyWith(
      leftVideoAt: leftVideoAt == freezed
          ? _value.leftVideoAt
          : leftVideoAt // ignore: cast_nullable_to_non_nullable
              as Duration,
      stayedInVideo: stayedInVideo == freezed
          ? _value.stayedInVideo
          : stayedInVideo // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_VideoResultCopyWith<$Res>
    implements $VideoResultCopyWith<$Res> {
  factory _$$_VideoResultCopyWith(
          _$_VideoResult value, $Res Function(_$_VideoResult) then) =
      __$$_VideoResultCopyWithImpl<$Res>;
  @override
  $Res call({Duration leftVideoAt, DateTime stayedInVideo});
}

/// @nodoc
class __$$_VideoResultCopyWithImpl<$Res> extends _$VideoResultCopyWithImpl<$Res>
    implements _$$_VideoResultCopyWith<$Res> {
  __$$_VideoResultCopyWithImpl(
      _$_VideoResult _value, $Res Function(_$_VideoResult) _then)
      : super(_value, (v) => _then(v as _$_VideoResult));

  @override
  _$_VideoResult get _value => super._value as _$_VideoResult;

  @override
  $Res call({
    Object? leftVideoAt = freezed,
    Object? stayedInVideo = freezed,
  }) {
    return _then(_$_VideoResult(
      leftVideoAt: leftVideoAt == freezed
          ? _value.leftVideoAt
          : leftVideoAt // ignore: cast_nullable_to_non_nullable
              as Duration,
      stayedInVideo: stayedInVideo == freezed
          ? _value.stayedInVideo
          : stayedInVideo // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_VideoResult extends _VideoResult {
  const _$_VideoResult({required this.leftVideoAt, required this.stayedInVideo})
      : super._();

  factory _$_VideoResult.fromJson(Map<String, dynamic> json) =>
      _$$_VideoResultFromJson(json);

  @override
  final Duration leftVideoAt;
  @override
  final DateTime stayedInVideo;

  @override
  String toString() {
    return 'VideoResult(leftVideoAt: $leftVideoAt, stayedInVideo: $stayedInVideo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoResult &&
            const DeepCollectionEquality()
                .equals(other.leftVideoAt, leftVideoAt) &&
            const DeepCollectionEquality()
                .equals(other.stayedInVideo, stayedInVideo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(leftVideoAt),
      const DeepCollectionEquality().hash(stayedInVideo));

  @JsonKey(ignore: true)
  @override
  _$$_VideoResultCopyWith<_$_VideoResult> get copyWith =>
      __$$_VideoResultCopyWithImpl<_$_VideoResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoResultToJson(
      this,
    );
  }
}

abstract class _VideoResult extends VideoResult {
  const factory _VideoResult(
      {required final Duration leftVideoAt,
      required final DateTime stayedInVideo}) = _$_VideoResult;
  const _VideoResult._() : super._();

  factory _VideoResult.fromJson(Map<String, dynamic> json) =
      _$_VideoResult.fromJson;

  @override
  Duration get leftVideoAt;
  @override
  DateTime get stayedInVideo;
  @override
  @JsonKey(ignore: true)
  _$$_VideoResultCopyWith<_$_VideoResult> get copyWith =>
      throw _privateConstructorUsedError;
}
