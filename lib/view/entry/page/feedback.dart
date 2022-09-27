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
    final state = bloc.state;

    final mappedDefinitions = bloc.state.whenOrNull(
      entryLoaded: (task, entry) => entry.mappedDefinitions,
    );

    List<Widget> labels = state.task.definitions
        .map<Widget?>(
          (e) => e.mapOrNull(
            label: (taskDef) => DefinitionLabel(
              taskDef: taskDef,
              entryDef: mappedDefinitions?[e],
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

    return EntryEditorScaffold(
      title: state.task.name,
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
