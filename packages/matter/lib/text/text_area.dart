import 'package:flutter/material.dart';

class TextArea extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final GestureTapCallback? onTap;

  const TextArea({
    Key? key,
    this.onChanged,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16.0,
          bottom: 16.0,
        ),
        child: TextField(
          onChanged: onChanged,
          textAlign: TextAlign.center,
          textAlignVertical: TextAlignVertical.center,
          style: textTheme.bodyLarge,
          expands: true,
          maxLines: null,
          maxLength: 280,
          onTap: onTap,
          buildCounter: (
            _, {
            required currentLength,
            maxLength,
            required isFocused,
          }) =>
              Container(
            height: 16,
            alignment: Alignment.center,
            child: Text(
              isFocused ? "$currentLength / $maxLength" : "",
              textAlign: TextAlign.center,
              style: textTheme.labelMedium,
            ),
          ),
          decoration: const InputDecoration(
            hintText: 'Start Writing...',
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
