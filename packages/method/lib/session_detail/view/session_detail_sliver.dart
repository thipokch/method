part of 'session_detail_view.dart';

class SessionDetailSliver extends StatelessWidget {
  const SessionDetailSliver({super.key});

  @override
  Widget build(BuildContext context) => SessionDetailBuilder(
        builder: (context, state) => state.maybeMap(
          started: (_) => SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: _.session.definitions.length,
              (context, index) => Text(
                _.session.definitions.elementAtOrNull(index)?.template.name ??
                    "Null",
              ),
            ),
          ),
          orElse: () =>
              const SliverFillRemaining(child: CupertinoActivityIndicator()),
        ),
      );
}
