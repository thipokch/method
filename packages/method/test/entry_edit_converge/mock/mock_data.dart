import 'package:method_core/model/entry.dart';
import 'package:method_core/model/task.dart';
import 'package:method_repo/content/content.dart';

final List<Entry> mockEntries =
    mockTasks.map((e) => Entry.from(template: e)).toList();

final List<Task> mockTasks = [
  Content.taskContext,
];
