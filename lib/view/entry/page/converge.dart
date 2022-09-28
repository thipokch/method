part of '../entry_editor.dart';

class EntryEditorConverge extends StatelessWidget with EntryEditor {
  const EntryEditorConverge({
    super.key,
    required this.bloc,
  });

  @override
  final EntryBloc bloc;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final note = taskDefinitions.first;
    assert(note.maybeMap(note: (_) => true, orElse: () => false));

    final labels = task.definitions
        .map<Widget?>(
          (e) => e.mapOrNull(
            label: (taskDef) => DefinitionLabel(
              bloc: bloc,
              taskDefinition: taskDef,
              entryDefinition: mappedDefinitions?[e.id],
              onPressed: () => bloc
                ..add(EntryEvent.updateData(
                  definition: EntryDefinition.label(
                    hierarchyPath: taskDef.hierarchyPath,
                    id: taskDef.id,
                  ),
                )),
            ),
          ),
        )
        .whereType<Widget>()
        .toList();

    return EntryEditorScaffold(
      title: note.name,
      description: note.description,
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
                    onChanged: (value) => bloc
                      ..add(EntryEvent.updateData(
                        definition: EntryDefinition.note(
                          data: value,
                          hierarchyPath: note.hierarchyPath,
                          id: note.id,
                        ),
                      )),
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
