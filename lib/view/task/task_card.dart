part of 'task_widget.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    Key? key,
  }) : super(key: key);

  static Widget create({
    required Task task,
  }) =>
      _TaskWidget(
        task: task,
        child: const TaskCard(),
      );

  @override
  Widget build(BuildContext context) => BlocBuilder<TaskBloc, TaskState>(
        builder: (context, state) {
          final task = context.read<TaskBloc>().state.task;

          return MethodCard(
            title: task.name,
            description: task.description,
            emoji: task.icon,
            // isExpanded: false,
            // onTap: () {},
          );
        },
      );
}
