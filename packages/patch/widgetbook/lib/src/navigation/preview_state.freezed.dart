// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'preview_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PreviewState {
  WidgetbookUseCase? get selectedUseCase => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PreviewStateCopyWith<PreviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviewStateCopyWith<$Res> {
  factory $PreviewStateCopyWith(
          PreviewState value, $Res Function(PreviewState) then) =
      _$PreviewStateCopyWithImpl<$Res, PreviewState>;
  @useResult
  $Res call({WidgetbookUseCase? selectedUseCase});
}

/// @nodoc
class _$PreviewStateCopyWithImpl<$Res, $Val extends PreviewState>
    implements $PreviewStateCopyWith<$Res> {
  _$PreviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedUseCase = freezed,
  }) {
    return _then(_value.copyWith(
      selectedUseCase: freezed == selectedUseCase
          ? _value.selectedUseCase
          : selectedUseCase // ignore: cast_nullable_to_non_nullable
              as WidgetbookUseCase?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PreviewStateCopyWith<$Res>
    implements $PreviewStateCopyWith<$Res> {
  factory _$$_PreviewStateCopyWith(
          _$_PreviewState value, $Res Function(_$_PreviewState) then) =
      __$$_PreviewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WidgetbookUseCase? selectedUseCase});
}

/// @nodoc
class __$$_PreviewStateCopyWithImpl<$Res>
    extends _$PreviewStateCopyWithImpl<$Res, _$_PreviewState>
    implements _$$_PreviewStateCopyWith<$Res> {
  __$$_PreviewStateCopyWithImpl(
      _$_PreviewState _value, $Res Function(_$_PreviewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedUseCase = freezed,
  }) {
    return _then(_$_PreviewState(
      selectedUseCase: freezed == selectedUseCase
          ? _value.selectedUseCase
          : selectedUseCase // ignore: cast_nullable_to_non_nullable
              as WidgetbookUseCase?,
    ));
  }
}

/// @nodoc

class _$_PreviewState extends _PreviewState {
  _$_PreviewState({required this.selectedUseCase}) : super._();

  @override
  final WidgetbookUseCase? selectedUseCase;

  @override
  String toString() {
    return 'PreviewState(selectedUseCase: $selectedUseCase)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PreviewState &&
            (identical(other.selectedUseCase, selectedUseCase) ||
                other.selectedUseCase == selectedUseCase));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedUseCase);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PreviewStateCopyWith<_$_PreviewState> get copyWith =>
      __$$_PreviewStateCopyWithImpl<_$_PreviewState>(this, _$identity);
}

abstract class _PreviewState extends PreviewState {
  factory _PreviewState({required final WidgetbookUseCase? selectedUseCase}) =
      _$_PreviewState;
  _PreviewState._() : super._();

  @override
  WidgetbookUseCase? get selectedUseCase;
  @override
  @JsonKey(ignore: true)
  _$$_PreviewStateCopyWith<_$_PreviewState> get copyWith =>
      throw _privateConstructorUsedError;
}
