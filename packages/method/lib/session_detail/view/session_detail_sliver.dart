part of 'session_detail_view.dart';

class SessionDetailSliver extends StatelessWidget {
  const SessionDetailSliver({super.key});

  @override
  Widget build(BuildContext context) =>
      SessionDetailSelector<BuiltDefinition<Task, Entry>?>(
        selector: (state) => state.definitions,
        builder: (context, state) => state == null
            ? const SliverFillRemaining(child: CupertinoActivityIndicator())
            : SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: state.map.length,
                  (context, index) {
                    final task = state.elementAt(index).key;
                    // final entry = state.elementAt(index).value.orNull;

                    return ListTile(
                      title: Text(task.name),
                      subtitle: Text(task.description),
                    );
                  },
                ),
              ),
      );
}
