import 'package:flutter/material.dart';
import 'package:method_ui/float/float_container.dart';

class FloatScaffold extends StatelessWidget {
  final Widget? leading;
  final Widget? middle;
  final Widget? trailing;

  const FloatScaffold({
    Key? key,
    this.leading,
    this.middle,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).padding.bottom * 4.5,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colorScheme.background.withOpacity(0),
            colorScheme.background,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      padding: const EdgeInsets.all(36),
      alignment: Alignment.center,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 48),
        child: FloatContainer(
          child: NavigationToolbar(
            leading: leading,
            middle: middle,
            trailing: trailing,
          ),
        ),
      ),
    );
  }
}
