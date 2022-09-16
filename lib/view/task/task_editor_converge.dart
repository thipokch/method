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

    final labels = task.definitions
        .map<Widget?>(
          (e) => e.whenOrNull(
            label: ((icon, name, description, hierarchyPath, id, uuid) =>
                    Column(
                      children: [
                        IconButton(
                          iconSize: 36.0,

                          style: IconButton.styleFrom(
                            backgroundColor: colorScheme.surfaceVariant,
                          ),
                          padding: const EdgeInsets.all(ElementScale.spaceM),
                          // ignore: no-empty-block
                          onPressed: () {},
                          color: colorScheme.primaryContainer,
                          icon: SizedBox(
                            height: 36.0,
                            width: 36.0,
                            child: Twemoji(
                              emoji: icon,
                              twemojiFormat: TwemojiFormat.webp,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: ElementScale.spaceS),
                          child: Text(
                            name.toLowerCase(),
                            style: textTheme.labelSmall!.copyWith(
                              color: colorScheme.onSurfaceVariant,
                              letterSpacing: 0.125,
                            ),
                          ),
                        ),
                      ],
                    )
                // ChipEmoji(emoji: icon, selected: false)
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
        .toList();

    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        children: <Widget>[
          TextField(
            autofocus: false,
            style: textTheme.bodyLarge,
            minLines: 4,
            // expands: true,
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
          GridView.count(
            controller: scrollController,
            padding: const EdgeInsets.all(ElementScale.spaceM),
            shrinkWrap: true,
            crossAxisCount: 3,
            children: labels,
          ),
        ],
      ),
    );
  }
}
