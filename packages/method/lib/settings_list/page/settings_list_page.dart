import 'package:flutter/material.dart';
import 'package:method_ui/page/page.dart';

import '../settings_list.dart';

class SettingsListPage extends StatelessWidget {
  const SettingsListPage({super.key});

  @override
  Widget build(BuildContext context) => const MtAppPage(
        name: Text("Settings list"),
        // description: Text(""),
        slivers: [
          SettingsListSliver(),
        ],
      );
}
