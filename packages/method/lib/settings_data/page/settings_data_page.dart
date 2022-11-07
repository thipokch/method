import 'package:flutter/material.dart';
import 'package:method_ui/page/page.dart';

import '../settings_data.dart';

class SettingsDataPage extends StatelessWidget {
  const SettingsDataPage({super.key});

  @override
  Widget build(BuildContext context) => const MtAppPage(
        name: Text("Data & Privacy"),
        // description: Text(""),
        slivers: [
          SettingsDataSliver(),
        ],
      );
}
