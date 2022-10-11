part of 'session_list_widget.dart';

class SessionList extends StatelessWidget {
  const SessionList({super.key});

  static Widget create() => _ExerciseList.create(
        // repo: repo,
        child: const SessionList(),
      );

  static Widget createByExercise({
    // required final Repository repo,
    required final Exercise exercise,
  }) =>
      _ExerciseList.createByExercise(
        // repo: repo,
        exercise: exercise,
        child: const SessionList(),
      );

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<SessionListBloc, SessionListState>(
        builder: (context, state) {
          final colorScheme = Theme.of(context).colorScheme;
          final bloc = context.read<SessionListBloc>();

          return state.when(
            initial: () => const CupertinoActivityIndicator(),
            loaded: (sessions) => Column(
              children: sessions
                  .map((session) => SessionCardPreview(
                        session: session,
                        onTap: () => SessionDetailRoute(session.id).go(context),
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
                              onTap: () => Navigator.of(context).push(
                                SessionEditor.route(
                                  exercise: session.template,
                                  session: session,
                                ),
                              ),
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
                                    color: colorScheme.onBackground,
                                  ),
                                ],
                              ),
                            ),
                            const PopupMenuDivider(),
                            PopupMenuItem(
                              onTap: () => FlutterPlatformAlert.showCustomAlert(
                                windowTitle: "Delete ${session.template.name}?",
                                text:
                                    "Deleting ${session.template.name} will also delete its entries.",
                                positiveButtonTitle: "Cancel",
                                negativeButtonTitle: "Delete",
                              ).then((selection) {
                                if (selection == CustomButton.negativeButton) {
                                  bloc.add(
                                    SessionListEvent.delete(session: session),
                                  );
                                }
                              }),
                              // onTap: () => bloc.add(
                              //   SessionListEvent.delete(session: session),
                              // ),
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
                                    color: colorScheme.error,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ))
                  .toList(),
            ),
          );
        },
      );
}
