import 'package:flutter/material.dart';
import 'package:method_style/method_style.dart';

import '../settings_appearance.dart';

class SettingsAppearancePage extends StatelessWidget {
  const SettingsAppearancePage({super.key});

  @override
  Widget build(BuildContext context) => const MtAppPage(
        name: Text("Apperance"),
        // description: Text(""),
        slivers: [
          SettingsAppearanceSliver(),
        ],
      );
}
