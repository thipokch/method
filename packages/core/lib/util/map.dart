import 'package:core/abstract/identify.dart';

Map<T, E?> zipById<T extends Identify, E extends Identify>({
  required List<T> keys,
  required List<E> values,
}) {
  final vids = {for (var e in values) e.id: e};

  return {for (var e in keys) e: vids[e.id]};
}
