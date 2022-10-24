import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_ui/page/page.dart';

import '../settings_privacy.dart';

class SettingsPrivacyPage extends StatelessWidget {
  const SettingsPrivacyPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => SettingsPrivacyBloc(),
        child: const MtAppPage(
          name: Text("Settings privacy"),
          description: Text(""),
          slivers: [
            SettingsPrivacySliver(),
          ],
        ),
      );
}
