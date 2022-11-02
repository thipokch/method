part of 'entry_detail_view.dart';

class EntryDetailSliver extends StatelessWidget {
  const EntryDetailSliver({super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const Divider(),
          EntryDetailSelector<Task?>(
            selector: (state) => state.task,
            builder: (context, state) => ListTile(
              leading: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
                child: SizedBox(
                  width: 24,
                  height: 24,
                  child: state != null ? MtEmoji(emoji: state.icon) : null,
                ),
              ),
              title: Text(state?.description ?? ""),
            ),
          ),
          EntryDetailSelector<BuiltList<EntryDefinitionNote>?>(
            selector: (state) => state.entry?.notes,
            builder: (context, state) => state == null || state.isEmpty
                ? const SizedBox()
                : SizedBox(
                    height: 350,
                    child: MtCard(body: Text(state.first.data)),
                  ),
          ),
          EntryDetailSelector<BuiltList<TaskDefinitionLabel>?>(
            selector: (state) => state.entry?.labels,
            builder: (context, state) => state == null
                ? const CupertinoActivityIndicator()
                : Wrap(
                    children: state
                        .map<Widget>((e) => Chip(
                              label: Text(e.name),
                              labelStyle:
                                  Theme.of(context).textTheme.labelMedium,
                              avatar: MtEmoji(emoji: e.icon),
                              padding: const EdgeInsets.fromLTRB(10, 6, 5, 6),
                              backgroundColor:
                                  Theme.of(context).colorScheme.surface,
                              shape: const SmoothRectangleBorder(
                                borderRadius: SmoothBorderRadius.all(
                                  SmoothRadius(
                                    cornerRadius: ElementScale.cornerLarge,
                                    cornerSmoothing:
                                        ElementScale.cornerSmoothFactor,
                                  ),
                                ),
                              ),
                            ))
                        .toList(),
                  ),
          ),
        ],
      );
}
