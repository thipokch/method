import 'package:component/settings/settings_bloc.dart';
import 'package:element/element_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/view/settings/settings_dev.dart';
import 'package:method/view/settings/settings_license.dart' as about;
import 'package:package_info_plus/package_info_plus.dart';

import 'settings_page.dart';

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
                padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: Text("Appearance"),
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
                padding: EdgeInsets.fromLTRB(16, 24, 16, 8),
                child: Text("About"),
              ),
              ListTile(
                title: const Text("Licenses"),
                trailing: const Icon(ElementIcon.chevronForward),
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
                trailing: const Icon(ElementIcon.chevronForward),
                onTap: () => showDeveloperPage(context: context),
              ),
              FutureBuilder<PackageInfo>(
                future: PackageInfo.fromPlatform(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return _AboutApp(
                      name: snapshot.data!.appName.toLowerCase(),
                      version: snapshot.data!.version,
                      buildInfo: snapshot.data!.buildNumber,
                    );
                  }

                  return const CupertinoActivityIndicator();
                },
              ),
            ];

            return ListView.separated(
              padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
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
    builder: (BuildContext context) => const SettingsPage(),
  ));
}

class _AboutApp extends StatelessWidget {
  const _AboutApp({
    Key? key,
    required this.name,
    required this.version,
    required this.buildInfo,
    // ignore: unused_element
    this.icon,
  }) : super(key: key);

  final String name;
  final String version;
  final Widget? icon;
  final String buildInfo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 36.0,
      ),
      child: Column(
        children: <Widget>[
          Text(
            name,
            style: Theme.of(context).textTheme.headline5,
            textAlign: TextAlign.center,
          ),
          if (icon != null)
            IconTheme(data: Theme.of(context).iconTheme, child: icon!),
          if (version != '')
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                version,
                style: Theme.of(context).textTheme.bodyText2,
                textAlign: TextAlign.center,
              ),
            ),
          if (buildInfo != '')
            Text(
              buildInfo,
              style: Theme.of(context).textTheme.caption,
              textAlign: TextAlign.center,
            ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
