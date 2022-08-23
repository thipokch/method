import 'package:component/task/task_bloc.dart';
import 'package:core/model/entry.dart';
import 'package:core/model/task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matter/card/card.dart';

class TaskView extends StatelessWidget {
  const TaskView({
    Key? key,
    required this.task,
  }) : super(key: key);

  final Task task;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskBloc(
        task: Task.create(
          name: "Fortune telling",
          description: "I will always be alone.",
          collectionSlug: "collectionSlug",
          hierarchyPath: "hierarchyPath",
        ),
      ),
      child: BlocBuilder<TaskBloc, TaskState>(
        builder: (context, state) {
          return MethodCard(
            onTap: () => context.read<TaskBloc>().add(
                  TaskEvent.loadEntry(
                    entry: Entry.create(
                      template: task,
                      collectionSlug: "collectionSlug",
                      hierarchyPath: "hierarchyPath",
                      id: "id",
                    ),
                  ),
                ),
            title: state.maybeWhen(
              initial: () => "Loading",
              taskLoaded: (task) => task.name,
              entryLoaded: (task, entry) => task.name,
              orElse: () => "Error",
            ),
            description: state.when(
              initial: () => "Loading",
              taskLoaded: (task) => task.description,
              entryLoaded: (task, entry) => task.description,
            ),
            emoji: "💫",
            isExpanded: state.when(
              initial: () => false,
              taskLoaded: (task) => false,
              entryLoaded: (task, entry) => true,
            ),
            onChanged: (value) => context.read<TaskBloc>().add(
                  TaskEvent.addData(text: value),
                ),
          );
        },
      ),
    );
  }
}
