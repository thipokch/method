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

  @override
  Widget build(BuildContext context) => MtAppPage(
        // name: "",
        // description: "",
        name: task.name,
        description: task.description,
        implyLeading: false,
        slivers: [
          SliverSafeArea(
            top: false,
            sliver: SliverPadding(
              padding: const EdgeInsets.all(ElementScale.spaceM),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: length,
                  (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: DefinitionCardEdit.expand(
                      taskDefinition: taskAt(index),
                      entryDefinition: entryAt(index),
                      onTap: () => onNoteTap(definitionAt(index)),
                      onChanged: (_) => onNoteChange(definitionAt(index), _),
                      // onTap: () => bloc
                      //   ..add(EntryEvent.updateData(
                      //     definition: EntryDefinition.note(
                      //       data: "",
                      //       hierarchyPath: taskDefinition.hierarchyPath,
                      //       id: taskDefinition.id,
                      //     ),
                      //   )),
                      // onChanged: (value) => bloc
                      //   ..add(EntryEvent.updateData(
                      //     definition: EntryDefinition.note(
                      //       data: value,
                      //       hierarchyPath: taskDefinition.hierarchyPath,
                      //       id: taskDefinition.id,
                      //     ),
                      //   )),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
}
