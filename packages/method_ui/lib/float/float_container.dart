import 'package:flutter/material.dart';
import 'package:method_style/element_scale.dart';

class FloatContainer extends StatelessWidget {
  const FloatContainer({
    Key? key,
    required this.child,
    this.padding,
  }) : super(key: key);

  final Widget? child;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return child != null
        ? Container(
            padding: padding ??
                const EdgeInsets.symmetric(
                  vertical: ElementScale.spaceM,
                  horizontal: ElementScale.spaceM * 1.2,
                ),
            decoration: BoxDecoration(
              color: colorScheme.surface,
              borderRadius: const BorderRadius.all(
                Radius.circular(ElementScale.cornerExtraLarge),
              ),
              boxShadow: [
                BoxShadow(
                  color: colorScheme.outline.withOpacity(.16),
                  blurRadius: 10,
                  spreadRadius: 1,
                ),
              ],
            ),
            clipBehavior: Clip.antiAlias,
            child: child,
          )
        : Container();
  }
}
