import 'package:flutter/material.dart';
import 'package:method_style/method_style.dart';

import '../settings_list.dart';

class SettingsListPage extends StatelessWidget {
  const SettingsListPage({super.key});

  @override
  Widget build(BuildContext context) => const MtAppPage(
        name: Text("Me"),
        // description: Text(""),
        slivers: [
          SettingsListSliver(),
        ],
      );
}
