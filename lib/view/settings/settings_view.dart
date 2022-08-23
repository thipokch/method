import 'package:component/settings/settings_bloc.dart';
import 'package:element/element_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/view/settings/settings_dev.dart';
import 'package:method/view/settings/settings_about.dart' as about;
import 'package:package_info_plus/package_info_plus.dart';

import 'settings_preview.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) => state.when(
          initial: () => const Text("initial"),
          loaded: (themeMode) {
            final List<Widget> items = [
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 12, 16, 8),
                child: Text("Theme"),
              ),
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
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
                child: Text("Method App"),
              ),
              ListTile(
                title: const Text("About"),
                trailing: const Icon(ElementIcon.brandArrowRight),
                onTap: () async {
                  PackageInfo packageInfo = await PackageInfo.fromPlatform();
                  about.showLicensePage(
                    context: context,
                    applicationVersion: packageInfo.version,
                    applicationName: packageInfo.appName.toLowerCase(),
                    applicationLegalese: "Build ${packageInfo.buildNumber}",
                  );
                },
              ),
              ListTile(
                title: const Text("Developer"),
                trailing: const Icon(ElementIcon.brandArrowRight),
                onTap: () => showDev(context: context),
              ),
            ];

            return ListView.separated(
              separatorBuilder: (context, index) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Divider(
                  height: 0,
                ),
              ),
              itemCount: items.length,
              itemBuilder: (context, index) => items[index],
            );
          },
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
