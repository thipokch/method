part of 'terms_view.dart';

class TermsSliver extends StatelessWidget {
  const TermsSliver({super.key});

  @override
  Widget build(BuildContext context) => const SliverToBoxAdapter(
        child: MarkdownBody(data: ""),
      );
}
