import 'package:flutter/material.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/task_definition.dart';

mixin DefinitionEdit on Widget {
  TaskDefinition get taskDefinition;
  EntryDefinition? get entryDefinition;

  bool get isSelected => entryDefinition != null;
}
