import 'package:method_core/abstract/uniform.dart';

abstract class DefineTemplate<T> {
  T get template;
}

abstract class DefineDefinition<D> {
  List<D> get definitions;
}

mixin MappedDefinition<T extends DefineDefinition<TD>, TD extends Uniform,
    D extends Uniform> on DefineDefinition<D>, DefineTemplate<T> {
  String templateKey(TD td) => "${td.hierarchyPath}/${td.id}";
  String dataKey(D d) => d.hierarchyPath;

  Map<String, D> get mappedKey => {for (final d in definitions) dataKey(d): d};

  Map<TD, D?> get mappedDefinition => {
        for (final t in template.definitions) t: mappedKey[templateKey(t)],
      };

  List<D> addDefinitions(List<D> defs) {
    final mId = {for (final d in definitions + defs) dataKey(d): d};

    return [
      for (final t in template.definitions) mId[templateKey(t)],
    ].whereType<D>().toList(growable: false);
  }

  List<D> removeDefinitions(List<D> defs) {
    final dId = defs.map(dataKey).toSet();
    final mId = {
      for (final d in definitions)
        if (!dId.contains(dataKey(d))) dataKey(d): d,
    };

    return [
      for (final t in template.definitions) mId[templateKey(t)],
    ].whereType<D>().toList(growable: false);
  }
}
