import 'package:built_collection/built_collection.dart';
import 'package:method_core/abstract/define.dart';
import 'package:method_core/abstract/uniform.dart';
import 'package:quiver/core.dart';

import 'entry_definition.dart';
import 'task_definition.dart';

typedef DefinitionPair = MapEntry<TaskDefinition, Optional<EntryDefinition>>;
typedef DefinitionList
    = List<MapEntry<TaskDefinition, Optional<EntryDefinition>>>;
typedef DefinitionMap = BuiltMap<TaskDefinition, Optional<EntryDefinition>>;

mixin DefinitionBuilder<T extends DefineDefinition<TD>, TD extends Uniform,
    D extends Uniform> on DefineDefinition<D>, DefineTemplate<T> {
  String instructionKey(TD td) => "${td.hierarchyPath}/${td.id}";
  String dataKey(D d) => d.hierarchyPath;

  BuiltMap<String, D> get _instructionIdMap =>
      {for (final d in definitions) dataKey(d): d}.build();

  BuiltMap<TD, Optional<D>> get builtDefinition => {
        for (final t in template.definitions)
          t: Optional.fromNullable(_instructionIdMap[instructionKey(t)]),
      }.build();

  BuiltMap<TD, Optional<D>> mutateFor(TD td, D d) =>
      builtDefinition.rebuild((m) => m..[td] = Optional.fromNullable(d));

  BuiltMap<TD, Optional<D>> mutateAt(int index, D d) =>
      mutateFor(builtDefinition.entries.elementAt(index).key, d);

  BuiltMap<TD, Optional<D>> removeFor(TD td) =>
      builtDefinition.rebuild((m) => m..[td] = const Optional.absent());

  BuiltMap<TD, Optional<D>> removeAt(int index) =>
      removeFor(builtDefinition.entries.elementAt(index).key);
}

extension D on DefinitionMap {
  List<EntryDefinition> asEntryDefinitionList() =>
      values.expand((_) => _).toList();
}
