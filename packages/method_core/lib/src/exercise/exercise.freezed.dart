// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Exercise _$ExerciseFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'navigable':
      return NavigableExercise.fromJson(json);
    case 'ordered':
      return OrderedExercise.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'Exercise', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$Exercise {
  String get icon => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @ExerciseIdentifierConverter()
  ExerciseIdentifier get id => throw _privateConstructorUsedError;
  List<Task> get tasks => throw _privateConstructorUsedError;
  Task? get initialTask => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String icon,
            String name,
            String description,
            @ExerciseIdentifierConverter()
                ExerciseIdentifier id,
            List<Task> tasks,
            Task? initialTask,
            @JsonKey(name: 'rules')
            @MapOfNavigationRulesConverter()
                Map<TaskIdentifier, NavigationRule> navigationRules)
        navigable,
    required TResult Function(
            String icon,
            String name,
            String description,
            @ExerciseIdentifierConverter() ExerciseIdentifier id,
            List<Task> tasks,
            Task? initialTask)
        ordered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String icon,
            String name,
            String description,
            @ExerciseIdentifierConverter()
                ExerciseIdentifier id,
            List<Task> tasks,
            Task? initialTask,
            @JsonKey(name: 'rules')
            @MapOfNavigationRulesConverter()
                Map<TaskIdentifier, NavigationRule> navigationRules)?
        navigable,
    TResult Function(
            String icon,
            String name,
            String description,
            @ExerciseIdentifierConverter() ExerciseIdentifier id,
            List<Task> tasks,
            Task? initialTask)?
        ordered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String icon,
            String name,
            String description,
            @ExerciseIdentifierConverter()
                ExerciseIdentifier id,
            List<Task> tasks,
            Task? initialTask,
            @JsonKey(name: 'rules')
            @MapOfNavigationRulesConverter()
                Map<TaskIdentifier, NavigationRule> navigationRules)?
        navigable,
    TResult Function(
            String icon,
            String name,
            String description,
            @ExerciseIdentifierConverter() ExerciseIdentifier id,
            List<Task> tasks,
            Task? initialTask)?
        ordered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigableExercise value) navigable,
    required TResult Function(OrderedExercise value) ordered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavigableExercise value)? navigable,
    TResult Function(OrderedExercise value)? ordered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigableExercise value)? navigable,
    TResult Function(OrderedExercise value)? ordered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseCopyWith<Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res>;
  $Res call(
      {String icon,
      String name,
      String description,
      @ExerciseIdentifierConverter() ExerciseIdentifier id,
      List<Task> tasks,
      Task? initialTask});

  $TaskCopyWith<$Res>? get initialTask;
}

/// @nodoc
class _$ExerciseCopyWithImpl<$Res> implements $ExerciseCopyWith<$Res> {
  _$ExerciseCopyWithImpl(this._value, this._then);

  final Exercise _value;
  // ignore: unused_field
  final $Res Function(Exercise) _then;

  @override
  $Res call({
    Object? icon = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? id = freezed,
    Object? tasks = freezed,
    Object? initialTask = freezed,
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
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ExerciseIdentifier,
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      initialTask: initialTask == freezed
          ? _value.initialTask
          : initialTask // ignore: cast_nullable_to_non_nullable
              as Task?,
    ));
  }

  @override
  $TaskCopyWith<$Res>? get initialTask {
    if (_value.initialTask == null) {
      return null;
    }

    return $TaskCopyWith<$Res>(_value.initialTask!, (value) {
      return _then(_value.copyWith(initialTask: value));
    });
  }
}

/// @nodoc
abstract class _$$NavigableExerciseCopyWith<$Res>
    implements $ExerciseCopyWith<$Res> {
  factory _$$NavigableExerciseCopyWith(
          _$NavigableExercise value, $Res Function(_$NavigableExercise) then) =
      __$$NavigableExerciseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String icon,
      String name,
      String description,
      @ExerciseIdentifierConverter()
          ExerciseIdentifier id,
      List<Task> tasks,
      Task? initialTask,
      @JsonKey(name: 'rules')
      @MapOfNavigationRulesConverter()
          Map<TaskIdentifier, NavigationRule> navigationRules});

  @override
  $TaskCopyWith<$Res>? get initialTask;
}

