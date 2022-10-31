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
}

class BuiltDefinition<C extends Uniform, D extends Uniform> {
  const BuiltDefinition._(this.map);

  factory BuiltDefinition.buildFrom({
    required final Iterable<C> commands,
    final String Function(C c) commandIdMapper = defaultCommandIdMapper,
    required final Iterable<D> data,
    final String Function(D d) dataIdMapper = defaulDataIdMapper,
  }) {
    final dataIdMap = {for (final d in data) dataIdMapper(d): d}.build();

    return BuiltDefinition._({
      for (final c in commands)
        c: Optional.fromNullable(dataIdMap[commandIdMapper(c)]),
    }.build());
  }

  final BuiltMap<C, Optional<D>> map;

  static String defaulDataIdMapper(Uniform d) => d.hierarchyPath;
  static String defaultCommandIdMapper(Uniform c) =>
      "${c.hierarchyPath}/${c.id}";

  BuiltList<C> get commands => map.keys.toBuiltList();
  BuiltList<Optional<D>> get data => map.values.toBuiltList();

  bool get isCompleted => data.expand((_) => _).length == map.length;

  int indexOfData(D d) => data.indexOf(Optional.fromNullable(d));

  BuiltDefinition<C, D> mutateDataFor(C command, D? data) =>
      rebuild((m) => m..[command] = Optional.fromNullable(data));

  BuiltDefinition<C, D> mutateDataAt(int index, D? data) =>
      mutateDataFor(commands[index], data);

  BuiltDefinition<C, D> clearAllData() =>
      rebuild((m) => m..updateAllValues((p0, p1) => const Optional.absent()));

  BuiltDefinition<C, D> clearDataFor(C command) => mutateDataFor(command, null);

  BuiltDefinition<C, D> clearDataAt(int index) => mutateDataAt(index, null);

  BuiltDefinition<C, D> rebuild(
    MapBuilder<C, Optional<D>> Function(MapBuilder<C, Optional<D>>) updates,
  ) =>
      BuiltDefinition._(map.rebuild(updates));

  // D? operator [](Object? key) => map[key]?.orNull;

  MapEntry<C, Optional<D>> elementAt(int index) => map.entries.elementAt(index);
}
