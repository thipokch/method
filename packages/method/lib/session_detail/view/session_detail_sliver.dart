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
                  childCount: state.map.length, // Skip Feedback
                  (context, index) {
                    final entry = state.elementAt(index).value.orNull;

                    // return Row(
                    //   children: [
                    //     entry != null
                    //         ? Column(
                    //             children: [
                    //               BlocProvider(
                    //                 create: (_) => EntryDetailBloc(
                    //                   id: entry.id,
                    //                   repository: context.read(),
                    //                 )..add(const EntryDetailEvent.start()),
                    //                 child: const Expanded(
                    //                     child: EntryDetailSliver()),
                    //               ),
                    //             ],
                    //           )
                    //         : const SizedBox(),
                    //   ],
                    // );

                    // return ;

                    return entry != null
                        ? BlocProvider(
                            create: (_) => EntryDetailBloc(
                              id: entry.id,
                              repository: context.read(),
                            )..add(const EntryDetailEvent.start()),
                            child: Row(
                              children: const [
                                SizedBox(),
                                Expanded(child: EntryDetailSliver()),
                                // Column(),
                                // Expanded(
                                //   child: ListTile(
                                //     title: Text("I'm soooo sad"),
                                //   ),
                                // ),
                              ],
                            ),
                          )
                        : const SizedBox();

                    // return ListTile(
                    //   title: Text(task.description),
                    //   // subtitle: Text(task.name),
                    // );
                  },
                ),
              ),
      );
}
