part of 'component.dart';

class _Page extends StatelessWidget with EntryEditVariant {
  @override
  final Entry entry;

  final void Function(Definition definition) onLabelTap;

  const _Page({
    required this.entry,
    required this.onLabelTap,
  });

  @override
  Widget build(BuildContext context) {
    final labels = entry.mappedDefinition.entries
        .map<Widget>(
          (_) => DefinitionLabelEdit.view(
            taskDefinition: _.task,
            entryDefinition: _.entry,
            onTap: () => onLabelTap(_),
          ),
        )
        .toList();

    return MtAppPage(
      name: task.name,
      description: task.description,
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
