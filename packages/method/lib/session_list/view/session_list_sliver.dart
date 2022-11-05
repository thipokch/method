part of 'session_list_view.dart';

class SessionListSliver extends StatelessWidget {
  const SessionListSliver({super.key});

  @override
  Widget build(BuildContext context) => SessionListBuilder(
        builder: (context, state) => state.maybeWhen(
          orElse: () =>
              const SliverFillRemaining(child: CupertinoActivityIndicator()),
          started: (sessions) => SliverGroupedListView<Session, DateTime>(
            order: GroupedListOrder.DESC,
            itemComparator: (element1, element2) =>
                -element1.createdAt.compareTo(element2.createdAt),
            elements: sessions,
            groupBy: (element) => DateTime(
              element.createdAt.year,
              element.createdAt.month,
            ),
            groupSeparatorBuilder: (value) => Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 84,
              ),
              child: DateUtils.isSameMonth(DateTime.now(), value)
                  ? null
                  : Text(
                      DateFormat.MMMM().format(value),
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
            ),
            indexedItemBuilder: (context, element, index) {
              final previousDate = (index > 0)
                  ? DateUtils.dateOnly(sessions[index - 1].createdAt)
                  : null;

              final currentDate = DateUtils.dateOnly(element.createdAt);

              final hasMarker = previousDate != currentDate;

              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12.0),
                    width: 64,
                    child: hasMarker
                        ? Column(
                            children: [
                              Text(
                                DateFormat.E()
                                    .format(element.createdAt)
                                    .toUpperCase(),
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              Text(
                                DateFormat.d()
                                    .format(element.createdAt)
                                    .toUpperCase(),
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          )
                        : null,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: _Item(
                        key: ValueKey(element.id),
                        session: element,
                        onTap: () => context.read<SessionListBloc>().add(
                              SessionListEvent.selectSession(session: element),
                            ),
                        actions: [
                          CupertinoContextMenuAction(
                            onPressed: () {
                              SessionEditRoute(element.id).go(context);
                            },
                            trailingIcon: ElementSymbol.editFilled,
                            child: const Text('Edit'),
                          ),
                          CupertinoContextMenuAction(
                            onPressed: () {
                              Navigator.of(context, rootNavigator: true).pop();
                              FlutterPlatformAlert.showCustomAlert(
                                windowTitle: "Delete ${element.template.name}?",
                                text:
                                    "Deleting ${element.template.name} will also delete its entries.",
                                positiveButtonTitle: "Cancel",
                                negativeButtonTitle: "Delete",
                              ).then((selection) {
                                if (selection == CustomButton.negativeButton) {
                                  context.read<SessionListBloc>().add(
                                        SessionListEvent.deleteSession(
                                          session: element,
                                        ),
                                      );
                                }
                              });
                            },
                            isDestructiveAction: true,
                            trailingIcon: ElementSymbol.deleteFilled,
                            child: const Text('Delete'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      );
}
