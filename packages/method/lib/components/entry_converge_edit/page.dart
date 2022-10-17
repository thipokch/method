part of 'component.dart';

class _Page extends StatelessWidget with EntryEditVariant {
  @override
  final Entry entry;
  final void Function(Definition definition) onLabelTap;
  final void Function(Definition definition, String value) onNoteChange;

  const _Page({
    required this.entry,
    required this.onLabelTap,
    required this.onNoteChange,
  });

  TaskDefinition get note => taskAt(0);

  @override
  Widget build(BuildContext context) {
    late final labels = definitions
        .sublist(1)
        .map<Widget>(
          (_) => DefinitionLabelEdit.view(
            taskDefinition: _.task,
            entryDefinition: _.entry,
            onTap: () => onLabelTap(_),
          ),
        )
        .toList();

    return MtAppPage(
      name: taskDefinitions.first.name,
      description: taskDefinitions.first.description,
      implyLeading: false,
      slivers: [
        SliverToBoxAdapter(
          child: DefinitionCardEdit.basic(
            taskDefinition: note,
            entryDefinition: entryAt(0),
            onChanged: (value) => onNoteChange(definitionAt(0), value),
            // showMeta: false,
            // isStatic: true,
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
