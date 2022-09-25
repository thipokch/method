part of 'session_list_widget.dart';

class SessionListView extends StatelessWidget {
  const SessionListView({super.key});

  static Widget create({required Repository repo}) => _ExerciseListWidget(
        repo: repo,
        child: const SessionListView(),
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
          loaded: (session) => Column(
            children: [
              Text(session.length.toString()),
              TextButton(
                onPressed: () => context.read<Repository>().sessions.put(
                      Session.create(
                        template: Content.exerciseNote,
                        hierarchyPath: "hierarchyPath",
                        id: "id",
                      ),
                    ),
                child: const Text("add session"),
              ),
              TextButton(
                onPressed: () => context.read<Repository>().sessions.clear(),
                child: const Text("nuke history"),
              ),
            ],
          ),
        ),
      );
}
