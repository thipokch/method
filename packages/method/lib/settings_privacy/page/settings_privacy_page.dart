import 'package:flutter/material.dart';
import 'package:method_ui/page/page.dart';

import '../settings_privacy.dart';

class SettingsPrivacyPage extends StatelessWidget {
  const SettingsPrivacyPage({super.key});

  @override
  Widget build(BuildContext context) => const MtAppPage(
        name: Text("Settings privacy"),
        // description: Text(""),
        slivers: [
          SettingsPrivacySliver(),
        ],
      );
}
