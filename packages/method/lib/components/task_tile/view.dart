import 'package:flutter/material.dart';
import 'package:method_core/model/task.dart';
import 'package:method_ui/emoji/riso_emoji.dart';

class TaskTile extends StatelessWidget {
  final Task task;

  const TaskTile({
    super.key,
    required this.task,
  });

  @override
  Widget build(BuildContext context) => ListTile(
        title: Text(task.name),
        subtitle: Text(task.description),
        leading: MtRisoEmoji(
          emoji: task.icon,
          width: 48,
          height: 48,
        ),
        // isExpanded: false,
        // onTap: () {},
      );
}
