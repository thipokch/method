import 'package:flutter/material.dart';
import 'package:method_settings_list/settings_list.dart';
import 'package:method_style/method_style.dart';

class SettingsListPage extends StatelessWidget {
  const SettingsListPage({
    super.key,
    required this.onSelectData,
    required this.onSelectAppearance,
    required this.onSelectLicense,
    required this.onSelectFeedback,
    required this.onSelectPrivacy,
    required this.onSelectTerms,
  });

  final VoidCallback onSelectData;
  final VoidCallback onSelectAppearance;
  final VoidCallback onSelectLicense;
  final VoidCallback onSelectFeedback;
  final VoidCallback onSelectPrivacy;
  final VoidCallback onSelectTerms;

  @override
  Widget build(BuildContext context) => MtAppPage(
        name: const Text("Me"),
        // description: Text(""),
        slivers: [
          SettingsListSliver(
            onSelectData: onSelectData,
            onSelectAppearance: onSelectAppearance,
            onSelectLicense: onSelectLicense,
            onSelectFeedback: onSelectFeedback,
            onSelectPrivacy: onSelectPrivacy,
            onSelectTerms: onSelectTerms,
          ),
        ],
      );
}
