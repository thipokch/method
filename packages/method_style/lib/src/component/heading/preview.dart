import 'package:flutter/material.dart';
import 'package:method_style/method_style.dart';

class HeadingPreview extends StatelessWidget {
  const HeadingPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        HeadingHeadline(label: "Headline"),
        HeadingTitle(label: "Title"),
        HeadingSection(label: "Section"),
      ],
    );
  }
}
