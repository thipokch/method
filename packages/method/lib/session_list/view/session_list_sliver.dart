part of 'session_list_view.dart';

class SessionListSliver extends StatelessWidget {
  const SessionListSliver({super.key});

  @override
  Widget build(BuildContext context) => const SliverToBoxAdapter(
        child: SessionListView(),
      );
}
