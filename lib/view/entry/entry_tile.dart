part of 'entry_widget.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  static Widget create({
    required Task task,
    Entry? entry,
  }) =>
      _EntryWidget(
        task: task,
        entry: entry,
        child: const TaskTile(),
      );

  @override
  Widget build(BuildContext context) => BlocBuilder<EntryBloc, EntryState>(
        builder: (context, state) {
          final task = context.read<EntryBloc>().state.task;

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
