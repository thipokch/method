part of 'entry_edit_feedback_view.dart';

class EntryEditFeedbackSliver extends StatelessWidget {
  const EntryEditFeedbackSliver({super.key});

  @override
  Widget build(BuildContext context) => throw UnimplementedError();
}

class EntryEditFeedbackLabelSliver extends StatelessWidget {
  const EntryEditFeedbackLabelSliver({super.key});

  @override
  Widget build(BuildContext context) =>
      EntryEditFeedbackSelector<EntryDefinitionList?>(
        selector: (state) =>
            state.entry?.builtDefinition.map.entries.toBuiltList(),
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
                        .read<EntryEditFeedbackBloc>()
                        .add(EntryEditFeedbackEvent.selectRating(index: index)),
                    isSelected: labels[index].value.isPresent,
                  ),
                  childCount: labels.length,
                ),
              ),
      );
}
