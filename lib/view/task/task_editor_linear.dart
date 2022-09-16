part of 'task_editor.dart';

class TaskEditorLinear extends StatelessWidget {
  const TaskEditorLinear({
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

    return TaskEditorScaffold(
      title: task.name,
      description: task.description,
      child: LayoutBuilder(
        builder: (context, constraint) => SingleChildScrollView(
          controller: scrollController,
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraint.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      autofocus: false,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
