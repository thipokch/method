import 'package:flutter/material.dart';
import 'text_box.dart';

class TextPreview extends StatelessWidget {
  const TextPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: const [TextBox()],
    );
  }
}
