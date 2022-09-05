import 'package:component/task/task_bloc.dart';
import 'package:core/model/entry.dart';
import 'package:core/model/task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matter/button/button_tonal.dart';
import 'package:method/view/task/task_editor.dart';

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
          builder: (context, state) => ButtonTonal(
            child: Text(context.read<TaskBloc>().state.task.name),
            onPressed: () {
              final bloc = context.read<TaskBloc>();

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => BlocProvider.value(
                    value: bloc,
                    child: const TaskEditor(),
                  ),
                ),
              );

              bloc.add(
                TaskEvent.loadEntry(
                  entry: Entry.create(
                    template: bloc.state.task,
                    collectionSlug: "collectionSlug",
                    hierarchyPath: "hierarchyPath",
                    id: "id",
                  ),
                ),
              );
            },
          ),
        ),
      );
}
