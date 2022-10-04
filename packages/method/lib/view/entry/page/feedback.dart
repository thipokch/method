part of '../entry_editor.dart';

class EntryEditorFeedback extends StatelessWidget with EntryEditor {
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

    List<Widget> labels = state.task.definitions
        .map<Widget?>(
          (e) => e.mapOrNull(
            label: (taskDef) => DefinitionLabel(
              bloc: bloc,
              taskDefinition: taskDef,
              entryDefinition: mappedDefinitions?[e.id],
              onPressed: () => bloc
                ..add(const EntryEvent.clearData())
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

    return MtTitlePage(
      name: state.task.name,
      description: state.task.description,
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
