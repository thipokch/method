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

    final mappedDefinitions = bloc.state.whenOrNull(
      entryLoaded: (task, entry) => entry.mappedDefinitions,
    );

    final labels = task.definitions
        .map<Widget?>(
          (e) => e.mapOrNull(
            label: (taskDef) => DefinitionLabel(
              taskDef: taskDef,
              entryDef: mappedDefinitions?[e],
            ),
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
