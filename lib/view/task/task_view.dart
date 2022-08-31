import 'package:component/task/task_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matter/card/card.dart';

class TaskView extends StatelessWidget {
  const TaskView({Key? key, required this.bloc, this.onTap}) : super(key: key);

  final TaskBloc bloc;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => BlocBuilder<TaskBloc, TaskState>(
        bloc: bloc,
        builder: (context, state) => MethodCard(
          onTap: onTap,
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
          emoji: state.when(
            initial: () => "⏳",
            taskLoaded: (task) => task.icon,
            entryLoaded: (task, entry) => task.icon,
          ),
          isExpanded: state.when(
            initial: () => false,
            taskLoaded: (task) => false,
            entryLoaded: (task, entry) => true,
          ),
          onChanged: (value) => context.read<TaskBloc>().add(
                TaskEvent.addData(text: value),
              ),
        ),
      );
}
