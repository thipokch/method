import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../nav/nav_bar.dart';

abstract class MethodPage extends StatelessWidget {
  const MethodPage({Key? key}) : super(key: key);

  Widget get child;
  String get title;

  @override
  Widget build(BuildContext context) => Container(
        decoration:
            BoxDecoration(color: Theme.of(context).colorScheme.background),
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => <Widget>[
            MethodSliverNavigationBar(
              largeTitle: Text(title),
            ),
          ],
          body: Material(
            child: child,
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
