part of 'task_editor.dart';

class TaskEditorDiverge extends StatelessWidget {
  const TaskEditorDiverge({
    Key? key,
    required this.scrollController,
    required this.textTheme,
    required this.colorScheme,
  }) : super(key: key);

  final ScrollController scrollController;
  final TextTheme textTheme;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TaskBloc>();
    final task = bloc.state.task;

    return LayoutBuilder(
      builder: (context, constraint) => SingleChildScrollView(
        // controller: scrollController,
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraint.maxHeight),
          child: IntrinsicHeight(
            child: Padding(
              padding: const EdgeInsets.all(ElementScale.spaceM),
              child: Column(
                children: task.definitions
                    .map<Widget?>(
                      (e) => e.whenOrNull(
                        note: ((
                          icon,
                          name,
                          description,
                          hierarchyPath,
                          id,
                          uuid,
                        ) =>
                            MethodCard(
                              title: name,
                              description: description,
                              emoji: icon,
                              isExpanded: false,
                              // onTap: () {},
                            )),
                      ),
                    )
                    .whereType<Widget>()
                    .toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
