part of 'session_widget.dart';

class SessionPage extends StatelessWidget {
  const SessionPage({super.key});

  static Widget create({
    required Exercise exercise,
    Session? session,
  }) =>
      _SessionWidget(
        exercise: exercise,
        session: session,
        theme: null,
        child: const SessionPage(),
      );

  static Route route({
    // required SessionBloc bloc,
    required Exercise exercise,
    Session? session,
    ThemeData? theme,
  }) =>
      ModalBottomSheetRoute(
        expanded: true,
        builder: (context) => _SessionWidget(
          theme: theme,
          exercise: exercise,
          session: session,
          child: const SessionPage(),
        ),
      );

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<SessionBloc, SessionState>(builder: (context, state) {
        // final bloc = context.read<SessionBloc>();
        final exercise = state.exercise;
        final definitions = exercise.definitions;
        final themeData = Theme.of(context);

        return Hero(
          tag: exercise.name,
          child: Theme(
            data: themeData,
            child: MtArtPage(
              name: exercise.name,
              description: exercise.description,
              cta: "Start",
              onCtaPressed: () => Navigator.of(context).push(
                SessionEditor.route(
                  exercise: exercise,
                  theme: themeData,
                ),
              ),
              slivers: [
                SliverSafeArea(
                  top: false,
                  sliver: SliverPadding(
                    padding: const EdgeInsets.all(ElementScale.spaceM),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: definitions.length - 1,
                        (context, index) => Material(
                          type: MaterialType.transparency,
                          child: TaskTile.create(task: definitions[index]),
                        ),
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SessionListV.createByExercise(
                    // repo: repo,
                    exercise: exercise,
                  ),
                ),
              ],
            ),
          ),
        );
      });
}