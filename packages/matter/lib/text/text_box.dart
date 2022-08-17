import 'package:element/element_scale.dart';
import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  const TextBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      elevation: 0,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
          width: ElementScale.borderL,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(ElementScale.cornerLarge),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16.0,
          top: 8.0,
          bottom: 8.0,
        ),
        child: TextField(
          controller: TextEditingController(),
          style: textTheme.bodyLarge,
          maxLines: 5,
          decoration: const InputDecoration(
            hintText: 'Start Writing...',
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
