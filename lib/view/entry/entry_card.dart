part of 'entry_widget.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    Key? key,
  }) : super(key: key);

  static Widget create({
    required Task task,
    Entry? entry,
  }) =>
      _EntryWidget(
        task: task,
        entry: entry,
        child: const TaskCard(),
      );

  @override
  Widget build(BuildContext context) => BlocBuilder<EntryBloc, EntryState>(
        builder: (context, state) {
          final task = context.read<EntryBloc>().state.task;

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
