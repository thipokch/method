import 'package:flutter/material.dart';
import 'package:matter/nav/nav_bar.dart';

import 'settings_view.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        decoration:
            BoxDecoration(color: Theme.of(context).colorScheme.background),
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => <Widget>[
            const MethodSliverNavigationBar(
              largeTitle: Text('Settings'),
            ),
          ],
          body: const Material(child: SettingsView()),
        ),
      );
}
