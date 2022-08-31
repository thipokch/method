import 'package:component/task/task_bloc.dart';
import 'package:core/model/entry.dart';
import 'package:core/model/task.dart';
import 'package:flutter/material.dart';
import 'package:method/view/task/task_editor.dart';
import 'package:method/view/task/task_view.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    Key? key,
    required this.task,
  }) : super(key: key);

  final Task task;

  @override
  Widget build(BuildContext context) {
    final bloc = TaskBloc(
      task: Task.create(
        icon: "💁‍♀️",
        name: "Fortune telling",
        description: "I will always be alone.",
        collectionSlug: "collectionSlug",
        hierarchyPath: "hierarchyPath",
      ),
    );

    return TaskView(
      bloc: bloc,
      onTap: () {
        Navigator.of(context).push(
          TaskEditorRoute(
            builder: (subcontext) => Column(
              children: [
                TaskView(
                  bloc: bloc,
                ),
              ],
            ),
          ),
        );

        bloc.add(
          TaskEvent.loadEntry(
            entry: Entry.create(
              template: task,
              collectionSlug: "collectionSlug",
              hierarchyPath: "hierarchyPath",
              id: "id",
            ),
          ),
        );
      },
    );
  }
}
