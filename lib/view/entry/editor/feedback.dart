part of '../entry_editor.dart';

class EntryEditorFeedback extends StatelessWidget {
  const EntryEditorFeedback({
    Key? key,
    required this.textTheme,
    required this.colorScheme,
  }) : super(key: key);

  final TextTheme textTheme;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<EntryBloc>();
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
                        disabledBackgroundColor:
                            colorScheme.onSurface.withOpacity(0.12),
                      ),
                      padding: const EdgeInsets.all(ElementScale.spaceM),
                      onPressed: null,
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
                      padding: const EdgeInsets.only(top: ElementScale.spaceS),
                      child: Text(
                        name.toLowerCase(),
                        style: textTheme.labelSmall!.copyWith(
                          color: colorScheme.onSurfaceVariant,
                          letterSpacing: 0.125,
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        )
        .whereType<Widget>()
        .toList();

    return EntryEditorScaffold(
      title: task.name,
      description: task.description,
      slivers: [
        SliverSafeArea(
          top: false,
          sliver: SliverPadding(
            padding: const EdgeInsets.all(ElementScale.spaceM),
            sliver: SliverGrid.count(
              crossAxisCount: 3,
              children: labels,
            ),
          ),
        ),
      ],
    );
  }
}
