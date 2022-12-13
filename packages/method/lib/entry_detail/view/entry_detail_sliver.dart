part of 'entry_detail_view.dart';

class EntryDetailSliver extends StatelessWidget {
  const EntryDetailSliver({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EntryDetailSelector<Task?>(
            selector: (state) => state.task,
            builder: (context, state) => Padding(
              padding: const EdgeInsets.only(
                top: 24,
                left: 8,
                right: 8,
              ),
              child: ListTile(
                // leading: CircleAvatar(
                //   backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
                //   child: SizedBox(
                //     width: 24,
                //     height: 24,
                //     child: state != null ? MtEmoji(emoji: state.icon) : null,
                //   ),
                // ),
                title: Text(state?.description ?? ""),
              ),
            ),
          ),
          //
          EntryDetailSelector<BuiltList<EntryDefinitionNote>?>(
            selector: (state) => state.entry?.notes,
            builder: (context, state) => state == null || state.isEmpty
                ? const SizedBox()
                : Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 16.0,
                    ),
                    child: Column(
                      children: state
                          .map((_) => Row(
                                children: [
                                  Expanded(
                                    child: Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(_.data),
                                      ),
                                    ),
                                  ),
                                ],
                              ))
                          .toList(),
                    ),
                  ),
          ),

          EntryDetailSelector<BuiltList<TaskDefinitionLabel>?>(
            selector: (state) => state.entry?.labels,
            builder: (context, state) => state == null
                ? const CupertinoActivityIndicator()
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Wrap(
                      // alignment: WrapAlignment.start,
                      // crossAxisAlignment: WrapCrossAlignment.start,
                      // spacing: 10.0,
                      children: state
                          .map<Widget>((e) => Chip(
                                label: Text(e.name),
                                labelStyle: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface,
                                    ),
                                avatar: MtEmoji(emoji: e.icon),
                                padding: const EdgeInsets.fromLTRB(6, 6, 5, 6),
                                backgroundColor:
                                    Theme.of(context).colorScheme.surface,
                                // shape: const SmoothRectangleBorder(
                                //   borderRadius: SmoothBorderRadius.all(
                                //     SmoothRadius(
                                //       cornerRadius: MtCorner.Large,
                                //       cornerSmoothing:
                                //           MtCorner.SmoothFactor,
                                //     ),
                                //   ),
                                // ),
                              ))
                          .toList(),
                    ),
                  ),
          ),

          //
        ],
      );
}
