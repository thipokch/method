part of 'entry_edit_diverge_view.dart';

class EntryEditDivergeSliver extends StatelessWidget {
  const EntryEditDivergeSliver({super.key});

  @override
  Widget build(BuildContext context) => throw UnimplementedError();
}

class EntryEditDivergeCardSliver extends StatelessWidget {
  const EntryEditDivergeCardSliver({super.key});

  @override
  Widget build(BuildContext context) =>
      EntryEditDivergeSelector<EntryDefinitionList?>(
        selector: (state) => state.definitions?.map.entries.toBuiltList(),
        builder: (context, state) => state == null
            ? const SliverFillRemaining(child: CupertinoActivityIndicator())
            : SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => DefinitionEditCardView(
                    key: ValueKey(state[index].key.id),
                    taskDefinition: state[index].key,
                    entryDefinition: state[index].value.orNull,
                    onTap: () => context
                        .read<EntryEditDivergeBloc>()
                        .add(EntryEditDivergeEvent.selectNote(index: index)),
                    onChanged: (value) => context
                        .read<EntryEditDivergeBloc>()
                        .add(EntryEditDivergeEvent.updateNote(
                            index: index, text: value)),
                    isSelected: state[index].value.isPresent,
                    isStatic: false,
                  ),
                  childCount: state.length,
                  semanticIndexOffset: 3,
                ),
              ),
      );
}
