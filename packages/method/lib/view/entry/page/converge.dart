part of '../entry_editor.dart';

class EntryEditorConverge extends StatelessWidget with EntryDefinitionConsumer {
  const EntryEditorConverge({
    super.key,
    required this.bloc,
  });

  @override
  final EntryBloc bloc;

  @override
  Widget build(BuildContext context) {
    final note = taskDefinitions.first;

    // final labels = task.definitions
    //     .map<Widget?>(
    //       (e) => e.mapOrNull(
    //         label: (taskDef) => DefinitionLabel(
    //           bloc: bloc,
    //           taskDefinition: taskDef,
    //           entryDefinition: mappedDefinitions?[e.id],
    //           onPressed: () => mappedDefinitions?.containsKey(e.id) ?? false
    //               ? bloc.add(EntryEvent.deleteData(
    //                   definition: EntryDefinition.label(
    //                     hierarchyPath: taskDef.hierarchyPath,
    //                     id: taskDef.id,
    //                   ),
    //                 ))
    //               : bloc.add(EntryEvent.updateData(
    //                   definition: EntryDefinition.label(
    //                     hierarchyPath: taskDef.hierarchyPath,
    //                     id: taskDef.id,
    //                   ),
    //                 )),
    //         ),
    //       ),
    //     )
    //     .whereType<Widget>()
    //     .toList();

    final labels = List.generate(task.definitions.length - 1, (_) => _ + 1)
        .map<Widget?>(
          (index) {
            final taskDef = taskDefinitions[index];
            final entryDef = entryDefinitions?.elementAtOrNull(index);

            return DefinitionLabel(
              bloc: bloc,
              taskDefinition: taskDef,
              entryDefinition: entryDef,
              onPressed: () => entryDef == null
                  ? bloc.add(EntryEvent.updateData(
                      definition: EntryDefinition.label(
                        hierarchyPath: taskDef.hierarchyPath,
                        id: taskDef.id,
                      ),
                    ))
                  : bloc.add(EntryEvent.deleteData(
                      definition: EntryDefinition.label(
                        hierarchyPath: taskDef.hierarchyPath,
                        id: taskDef.id,
                      ),
                    )),
            );
          },
        )
        .whereType<Widget>()
        .toList();

    return MtAppPage(
      name: note.name,
      description: note.description,
      implyLeading: false,
      slivers: [
        SliverToBoxAdapter(
          child: AspectRatio(
            aspectRatio: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: DefinitionCard(
                // key: ValueKey(
                //   entryDefinitions?.elementAtOrNull(0)?.id,
                // ),
                bloc: bloc,
                taskDefinition: note,
                entryDefinition: entryDefinitions?.elementAtOrNull(0),
                onChanged: (value) => bloc
                  ..add(EntryEvent.updateData(
                    definition: EntryDefinition.note(
                      data: value,
                      hierarchyPath: note.hierarchyPath,
                      id: note.id,
                    ),
                  )),
                showMeta: false,
                isStatic: true,
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
