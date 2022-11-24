import 'package:method_core/abstract/identify.dart';

Map<String, E?> mapId<T extends Identify, E extends Identify>({
  required List<T> keys,
  required List<E> values,
}) {
  return {for (var e in values) e.id: e};
}