/// @nodoc
class __$$NavigableExerciseCopyWithImpl<$Res>
    extends _$ExerciseCopyWithImpl<$Res>
    implements _$$NavigableExerciseCopyWith<$Res> {
  __$$NavigableExerciseCopyWithImpl(
      _$NavigableExercise _value, $Res Function(_$NavigableExercise) _then)
      : super(_value, (v) => _then(v as _$NavigableExercise));

  @override
  _$NavigableExercise get _value => super._value as _$NavigableExercise;

  @override
  $Res call({
    Object? icon = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? id = freezed,
    Object? tasks = freezed,
    Object? initialTask = freezed,
    Object? navigationRules = freezed,
  }) {
    return _then(_$NavigableExercise(
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
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ExerciseIdentifier,
      tasks: tasks == freezed
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      initialTask: initialTask == freezed
          ? _value.initialTask
          : initialTask // ignore: cast_nullable_to_non_nullable
              as Task?,
      navigationRules: navigationRules == freezed
          ? _value._navigationRules
          : navigationRules // ignore: cast_nullable_to_non_nullable
              as Map<TaskIdentifier, NavigationRule>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NavigableExercise extends NavigableExercise {
  const _$NavigableExercise(
      {required this.icon,
      required this.name,
      required this.description,
      @ExerciseIdentifierConverter()
          required this.id,
      final List<Task> tasks = const [],
      this.initialTask,
      @JsonKey(name: 'rules')
      @MapOfNavigationRulesConverter()
          final Map<TaskIdentifier, NavigationRule> navigationRules = const {},
      final String? $type})
      : _tasks = tasks,
        _navigationRules = navigationRules,
        $type = $type ?? 'navigable',
        super._();

  factory _$NavigableExercise.fromJson(Map<String, dynamic> json) =>
      _$$NavigableExerciseFromJson(json);

  @override
  final String icon;
  @override
  final String name;
  @override
  final String description;
  @override
  @ExerciseIdentifierConverter()
  final ExerciseIdentifier id;
  final List<Task> _tasks;
  @override
  @JsonKey()
  List<Task> get tasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  final Task? initialTask;
// ignore: invalid_annotation_target
  final Map<TaskIdentifier, NavigationRule> _navigationRules;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'rules')
  @MapOfNavigationRulesConverter()
  Map<TaskIdentifier, NavigationRule> get navigationRules {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_navigationRules);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Exercise.navigable(icon: $icon, name: $name, description: $description, id: $id, tasks: $tasks, initialTask: $initialTask, navigationRules: $navigationRules)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigableExercise &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality()
                .equals(other.initialTask, initialTask) &&
            const DeepCollectionEquality()
                .equals(other._navigationRules, _navigationRules));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_tasks),
      const DeepCollectionEquality().hash(initialTask),
      const DeepCollectionEquality().hash(_navigationRules));

  @JsonKey(ignore: true)
  @override
  _$$NavigableExerciseCopyWith<_$NavigableExercise> get copyWith =>
      __$$NavigableExerciseCopyWithImpl<_$NavigableExercise>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String icon,
            String name,
            String description,
            @ExerciseIdentifierConverter()
                ExerciseIdentifier id,
            List<Task> tasks,
            Task? initialTask,
            @JsonKey(name: 'rules')
            @MapOfNavigationRulesConverter()
                Map<TaskIdentifier, NavigationRule> navigationRules)
        navigable,
    required TResult Function(
            String icon,
            String name,
            String description,
            @ExerciseIdentifierConverter() ExerciseIdentifier id,
            List<Task> tasks,
            Task? initialTask)
        ordered,
  }) {
    return navigable(
        icon, name, description, id, tasks, initialTask, navigationRules);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String icon,
            String name,
            String description,
            @ExerciseIdentifierConverter()
                ExerciseIdentifier id,
            List<Task> tasks,
            Task? initialTask,
            @JsonKey(name: 'rules')
            @MapOfNavigationRulesConverter()
                Map<TaskIdentifier, NavigationRule> navigationRules)?
        navigable,
    TResult Function(
            String icon,
            String name,
            String description,
            @ExerciseIdentifierConverter() ExerciseIdentifier id,
            List<Task> tasks,
            Task? initialTask)?
        ordered,
  }) {
    return navigable?.call(
        icon, name, description, id, tasks, initialTask, navigationRules);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String icon,
            String name,
            String description,
            @ExerciseIdentifierConverter()
                ExerciseIdentifier id,
            List<Task> tasks,
            Task? initialTask,
            @JsonKey(name: 'rules')
            @MapOfNavigationRulesConverter()
                Map<TaskIdentifier, NavigationRule> navigationRules)?
        navigable,
    TResult Function(
            String icon,
            String name,
            String description,
            @ExerciseIdentifierConverter() ExerciseIdentifier id,
            List<Task> tasks,
            Task? initialTask)?
        ordered,
    required TResult orElse(),
  }) {
    if (navigable != null) {
      return navigable(
          icon, name, description, id, tasks, initialTask, navigationRules);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigableExercise value) navigable,
    required TResult Function(OrderedExercise value) ordered,
  }) {
    return navigable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavigableExercise value)? navigable,
    TResult Function(OrderedExercise value)? ordered,
  }) {
    return navigable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigableExercise value)? navigable,
    TResult Function(OrderedExercise value)? ordered,
    required TResult orElse(),
  }) {
    if (navigable != null) {
      return navigable(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NavigableExerciseToJson(
      this,
    );
  }
}

abstract class NavigableExercise extends Exercise {
  const factory NavigableExercise(
          {required final String icon,
          required final String name,
          required final String description,
          @ExerciseIdentifierConverter()
              required final ExerciseIdentifier id,
          final List<Task> tasks,
          final Task? initialTask,
          @JsonKey(name: 'rules')
          @MapOfNavigationRulesConverter()
              final Map<TaskIdentifier, NavigationRule> navigationRules}) =
      _$NavigableExercise;
  const NavigableExercise._() : super._();

  factory NavigableExercise.fromJson(Map<String, dynamic> json) =
      _$NavigableExercise.fromJson;

  @override
  String get icon;
  @override
  String get name;
  @override
  String get description;
  @override
  @ExerciseIdentifierConverter()
  ExerciseIdentifier get id;
  @override
  List<Task> get tasks;
  @override
  Task? get initialTask; // ignore: invalid_annotation_target
  @JsonKey(name: 'rules')
  @MapOfNavigationRulesConverter()
  Map<TaskIdentifier, NavigationRule> get navigationRules;
  @override
  @JsonKey(ignore: true)
  _$$NavigableExerciseCopyWith<_$NavigableExercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderedExerciseCopyWith<$Res>
    implements $ExerciseCopyWith<$Res> {
  factory _$$OrderedExerciseCopyWith(
          _$OrderedExercise value, $Res Function(_$OrderedExercise) then) =
      __$$OrderedExerciseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String icon,
      String name,
      String description,
      @ExerciseIdentifierConverter() ExerciseIdentifier id,
      List<Task> tasks,
      Task? initialTask});

  @override
  $TaskCopyWith<$Res>? get initialTask;
}

