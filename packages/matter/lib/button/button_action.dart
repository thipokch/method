import 'package:element/element_touch.dart';
import 'package:flutter/material.dart';

class ButtonAction extends StatelessWidget {
  const ButtonAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    TextTheme textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton.extended(
        elevation: 3,
        focusElevation: 1,
        foregroundColor: colorScheme.onPrimary,
        backgroundColor: colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        onPressed: () {
          ElementTouch.select();
        },
        label: Text(
          "Action Button".toUpperCase(),
          style: textTheme.labelLarge?.copyWith(
            color: colorScheme.onPrimary,
            letterSpacing: 1.0,
          ),
        ),
      ),
    );
  }
}
