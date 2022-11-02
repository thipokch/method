part of 'session_list_view.dart';

class SessionListSliver extends StatelessWidget {
  const SessionListSliver({super.key});

  @override
  Widget build(BuildContext context) => SessionListBuilder(
        builder: (context, state) => state.maybeWhen(
          orElse: () =>
              const SliverFillRemaining(child: CupertinoActivityIndicator()),
          started: (sessions) => SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => _Item(
                session: sessions[index],
                onTap: () => context.read<SessionListBloc>().add(
                      SessionListEvent.selectSession(session: sessions[index]),
                    ),
              ),
              childCount: sessions.length,
            ),
          ),
        ),
      );
}
