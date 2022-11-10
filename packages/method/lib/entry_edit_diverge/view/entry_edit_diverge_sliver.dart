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
                  (context, index) => state[index].key.map(
                        label: (_) =>
                            throw StateError("Label found in Diverge Task"),
                        note: (_) => DefinitionEditCardView(
                          key: ValueKey(state[index].key.id),
                          taskDefinition: state[index].key,
                          entryDefinition: state[index].value.orNull,
                          onTap: () => context.read<EntryEditDivergeBloc>().add(
                                EntryEditDivergeEvent.selectNote(index: index),
                              ),
                          onChanged: (value) => context
                              .read<EntryEditDivergeBloc>()
                              .add(EntryEditDivergeEvent.updateNote(
                                index: index,
                                text: value,
                              )),
                          isSelected: state[index].value.isPresent,
                          isStatic: false,
                          autoFocus: false,
                        ),
                        part: (_) => Padding(
                          padding:
                              const EdgeInsets.only(top: 28.0, bottom: 16.0),
                          child: Text(
                            _.name.toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                  letterSpacing: 1.0,
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).colorScheme.outline,
                                ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                  childCount: state.length,
                  semanticIndexOffset: 3,
                ),
              ),
      );
}
