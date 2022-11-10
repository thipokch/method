part of 'entry_edit_linear_view.dart';

class EntryEditLinearSliver extends StatelessWidget {
  const EntryEditLinearSliver({super.key});

  @override
  Widget build(BuildContext context) => throw UnimplementedError();
}

class EntryEditDivergeCardSliver extends StatelessWidget {
  const EntryEditDivergeCardSliver({super.key});

  @override
  Widget build(BuildContext context) =>
      EntryEditLinearSelector<EntryEditLinearViewModel?>(
        selector: (state) => state.definitions != null
            ? EntryEditLinearViewModel(
                command: state.definitions!.commands.first,
                data: state.definitions!.expandedData,
              )
            : null,
        builder: (context, state) => state == null
            ? const SliverFillRemaining(child: CupertinoActivityIndicator())
            : SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => DefinitionEditCardView(
                    taskDefinition: state.command,
                    entryDefinition: index == state.data.length
                        ? EntryDefinition.from(template: state.command)
                        : state.data[index],
                    // onTap: () => context
                    //     .read<EntryEditDivergeBloc>()
                    //     .add(EntryEditDivergeEvent.selectNote(index: index)),
                    onChanged: (value) => index == state.data.length
                        ? context
                            .read<EntryEditLinearBloc>()
                            .add(EntryEditLinearEvent.addNote(
                              text: value,
                            ))
                        : context
                            .read<EntryEditLinearBloc>()
                            .add(EntryEditLinearEvent.updateNote(
                              index: index,
                              text: value,
                            )),
                    isSelected: true,
                    isStatic: true,
                    autoFocus: false,
                  ),
                  childCount: state.data.length + 1,
                  semanticIndexOffset: 3,
                ),
              ),
      );
}
