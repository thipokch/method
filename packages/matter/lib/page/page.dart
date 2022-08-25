import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../nav/nav_bar.dart';

typedef MethodPageBuilder = Widget Function(BuildContext context);

abstract class MethodPage extends StatelessWidget {
  const MethodPage({
    Key? key,
    required this.title,
    this.trailing,
    this.heroTag,
  }) : super(key: key);

  MethodPageBuilder get builder;
  final String title;
  final Object? heroTag;
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
          .push(MaterialWithModalsPageRoute<void>(
        builder: (BuildContext context) => this,
      ));
}
