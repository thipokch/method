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
        child: const SessionPage(),
      );

  static Route route({
    required SessionBloc bloc,
    required ThemeData theme,
  }) =>
      ModalBottomSheetRoute(
        expanded: true,
        builder: (context) => _SessionWidget.from(
          bloc: bloc,
          theme: theme,
          child: const SessionPage(),
        ),
      );

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<SessionBloc, SessionState>(builder: (context, state) {
        final bloc = context.read<SessionBloc>();
        final exercise = bloc.state.exercise;
        final definitions = exercise.definitions;
        final themeData = Theme.of(context);
        final colorScheme = themeData.colorScheme;

        return Hero(
          tag: exercise.name,
          child: Theme(
            data: themeData,
            child: ClipSmoothRect(
              radius: SmoothBorderRadius.all(
                ElementReact.screenCornerRadius(context),
              ),
              child: DecoratedBox(
                decoration: BoxDecoration(color: colorScheme.surface),
                child: CustomScrollView(
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  slivers: [
                    MtSliverArtBar(
                      name: exercise.name,
                      description: exercise.description,
                      cta: "Start",
                      onCtaPressed: () => Navigator.of(context).push(
                        SessionEditor.route(
                          bloc: bloc,
                          theme: themeData,
                        ),
                      ),
                    ),
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
                      child: SessionListView.createByExercise(
                        // repo: repo,
                        exercise: exercise,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      });
}