/// @nodoc
class __$$OrderedExerciseCopyWithImpl<$Res> extends _$ExerciseCopyWithImpl<$Res>
    implements _$$OrderedExerciseCopyWith<$Res> {
  __$$OrderedExerciseCopyWithImpl(
      _$OrderedExercise _value, $Res Function(_$OrderedExercise) _then)
      : super(_value, (v) => _then(v as _$OrderedExercise));

  @override
  _$OrderedExercise get _value => super._value as _$OrderedExercise;

  @override
  $Res call({
    Object? icon = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? id = freezed,
    Object? tasks = freezed,
    Object? initialTask = freezed,
  }) {
    return _then(_$OrderedExercise(
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
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ExerciseIdentifier,
      tasks: tasks == freezed
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      initialTask: initialTask == freezed
          ? _value.initialTask
          : initialTask // ignore: cast_nullable_to_non_nullable
              as Task?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderedExercise extends OrderedExercise {
  const _$OrderedExercise(
      {required this.icon,
      required this.name,
      required this.description,
      @ExerciseIdentifierConverter() required this.id,
      final List<Task> tasks = const [],
      this.initialTask,
      final String? $type})
      : _tasks = tasks,
        $type = $type ?? 'ordered',
        super._();

  factory _$OrderedExercise.fromJson(Map<String, dynamic> json) =>
      _$$OrderedExerciseFromJson(json);

  @override
  final String icon;
  @override
  final String name;
  @override
  final String description;
  @override
  @ExerciseIdentifierConverter()
  final ExerciseIdentifier id;
  final List<Task> _tasks;
  @override
  @JsonKey()
  List<Task> get tasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  final Task? initialTask;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Exercise.ordered(icon: $icon, name: $name, description: $description, id: $id, tasks: $tasks, initialTask: $initialTask)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderedExercise &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality()
                .equals(other.initialTask, initialTask));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_tasks),
      const DeepCollectionEquality().hash(initialTask));

  @JsonKey(ignore: true)
  @override
  _$$OrderedExerciseCopyWith<_$OrderedExercise> get copyWith =>
      __$$OrderedExerciseCopyWithImpl<_$OrderedExercise>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String icon,
            String name,
            String description,
            @ExerciseIdentifierConverter()
                ExerciseIdentifier id,
            List<Task> tasks,
            Task? initialTask,
            @JsonKey(name: 'rules')
            @MapOfNavigationRulesConverter()
                Map<TaskIdentifier, NavigationRule> navigationRules)
        navigable,
    required TResult Function(
            String icon,
            String name,
            String description,
            @ExerciseIdentifierConverter() ExerciseIdentifier id,
            List<Task> tasks,
            Task? initialTask)
        ordered,
  }) {
    return ordered(icon, name, description, id, tasks, initialTask);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String icon,
            String name,
            String description,
            @ExerciseIdentifierConverter()
                ExerciseIdentifier id,
            List<Task> tasks,
            Task? initialTask,
            @JsonKey(name: 'rules')
            @MapOfNavigationRulesConverter()
                Map<TaskIdentifier, NavigationRule> navigationRules)?
        navigable,
    TResult Function(
            String icon,
            String name,
            String description,
            @ExerciseIdentifierConverter() ExerciseIdentifier id,
            List<Task> tasks,
            Task? initialTask)?
        ordered,
  }) {
    return ordered?.call(icon, name, description, id, tasks, initialTask);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String icon,
            String name,
            String description,
            @ExerciseIdentifierConverter()
                ExerciseIdentifier id,
            List<Task> tasks,
            Task? initialTask,
            @JsonKey(name: 'rules')
            @MapOfNavigationRulesConverter()
                Map<TaskIdentifier, NavigationRule> navigationRules)?
        navigable,
    TResult Function(
            String icon,
            String name,
            String description,
            @ExerciseIdentifierConverter() ExerciseIdentifier id,
            List<Task> tasks,
            Task? initialTask)?
        ordered,
    required TResult orElse(),
  }) {
    if (ordered != null) {
      return ordered(icon, name, description, id, tasks, initialTask);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigableExercise value) navigable,
    required TResult Function(OrderedExercise value) ordered,
  }) {
    return ordered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavigableExercise value)? navigable,
    TResult Function(OrderedExercise value)? ordered,
  }) {
    return ordered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigableExercise value)? navigable,
    TResult Function(OrderedExercise value)? ordered,
    required TResult orElse(),
  }) {
    if (ordered != null) {
      return ordered(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderedExerciseToJson(
      this,
    );
  }
}

abstract class OrderedExercise extends Exercise {
  const factory OrderedExercise(
      {required final String icon,
      required final String name,
      required final String description,
      @ExerciseIdentifierConverter() required final ExerciseIdentifier id,
      final List<Task> tasks,
      final Task? initialTask}) = _$OrderedExercise;
  const OrderedExercise._() : super._();

  factory OrderedExercise.fromJson(Map<String, dynamic> json) =
      _$OrderedExercise.fromJson;

  @override
  String get icon;
  @override
  String get name;
  @override
  String get description;
  @override
  @ExerciseIdentifierConverter()
  ExerciseIdentifier get id;
  @override
  List<Task> get tasks;
  @override
  Task? get initialTask;
  @override
  @JsonKey(ignore: true)
  _$$OrderedExerciseCopyWith<_$OrderedExercise> get copyWith =>
      throw _privateConstructorUsedError;
}
