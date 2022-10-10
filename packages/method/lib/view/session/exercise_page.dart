part of 'session_widget.dart';

class ExercisePage extends StatelessWidget {
  const ExercisePage({super.key});

  static Widget create({
    required Exercise exercise,
    Session? session,
  }) =>
      _Session(
        exercise: exercise,
        session: session,
        theme: null,
        child: const ExercisePage(),
      );

  static Route route({
    required Exercise exercise,
    Session? session,
    ThemeData? theme,
  }) =>
      ModalBottomSheetRoute(
        expanded: true,
        builder: (context) => _Session(
          theme: theme,
          exercise: exercise,
          session: session,
          child: const ExercisePage(),
        ),
      );

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<SessionBloc, SessionState>(builder: (context, state) {
        final exercise = state.exercise;
        final definitions = exercise.definitions;

        return Hero(
          tag: exercise.name,
          child: Stack(
            children: [
              MtArtPage(
                emoji: exercise.icon,
                name: exercise.name,
                description: exercise.description,
                cta: "Start",
                onCtaPressed: () => Navigator.of(context).push(
                  SessionEditor.route(
                    exercise: exercise,
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
                ],
              ),
            ],
          ),
        );
      });
}
