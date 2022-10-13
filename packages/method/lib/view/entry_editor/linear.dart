part of 'entry_editor.dart';

class EntryEditorLinear extends StatelessWidget with EntryDefinitionConsumer {
  const EntryEditorLinear({
    super.key,
    required this.bloc,
  });

  @override
  final EntryBloc bloc;

  @override
  Widget build(BuildContext context) {
    final note = taskDefinitions.first;

    final notes = List.generate(entryDefinitions?.length ?? 0, (_) => _)
        .map<Widget>((index) {
      final entryDef = entryDefinitions?.elementAtOrNull(index);

      return SliverToBoxAdapter(
        child: DefinitionCard(
          bloc: bloc,
          taskDefinition: note,
          entryDefinition: entryDef,
          onChanged: (value) => entryDef == null
              ? bloc.add(EntryEvent.addData(
                  definition: EntryDefinition.note(
                    data: value,
                    hierarchyPath: note.hierarchyPath,
                    id: note.id,
                  ),
                ))
              : bloc.add(EntryEvent.updateData(
                  definition: EntryDefinition.note(
                    data: value,
                    hierarchyPath: note.hierarchyPath,
                    id: note.id,
                  ),
                )),
          showMeta: false,
          isStatic: true,
        ),
      );
    }).toList();

    return MtAppPage(
      name: note.name,
      description: note.description,
      implyLeading: false,
      // name: task.name,
      // description: task.description,
      slivers: notes,
    );
  }
}
