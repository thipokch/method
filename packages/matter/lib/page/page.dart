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
  }) : super(key: key);

  MethodPageBuilder get builder;
  final String title;
  final Object? heroTag;
  final Widget? leading;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) => Container(
        decoration:
            BoxDecoration(color: Theme.of(context).colorScheme.background),
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => <Widget>[
            MethodSliverNavigationBar(
              heroTag: heroTag ?? defaultHeroTag,
              largeTitle: Text(title),
              trailing: trailing,
              leading: leading,
            ),
          ],
          body: Material(
            child: builder(context),
          ),
        ),
      );

  void show({
    required BuildContext context,
    bool useRootNavigator = false,
  }) =>
      Navigator.of(context, rootNavigator: useRootNavigator)
          .push(MaterialPageRoute<void>(
        builder: (BuildContext context) => this,
      ));
}
