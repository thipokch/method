import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_ui/page/page.dart';

import '../settings_appearance.dart';

class SettingsAppearancePage extends StatelessWidget {
  const SettingsAppearancePage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => SettingsAppearanceBloc(),
        child: const MtAppPage(
          name: Text("Settings appearance"),
          description: Text(""),
          slivers: [
            SettingsAppearanceSliver(),
          ],
        ),
      );
}
