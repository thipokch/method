part of 'session_list_view.dart';

class SessionListSliver extends StatelessWidget {
  const SessionListSliver({super.key});

  @override
  Widget build(BuildContext context) => SessionListBuilder(
        builder: (context, state) => state.maybeWhen(
          orElse: () =>
              const SliverFillRemaining(child: CupertinoActivityIndicator()),
          started: (sessions) => SliverGroupedListView<Session, DateTime>(
            elements: sessions,
            groupBy: (element) => DateTime(
              element.createdAt.year,
              element.createdAt.month,
            ),
            groupSeparatorBuilder: (value) => Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 84,
                // vertical: 24,
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
                    padding: const EdgeInsets.all(8.0),
                    width: 64,
                    // height: 48,
                    child: hasMarker
                        ? Column(
                            children: [
                              Text(
                                DateFormat.E()
                                    .format(element.createdAt)
                                    .toUpperCase(),
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              Text(
                                DateFormat.d()
                                    .format(element.createdAt)
                                    .toUpperCase(),
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ],
                          )
                        : null,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: _Item(
                        session: element,
                        onTap: () => context.read<SessionListBloc>().add(
                              SessionListEvent.selectSession(session: element),
                            ),
                        actions: PopupMenuButton(
                          icon: const Icon(ElementSymbol.moreVertical),
                          position: PopupMenuPosition.under,
                          shape: const SmoothRectangleBorder(
                            borderRadius: SmoothBorderRadius.all(
                              SmoothRadius(
                                cornerRadius: ElementScale.cornerLarge,
                                cornerSmoothing:
                                    ElementScale.cornerSmoothFactor,
                              ),
                            ),
                          ),
                          itemBuilder: (BuildContext context) =>
                              <PopupMenuEntry>[
                            PopupMenuItem(
                              // onTap: () {},
                              onTap: () =>
                                  SessionEditRoute(element.id).push(context),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(right: 8.0),
                                    child: Text('Edit'),
                                  ),
                                  Icon(
                                    ElementSymbol.editFilled,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onBackground,
                                  ),
                                ],
                              ),
                            ),
                            const PopupMenuDivider(),
                            PopupMenuItem(
                              onTap: () => FlutterPlatformAlert.showCustomAlert(
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
                              }),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(right: 8.0),
                                    child: Text('Delete'),
                                  ),
                                  Icon(
                                    ElementSymbol.deleteFilled,
                                    color: Theme.of(context).colorScheme.error,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
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
