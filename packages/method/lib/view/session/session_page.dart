part of 'session_widget.dart';

class SessionPage extends StatelessWidget {
  const SessionPage({super.key});

  static Widget create({
    required Exercise exercise,
    Session? session,
  }) =>
      _Session(
        exercise: exercise,
        session: session,
        theme: null,
        child: const SessionPage(),
      );

  @override
  Widget build(BuildContext context) => BlocBuilder<SessionBloc, SessionState>(
        builder: (context, state) => state.maybeWhen(
          orElse: () => const CupertinoActivityIndicator(),
          sessionLoaded: (exercise, session) {
            final repo = context.read<Repository>();
            final entries = session.definitions;

            return MtAppPage(
              name: exercise.name,
              description: format(session.createdAt),
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: entries
                        .whereType<Entry>()
                        .map(
                          (e) => BlocProvider(
                            create: ((context) => EntryBloc(
                                  repo: repo,
                                  task: e.template,
                                  entry: e,
                                )),
                            child: EntryPreview(
                              // ignore: no-empty-block
                              listener: (context, state) {},
                            ),
                          ),
                        )
                        .toList(),
                    // children: definitions.map((e) => BlocProvider<EntryBloc>(create: ((context) => EntryBloc(repo: repo, task: task))),
                  ),
                ),
              ],
            );
          },
        ),
      );
}
