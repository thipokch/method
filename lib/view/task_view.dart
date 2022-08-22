import 'package:component/task/task_bloc.dart';
import 'package:core/model/task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matter/button/button_tonal.dart';
import 'package:matter/card/card.dart';

class TaskView extends StatelessWidget {
  TaskView({Key? key}) : super(key: key);

  final bloc = TaskBloc();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskBloc, TaskState>(
      bloc: bloc,
      builder: (context, state) {
        return Column(
          children: [
            MethodCard(
              title: "title",
              description: state.when(
                initial: () => "Loading",
                taskLoaded: (task) => task.description,
                entryLoaded: (task) => task.description,
              ),
              emoji: "📺",
              isExpanded: true,
            ),
            ButtonTonal(
              child: const Text("load task"),
              onPressed: () => bloc.add(
                TaskEvent.loadTask(
                  task: Task.create(
                    name: "New Task",
                    description: "Hey you",
                    collectionSlug: "here it is",
                    hierarchyPath: "hierarchyPath",
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
