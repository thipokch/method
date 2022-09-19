part of 'history_widget.dart';

class HistoryList extends StatelessWidget {
  const HistoryList({super.key});

  static Widget create({required Repository repo}) => _HistoryWidget(
        repo: repo,
        child: const HistoryList(),
      );

  @override
  Widget build(BuildContext context) => BlocBuilder<HistoryBloc, HistoryState>(
        builder: (context, state) => state.when(
          initial: () => const Text(""),
          loaded: (session) => Column(
            children: [
              Text(session.length.toString()),
              TextButton(
                onPressed: () => context.read<Repository>().sessions.put(
                      Session.create(
                        template: Content.exerciseNote,
                        collectionSlug: "collectionSlug",
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
