import 'package:flutter/material.dart';
import 'package:method/patch/app_bar.dart';

import 'settings_view.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => <Widget>[
          SliverAppBarPatch.medium(
            title: const Text('Settings'),
          ),
        ],
        body: const Material(child: SettingsView()),
      );
}
