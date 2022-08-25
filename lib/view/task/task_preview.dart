import 'package:core/model/task.dart';
import 'package:flutter/material.dart';
import 'package:matter/page/page.dart';
import 'package:method/view/task/task_view.dart';

class TaskPreview extends MethodPage {
  const TaskPreview({
    Key? key,
    super.title = "Task",
  }) : super(key: key);

  @override
  MethodPageBuilder get builder => (context) => Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          children: [
            TaskView(
              task: Task.create(
                name: "name",
                description: "description",
                collectionSlug: "collectionSlug",
                hierarchyPath: "hierarchyPath",
              ),
            ),
          ],
        ),
      );
}
