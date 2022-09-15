part of 'task_editor.dart';

class TaskEditorConverge extends StatelessWidget {
  const TaskEditorConverge({
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
        controller: scrollController,
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraint.maxHeight),
          child: IntrinsicHeight(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    autofocus: true,
                    style: textTheme.bodyLarge,
                    expands: true,
                    maxLines: null,
                    cursorColor: colorScheme.primary,
                    decoration: const InputDecoration(
                      hintText: 'Start Writing...',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(
                        ElementScale.spaceM,
                      ),
                    ),
                  ),
                ),
                ...task.definitions
                    .map<Widget?>(
                      (e) => e.whenOrNull(
                        label: ((name, description, hierarchyPath, id, uuid) =>
                                ChipEmoji(emoji: task.icon, selected: false)
                            // MethodCard(
                            //   title: name,
                            //   description: description,
                            //   emoji: task.icon,
                            //   isExpanded: false,
                            //   // onTap: () {},
                            // )
                            ),
                      ),
                    )
                    .whereType<Widget>()
                    .toList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
