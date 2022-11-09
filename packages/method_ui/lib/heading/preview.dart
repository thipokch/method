import 'package:flutter/material.dart';
import 'package:method_ui/heading/heading_headline.dart';
import 'package:method_ui/heading/heading_section.dart';
import 'package:method_ui/heading/heading_title.dart';

class HeadingPreview extends StatelessWidget {
  const HeadingPreview({Key? key}) : super(key: key);

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
