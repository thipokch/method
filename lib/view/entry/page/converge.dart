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
    final note = taskDefinitions.first;

    // if (mappedDefinitions?[taskDefinitions.first] == null) {
    //   bloc.add(EntryEvent.updateData(
    //     definition: EntryDefinition.note(
    //       data: "",
    //       hierarchyPath: note.hierarchyPath,
    //       id: note.id,
    //     ),
    //   ));
    // }
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
              child: DefinitionCard(
                key: ValueKey(
                  mappedDefinitions?[note.id]?.id ?? ValueKey(note.uuid),
                ),
                bloc: bloc,
                taskDefinition: note,
                entryDefinition: mappedDefinitions?[note.id],
                onChanged: (value) => bloc
                  ..add(EntryEvent.updateData(
                    definition: EntryDefinition.note(
                      data: value,
                      hierarchyPath: note.hierarchyPath,
                      id: note.id,
                    ),
                  )),
                isSelected: true,
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
