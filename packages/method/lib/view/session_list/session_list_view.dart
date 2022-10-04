part of 'session_list_widget.dart';

class SessionListV extends StatelessWidget {
  const SessionListV({super.key});

  static Widget create() => _ExerciseList.create(
        // repo: repo,
        child: const SessionListV(),
      );

  static Widget createByExercise({
    // required final Repository repo,
    required final Exercise exercise,
  }) =>
      _ExerciseList.createByExercise(
        // repo: repo,
        exercise: exercise,
        child: const SessionListV(),
      );

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<SessionListBloc, SessionListState>(
        builder: (context, state) => state.when(
          initial: () => TextButton(
            onPressed: () => context.read<Repository>().local.instance.writeTxn(
                  () => context.read<Repository>().sessions.put(
                        Session.create(
                          template: Content.exerciseNote,
                          hierarchyPath: "hierarchyPath",
                          id: "id",
                        ),
                      ),
                ),
            child: const Text("add session"),
          ),
          loaded: (sessions) => Column(
            children: sessions
                .map((session) => SessionCardPreview(
                      session: session,
                      onTap: () => Navigator.push(
                        context,
                        SessionEditor.route(
                          exercise: session.template,
                          session: session,
                        ),
                      ),
                    ))
                .toList(),
          ),
        ),
      );
}
