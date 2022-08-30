import 'package:core/model/task.dart';
import 'package:element/element_scale.dart';
import 'package:flutter/material.dart';
import 'package:matter/page/page.dart';
import 'package:method/view/task/task_view.dart';

class TaskPreview extends MethodPage {
  TaskPreview({
    Key? key,
    super.controller,
  }) : super(
          key: key,
          title: "Task",
          child: Padding(
            padding: const EdgeInsets.all(ElementScale.spaceM),
            child: Column(
              // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
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
          ),
        );
}
