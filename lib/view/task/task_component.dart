import 'package:component/task/task_bloc.dart';
import 'package:core/model/entry.dart';
import 'package:core/model/task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matter/card/card.dart';

class TaskComponent extends StatefulWidget {
  final Task task;
  final Entry? entry;

  const TaskComponent({
    Key? key,
    required this.task,
    this.entry,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => TaskComponentState();
}

class TaskComponentState extends State<TaskComponent> {
  bool focused = false;
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    // controller.addListener(onTextEditEvent);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) {
          final bloc = TaskBloc(task: widget.task);

          if (widget.entry != null) {
            bloc.add(TaskEvent.loadEntry(entry: widget.entry!));
          }

          return bloc;
        },
        child: BlocBuilder<TaskBloc, TaskState>(
          builder: (context, state) {
            final task = context.read<TaskBloc>().state.task;

            return MethodCard(
              title: task.name,
              description: task.description,
              emoji: task.icon,
              isExpanded: false,
              // onTap: () {},
            );
          },
        ),
      );
}
