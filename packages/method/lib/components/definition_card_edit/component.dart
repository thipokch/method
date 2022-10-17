import 'package:flutter/material.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/task_definition.dart';
import 'package:method_ui/card/card_editing.dart';

import '../entry_edit/component.dart';

part 'view.dart';

class DefinitionCardEdit {
  DefinitionCardEdit._();

  static expand({
    required TaskDefinition taskDefinition,
    EntryDefinition? entryDefinition,
    VoidCallback? onTap,
    ValueChanged<String>? onChanged,
  }) =>
      _View(
        taskDefinition: taskDefinition,
        entryDefinition: entryDefinition,
        onTap: onTap,
        onChanged: onChanged,
      );

  static basic({
    required TaskDefinition taskDefinition,
    EntryDefinition? entryDefinition,
    VoidCallback? onTap,
    ValueChanged<String>? onChanged,
  }) =>
      _View(
        taskDefinition: taskDefinition,
        entryDefinition: entryDefinition,
        onTap: onTap,
        onChanged: onChanged,
        isStatic: true,
        showMeta: false,
      );
}

// late TextEditingController controller;

// @override
// void initState() {
//   final text = widget.entryDefinition
//       ?.whenOrNull(note: (data, hierarchyPath, id, uuid) => data);
//   controller = TextEditingController(text: text);

//   super.initState();
// }

// @override
// void dispose() {
//   controller.dispose();
//   super.dispose();
// }
