import 'package:flutter/material.dart';
import 'package:method_style/element_symbol.dart';

class ListChildrenBuilder {
  const ListChildrenBuilder._();

  static Widget section(text) => Padding(
        padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
        child: Text(text),
      );

  static Widget tile(MapEntry<String, void Function()?> entry) => ListTile(
        title: Text(entry.key),
        trailing: const Icon(ElementSymbol.chevronForward),
        onTap: entry.value,
      );
}
