part of '../entry_editor.dart';

class EntryEditorConverge extends StatelessWidget {
  const EntryEditorConverge({
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
    final prompt = task.definitions.first;
    assert(prompt.maybeMap(note: (_) => true, orElse: () => false));

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
                      // onPressed: null,
                      onPressed: (() {
                        bloc.add(EntryEvent.updateData(
                          definition: EntryDefinition.label(
                            hierarchyPath: hierarchyPath,
                            id: id,
                          ),
                        ));
                      }),
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
      title: prompt.name,
      description: prompt.description,
      slivers: [
        SliverToBoxAdapter(
          child: AspectRatio(
            aspectRatio: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 1,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: const SmoothRectangleBorder(
                  borderRadius: SmoothBorderRadius.all(
                    SmoothRadius(
                      cornerRadius: ElementScale.cornerLarge,
                      cornerSmoothing: ElementScale.cornerSmoothFactor,
                    ),
                  ),
                ),
                child: InkWell(
                  child: TextField(
                    textAlign: TextAlign.center,
                    textAlignVertical: TextAlignVertical.center,
                    style: textTheme.bodyLarge,
                    expands: true,
                    maxLines: null,
                    decoration: const InputDecoration(
                      hintText: 'Start Writing...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
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
