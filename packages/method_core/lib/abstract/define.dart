import 'package:method_core/abstract/identify.dart';

abstract class DefineTemplate<T> {
  T get template;
}

abstract class DefineDefinition<D> {
  List<D> get definitions;
}

mixin MappedDefinition<T extends DefineDefinition<CD>, CD extends Identify,
    D extends Identify> on DefineDefinition<D>, DefineTemplate<T> {
  Map<String, D> get mappedId => {for (final d in definitions) d.id: d};

  Map<CD, D?> get mappedDefinition => {
        for (final t in template.definitions) t: mappedId[t.id],
      };

  List<D> addDefinitions(List<D> defs) {
    final mId = {for (final d in definitions + defs) d.id: d};

    return [
      for (final t in template.definitions) mId[t.id],
    ].whereType<D>().toList(growable: false);
  }

  List<D> removeDefinitions(List<D> defs) {
    final dId = defs.map((e) => e.id).toSet();
    final mId = {
      for (final d in definitions)
        if (!dId.contains(d.id)) d.id: d,
    };

    return [
      for (final t in template.definitions) mId[t.id],
    ].whereType<D>().toList(growable: false);
  }
}
