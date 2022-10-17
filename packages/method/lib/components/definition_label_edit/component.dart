import 'package:flutter/material.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/task_definition.dart';
import 'package:method_style/element_scale.dart';
import 'package:method_ui/emoji/emoji.dart';

import '../entry_edit/component.dart';

part 'view.dart';

class DefinitionLabelEdit {
  const DefinitionLabelEdit._();

  static view({
    required TaskDefinition taskDefinition,
    EntryDefinition? entryDefinition,
    VoidCallback? onTap,
  }) =>
      _View(
        taskDefinition: taskDefinition,
        entryDefinition: entryDefinition,
        onTap: onTap,
      );
}
