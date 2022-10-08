import 'package:flutter/material.dart';

class MtScaffold extends StatelessWidget {
  final List<Widget> slivers;
  final Color? color;
  final ScrollController? controller;
  final ScrollPhysics? physics;

  const MtScaffold({
    super.key,
    required this.slivers,
    this.color,
    this.controller,
    this.physics,
  });

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: color ?? Theme.of(context).colorScheme.background,
        ),
        child: CustomScrollView(
          controller: controller,
          physics: physics ??
              const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          slivers: [
            ...slivers,
            SliverPadding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).padding.bottom * 2,
              ),
            ),
          ],
        ),
      );
}
