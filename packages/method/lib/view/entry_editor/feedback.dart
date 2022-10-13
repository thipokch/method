part of 'entry_editor.dart';

class EntryEditorFeedback extends StatelessWidget with EntryDefinitionConsumer {
  const EntryEditorFeedback({
    super.key,
    required this.bloc,
  });

  @override
  final EntryBloc bloc;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<EntryBloc>();
    final state = bloc.state;

    final labels = List.generate(taskDefinitions.length, (_) => _)
        .map<Widget?>(
          (index) {
            final taskDef = taskDefinitions[index];
            final entryDef = entryDefinitions?.elementAtOrNull(index);

            return DefinitionLabel(
              bloc: bloc,
              taskDefinition: taskDef,
              entryDefinition: entryDef,
              onPressed: () {
                bloc.add(const EntryEvent.clearData());
                if (entryDef == null) {
                  bloc.add(EntryEvent.updateData(
                    definition: EntryDefinition.label(
                      hierarchyPath: taskDef.hierarchyPath,
                      id: taskDef.id,
                    ),
                  ));
                }
              },
            );
          },
        )
        .whereType<Widget>()
        .toList();

    return MtAppPage(
      name: state.task.name,
      description: state.task.description,
      implyLeading: false,
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
