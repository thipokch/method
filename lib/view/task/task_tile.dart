part of 'task_widget.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  static Widget create({
    required Task task,
  }) =>
      _TaskWidget(
        task: task,
        child: const TaskTile(),
      );

  @override
  Widget build(BuildContext context) => BlocBuilder<TaskBloc, TaskState>(
        builder: (context, state) {
          final task = context.read<TaskBloc>().state.task;

          return ListTile(
            title: Text(task.name),
            subtitle: Text(task.description),
            leading: Twemoji(
              emoji: task.icon,
              twemojiFormat: TwemojiFormat.webp,
            ),
            // isExpanded: false,
            // onTap: () {},
          );
        },
      );
}
