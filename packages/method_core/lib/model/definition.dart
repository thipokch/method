import 'package:built_collection/built_collection.dart';
import 'package:method_core/abstract/define.dart';
import 'package:method_core/abstract/uniform.dart';
import 'package:quiver/core.dart';

mixin DefinitionBuilder<C extends DefineDefinition<CD>, CD extends Uniform,
    D extends Uniform> on DefineDefinition<D>, DefineTemplate<C> {
  String commandIdMapper(CD cd) => "${cd.hierarchyPath}/${cd.id}";
  String dataIdMapper(D d) => d.hierarchyPath;

  BuiltDefinition<CD, D> get builtDefinition => BuiltDefinition.buildFrom(
        commands: template.definitions,
        commandIdMapper: commandIdMapper,
        data: definitions,
        dataIdMapper: dataIdMapper,
      );

  BuiltMultiDefinition<CD, D> get builtMultiDefinition =>
      BuiltMultiDefinition.buildFrom(
        commands: template.definitions,
        commandIdMapper: commandIdMapper,
        data: definitions,
        dataIdMapper: dataIdMapper,
      );

  bool get isCompleted =>
      builtDefinition.entries.every((p0) => p0.value.isPresent);
}

abstract class Definition<C extends Uniform, D extends Uniform> {
  static String defaultDataIdMapper(Uniform d) => d.hierarchyPath;
  static String defaultCommandIdMapper(Uniform c) =>
      "${c.hierarchyPath}/${c.id}";

  BuiltList<C> get commands;
  BuiltList<Optional<D>> get data;
  BuiltList<D> get expandedData => data.expand((_) => _).toBuiltList();

  bool get isCompleted;
}

class BuiltDefinition<C extends Uniform, D extends Uniform>
    with Definition<C, D> {
  const BuiltDefinition._(this.map);

  factory BuiltDefinition.buildFrom({
    required final Iterable<C> commands,
    final String Function(C c) commandIdMapper =
        Definition.defaultCommandIdMapper,
    required final Iterable<D> data,
    final String Function(D d) dataIdMapper = Definition.defaultDataIdMapper,
  }) {
    final dataIdMap = {for (final d in data) dataIdMapper(d): d}.build();

    return BuiltDefinition._({
      for (final c in commands)
        c: Optional.fromNullable(dataIdMap[commandIdMapper(c)]),
    }.build());
  }

  final BuiltMap<C, Optional<D>> map;

  @override
  BuiltList<C> get commands => map.keys.toBuiltList();

  @override
  BuiltList<Optional<D>> get data => map.values.toBuiltList();

  @override
  bool get isCompleted => data.expand((_) => _).length == map.length;

  BuiltList<MapEntry<C, Optional<D>>> get entries => map.entries.toBuiltList();
  MapEntry<C, Optional<D>> elementAt(int index) => entries.elementAt(index);

  // int indexOfData(D d) => data.indexOf(Optional.fromNullable(d));
  // D? operator [](Object? key) => map[key]?.orNull;
}

extension Modify<C extends Uniform, D extends Uniform>
    on BuiltDefinition<C, D> {
  BuiltDefinition<C, D> rebuild(
    MapBuilder<C, Optional<D>> Function(MapBuilder<C, Optional<D>>) updates,
  ) =>
      BuiltDefinition._(map.rebuild(updates));

  BuiltDefinition<C, D> mutateDataFor(C command, D? data) =>
      rebuild((m) => m..[command] = Optional.fromNullable(data));

  BuiltDefinition<C, D> mutateDataAt(int index, D? data) =>
      mutateDataFor(commands[index], data);

  BuiltDefinition<C, D> clearAllData() =>
      rebuild((m) => m..updateAllValues((p0, p1) => const Optional.absent()));

  BuiltDefinition<C, D> clearDataFor(C command) => mutateDataFor(command, null);

  BuiltDefinition<C, D> clearDataAt(int index) => mutateDataAt(index, null);
}

class BuiltMultiDefinition<C extends Uniform, D extends Uniform>
    with Definition<C, D> {
  const BuiltMultiDefinition._(this.map);

  factory BuiltMultiDefinition.buildFrom({
    required final Iterable<C> commands,
    final String Function(C c) commandIdMapper =
        Definition.defaultCommandIdMapper,
    required final Iterable<D> data,
    final String Function(D d) dataIdMapper = Definition.defaultDataIdMapper,
  }) {
    // TODO: Add support for multiple commands

    final dataList = data.map((e) => Optional<D>.fromNullable(e)).toList();

    return BuiltMultiDefinition._(BuiltListMultimap({
      commands.first: dataList,
    }));
  }

  final BuiltListMultimap<C, Optional<D>> map;

  @override
  BuiltList<C> get commands => map.keys.toBuiltList();

  @override
  BuiltList<Optional<D>> get data => map.values.toBuiltList();

  @override
  // TODO: implement isCompleted
  bool get isCompleted => throw UnimplementedError();
}

extension MultiModify<C extends Uniform, D extends Uniform>
    on BuiltMultiDefinition<C, D> {
  BuiltMultiDefinition<C, D> rebuild(
    ListMultimapBuilder<C, Optional<D>> Function(
      ListMultimapBuilder<C, Optional<D>>,
    )
        updates,
  ) =>
      BuiltMultiDefinition._(map.rebuild(updates));

  BuiltMultiDefinition<C, D> insertDataFor(C command, D? data) =>
      rebuild((m) => m..add(command, Optional.fromNullable(data)));

  BuiltMultiDefinition<C, D> mutateDataAt(
    C command,
    D? data,
    int index,
  ) =>
      rebuild((m) => m..[command][index] = Optional.fromNullable(data));
}
