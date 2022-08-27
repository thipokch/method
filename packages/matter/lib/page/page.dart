import 'package:flutter/material.dart';

import '../nav/nav_bar.dart';

typedef MethodPageBuilder = Widget Function(BuildContext context);

abstract class MethodPage extends StatelessWidget {
  const MethodPage({
    Key? key,
    required this.title,
    this.leading,
    this.trailing,
    this.heroTag,
    this.child,
    this.controller,
  }) : super(key: key);

  final String title;
  final ScrollController? controller;
  final Object? heroTag;
  final Widget? leading;
  final Widget? trailing;
  final Widget? child;

  @override
  Widget build(BuildContext context) => Container(
        decoration:
            BoxDecoration(color: Theme.of(context).colorScheme.background),
        child: CustomScrollView(
          controller: controller,
          slivers: <Widget>[
            MethodSliverNavigationBar(
              stretch: true,
              heroTag: heroTag ?? defaultHeroTag,
              largeTitle: Text(title),
              trailing: trailing,
              leading: leading,
            ),
            // builder(context),
            SliverToBoxAdapter(
              child: Material(
                type: MaterialType.transparency,
                child: child,
              ),
            ),
          ],
        ),
      );

  void show({
    required BuildContext context,
  }) =>
      Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => this,
      ));
}
