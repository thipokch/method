part of 'entry_edit_converge_view.dart';

// class EntryEditConvergeSliver extends StatelessWidget {
//   const EntryEditConvergeSliver({super.key});

//   @override
//   Widget build(BuildContext context) => throw UnimplementedError();
// }

class EntryEditConvergeLabelSliver extends StatelessWidget {
  const EntryEditConvergeLabelSliver({super.key});

  @override
  Widget build(BuildContext context) =>
      EntryEditConvergeSelector<EntryDefinitionList?>(
        selector: (state) =>
            state.definitions?.map.entries.skip(1).toBuiltList(),
        builder: (context, labels) => labels == null
            ? const SliverFillRemaining(child: CupertinoActivityIndicator())
            : SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) => DefinitionEditLabelView(
                    key: ValueKey(labels[index].key.id),
                    taskDefinition: labels[index].key,
                    entryDefinition: labels[index].value.orNull,
                    onTap: () => context
                        .read<EntryEditConvergeBloc>()
                        .add(EntryEditConvergeEvent.selectLabel(index: index)),
                    isSelected: labels[index].value.isPresent,
                  ),
                  childCount: labels.length,
                  semanticIndexOffset: 3,
                ),
              ),
      );
}

class EntryEditConvergeCardSliver extends StatelessWidget {
  const EntryEditConvergeCardSliver({super.key});

  @override
  Widget build(BuildContext context) =>
      EntryEditConvergeSelector<EntryDefinitionPair?>(
        selector: (state) => state.definitions?.map.entries.first,
        builder: (context, pair) => pair == null
            ? const SliverFillRemaining(child: CupertinoActivityIndicator())
            : SliverToBoxAdapter(
                child: DefinitionEditCardView(
                  key: ValueKey(pair.value.orNull?.id ?? pair.key.id),
                  taskDefinition: pair.key,
                  entryDefinition: pair.value.orNull,
                  isSelected: pair.value.isPresent,
                  isStatic: true,
                ),
              ),
      );
}
