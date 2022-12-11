import 'dart:async';

import 'package:flutter/material.dart';
import 'package:method_ui/element_symbol.dart';

class ListChildrenBuilder {
  const ListChildrenBuilder._();

  static Widget section(text) => Padding(
        padding: const EdgeInsets.fromLTRB(16, 36, 16, 12),
        child: Text(text),
      );

  static Widget tile(MapEntry<String, FutureOr<void> Function()?> entry) =>
      ListTile(
        title: Text(entry.key),
        trailing: const Icon(ElementSymbol.chevronForward),
        onTap: entry.value,
      );
}
