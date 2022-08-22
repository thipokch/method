import 'package:component/settings/settings_bloc.dart';
import 'package:element/element_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'settings_preview.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) => state.when(
          initial: () => const Text("initial"),
          loaded: (themeMode) => ListView(
            children: [
              ListTile(
                title: const Text("System"),
                trailing: Visibility(
                  visible: themeMode == ThemeMode.system,
                  child: const Icon(ElementIcon.checkmark),
                ),
                onTap: () => context.read<SettingsBloc>().add(
                      const SettingsEvent.themeModeUpdated(
                        themeMode: ThemeMode.system,
                      ),
                    ),
              ),
              ListTile(
                title: const Text("Light"),
                trailing: Visibility(
                  visible: themeMode == ThemeMode.light,
                  child: const Icon(ElementIcon.checkmark),
                ),
                onTap: () => context.read<SettingsBloc>().add(
                      const SettingsEvent.themeModeUpdated(
                        themeMode: ThemeMode.light,
                      ),
                    ),
              ),
              ListTile(
                title: const Text("Dark"),
                trailing: Visibility(
                  visible: themeMode == ThemeMode.dark,
                  child: const Icon(ElementIcon.checkmark),
                ),
                onTap: () => context.read<SettingsBloc>().add(
                      const SettingsEvent.themeModeUpdated(
                        themeMode: ThemeMode.dark,
                      ),
                    ),
              ),
            ],
          ),
        ),
      );
}

void showSettingsPreview({
  required BuildContext context,
  bool useRootNavigator = false,
}) {
  Navigator.of(context, rootNavigator: useRootNavigator)
      .push(MaterialPageRoute<void>(
    builder: (BuildContext context) => const SettingsPreview(),
  ));
}
