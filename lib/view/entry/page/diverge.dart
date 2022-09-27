part of '../entry_editor.dart';

class EntryEditorDiverge extends StatelessWidget {
  const EntryEditorDiverge({
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

    final definitions = task.definitions
        .map<TaskDefinition?>((e) => e.mapOrNull(note: (_) => _))
        .whereType<TaskDefinition>()
        .toList();

    return EntryEditorScaffold(
      title: task.name,
      description: task.description,
      slivers: [
        SliverSafeArea(
          top: false,
          sliver: SliverPadding(
            padding: const EdgeInsets.all(ElementScale.spaceM),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: definitions.length,
                (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: DefinitionCard(
                    taskDef: definitions[index],
                    onTap: () => bloc
                      ..add(EntryEvent.updateData(
                        definition: EntryDefinition.note(
                          data: "",
                          hierarchyPath: definitions[index].hierarchyPath,
                          id: definitions[index].id,
                        ),
                      )),
                    onChanged: (value) => bloc
                      ..add(EntryEvent.updateData(
                        definition: EntryDefinition.note(
                          data: value,
                          hierarchyPath: definitions[index].hierarchyPath,
                          id: definitions[index].id,
                        ),
                      )),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
