import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

part 'terms_sliver.dart';

class TermsView extends StatelessWidget {
  const TermsView({super.key});

  @override
  Widget build(BuildContext context) => const SliverToBoxAdapter(
        child: MarkdownBody(data: ""),
      );
}
