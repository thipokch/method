import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

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
  }) : super(key: key);

  final String title;
  final Object? heroTag;
  final Widget? leading;
  final Widget? trailing;
  final Widget? child;

  @override
  Widget build(BuildContext context) => Container(
        decoration:
            BoxDecoration(color: Theme.of(context).colorScheme.background),
        child: CustomScrollView(
          controller: ModalScrollController.of(context),
          slivers: <Widget>[
            MethodSliverNavigationBar(
              stretch: true,
              heroTag: heroTag ?? defaultHeroTag,
              largeTitle: Text(title),
              trailing: trailing,
              leading: leading,
            ),
            // builder(context),
            SliverFillRemaining(
              child: child,
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
