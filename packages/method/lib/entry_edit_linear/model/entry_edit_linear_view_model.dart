import 'package:built_collection/built_collection.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/task_definition.dart';

class EntryEditLinearViewModel {
  final TaskDefinition command;
  final BuiltList<EntryDefinition> data;

  const EntryEditLinearViewModel({required this.command, required this.data});
}
