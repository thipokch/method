part of 'task_editor.dart';

class TaskEditorDiverge extends StatelessWidget {
  const TaskEditorDiverge({
    Key? key,
    required this.textTheme,
    required this.colorScheme,
  }) : super(key: key);

  final TextTheme textTheme;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TaskBloc>();
    final task = bloc.state.task;

    final definitions = task.definitions
        .map<TaskDefinition?>((e) => e.mapOrNull(note: (_) => _))
        .whereType<TaskDefinition>()
        .toList();

    return TaskEditorScaffold(
      title: task.name,
      description: task.description,
      slivers: [
        SliverSafeArea(
          top: false,
          sliver: SliverPadding(
            padding: const EdgeInsets.all(ElementScale.spaceM),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: definitions.length,
                (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: MethodCard(
                    title: definitions[index].name,
                    description: definitions[index].description,
                    emoji: definitions[index].icon,
                    // isExpanded: false,
                    // onTap: () {},
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
