part of 'component.dart';

class _Page extends StatelessWidget with EntryEditVariant {
  @override
  final Entry entry;

  final void Function(Definition definition) onNoteTap;
  final void Function(Definition definition, String value) onNoteChange;

  const _Page({
    required this.entry,
    required this.onNoteTap,
    required this.onNoteChange,
  });

  TaskDefinition get note => taskAt(0);

  @override
  Widget build(BuildContext context) {
    final notes = definitions
        .map<Widget>((_) => SliverToBoxAdapter(
              child: DefinitionCardEdit.expand(
                taskDefinition: note,
                entryDefinition: _.entry,

                onTap: () => onNoteTap(_),
                onChanged: (value) => onNoteChange(_, value),
                // showMeta: false,
                // isStatic: true,
              ),
            ))
        .toList();

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
