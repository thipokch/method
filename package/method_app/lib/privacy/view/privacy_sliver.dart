part of 'privacy_view.dart';

class PrivacySliver extends StatelessWidget {
  const PrivacySliver({super.key});

  @override
  Widget build(BuildContext context) => const SliverToBoxAdapter(
        child: MarkdownBody(data: ""),
      );
}
