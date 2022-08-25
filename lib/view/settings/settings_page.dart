import 'package:component/settings/settings_bloc.dart';
import 'package:element/element_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matter/page/page.dart';
import 'package:method/view/settings/acknowlegement_page.dart';
import 'package:method/view/settings/appearance_page.dart';
import 'package:method/view/settings/developer_page.dart';
// import 'package:method/view/settings/settings_license_list.dart' as license;
import 'package:package_info_plus/package_info_plus.dart';

class SettingsPage extends MethodPage {
  const SettingsPage({
    Key? key,
    super.title = "Settings",
    super.leading,
    super.trailing,
  }) : super(key: key);

  @override
  MethodPageBuilder get builder => ((context) => const SettingsList());
}

class SettingsList extends StatelessWidget {
  const SettingsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) => state.when(
          initial: () => const Text("initial"),
          loaded: (themeMode) {
            final Map<String, Function()?> about = {
              "Acknowledgement": () =>
                  const AcknowlegementPage().show(context: context),
              // license.showLicensePage(context: context),
              "Developer": () => const DeveloperPage().show(context: context),
            };

            final Map<String, Function()?> general = {
              "Appearance": () => const AppearancePage().show(
                    context: context,
                  ),
            };

            final List<Widget> items = [
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: Text("General"),
              ),
              ...general.entries.map((e) => ListTile(
                    title: Text(e.key),
                    trailing: const Icon(ElementIcon.chevronForward),
                    onTap: e.value,
                  )),
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 24, 16, 8),
                child: Text("About"),
              ),
              ...about.entries.map((e) => ListTile(
                    title: Text(e.key),
                    trailing: const Icon(ElementIcon.chevronForward),
                    onTap: e.value,
                  )),
              FutureBuilder<PackageInfo>(
                future: PackageInfo.fromPlatform(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return _AppInfo(
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

class _AppInfo extends StatelessWidget {
  const _AppInfo({
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
