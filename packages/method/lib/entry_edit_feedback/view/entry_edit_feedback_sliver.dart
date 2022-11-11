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
            state.definitions?.map.entries.toBuiltList().sublist(0, 3),
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
                        .add(EntryEditFeedbackEvent.selectRating(
                          command: labels[index].key,
                        )),
                    isSelected: labels[index].value.isPresent,
                  ),
                  childCount: labels.length,
                ),
              ),
      );
}

class EntryEditFeedbackTopicSliver extends StatelessWidget {
  const EntryEditFeedbackTopicSliver({super.key});

  @override
  Widget build(BuildContext context) => SliverToBoxAdapter(
        child: EntryEditFeedbackSelector<bool>(
          selector: (state) => state.definitions?.isNotEmpty ?? false,
          builder: (context, state) => AnimatedOpacity(
            opacity: state ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 300),
            curve: ElementMotion.easeInSine,
            child: Column(
              children: [
                EntryEditFeedbackSelector<String>(
                  selector: (state) =>
                      state.definitions?.commands[3].name ?? "",
                  builder: (context, state) => Text(state),
                ),
                EntryEditFeedbackSelector<EntryDefinitionList?>(
                  selector: (state) =>
                      state.definitions?.map.entries.toBuiltList().sublist(4),
                  builder: (context, labels) => Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 6.0,
                    children: labels
                            ?.map<Widget>(
                              (_) => ChoiceChip(
                                label: Text(_.key.name),
                                selected: _.value.isPresent,
                                onSelected: (s) => context
                                    .read<EntryEditFeedbackBloc>()
                                    .add(EntryEditFeedbackEvent.selectTopic(
                                      command: _.key,
                                    )),
                              ),
                            )
                            .toList() ??
                        const [],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}

class EntryEditFeedbackNoteSliver extends StatelessWidget {
  const EntryEditFeedbackNoteSliver({super.key});

  @override
  Widget build(BuildContext context) => SliverToBoxAdapter(
        child: EntryEditFeedbackSelector<bool>(
          selector: (state) => state.definitions?.isNotEmpty ?? false,
          builder: (context, state) => AnimatedOpacity(
            opacity: state ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 300),
            curve: ElementMotion.easeInSine,
            child: SizedBox(
              height: 150,
              child: EntryEditFeedbackSelector<String?>(
                selector: (state) => state.definitions?.entries
                    .where((p0) => p0.value.isPresent)
                    .map<String>((e) => e.key.description)
                    .skip(1)
                    .take(3)
                    .followedBy(["..."]).join("  "),
                builder: (context, state) => TextBox(
                  hintText: state,
                ),
              ),
            ),
          ),
        ),
      );
}
