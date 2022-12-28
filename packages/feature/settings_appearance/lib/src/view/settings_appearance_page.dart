import 'package:flutter/material.dart';
import 'package:method_settings_appearance/settings_appearance.dart';
import 'package:method_style/method_style.dart';

/// {@template settings_appearance_page}
/// A description for SettingsAppearancePage
/// {@endtemplate}
class SettingsAppearancePage extends StatelessWidget {
  /// {@macro settings_appearance_page}
  const SettingsAppearancePage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => SettingsAppearanceBloc(
          analyticService: context.read(),
          userRepository: context.read(),
        ),
        child: MtAppPage(
          name: Text("Appearance"),
          slivers: [SettingsAppearanceSliver()],
        ),
      );
}
