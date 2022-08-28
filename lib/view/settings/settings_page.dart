import 'package:component/settings/settings_bloc.dart';
import 'package:element/element_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matter/nav/nav_context.dart';
import 'package:matter/page/page.dart';
import 'package:matter/scroll/pairing_scroll_controller.dart';
import 'package:method/view/settings/acknowlegement_page.dart';
import 'package:method/view/settings/appearance_page.dart';
import 'package:method/view/settings/developer_page.dart';

import 'package:package_info_plus/package_info_plus.dart';

class SettingsPage extends MethodPage {
  const SettingsPage({
    Key? key,
    super.heroTag,
    super.leading,
    super.trailing,
    super.controller,
  }) : super(
          key: key,
          title: "Settings",
          child: const SettingsList(),
        );
}

class SettingsList extends StatelessWidget {
  const SettingsList({Key? key, this.controller}) : super(key: key);

  final ScrollController? controller;

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<SettingsBloc, SettingsState>(builder: (context, state) {
        final Map<String, MethodPageBuilder> about = {
          "Acknowledgement": (context) => AcknowlegementPage(
                trailing: NavigationContext.of(context)?.exit,
                controller: PairingScrollController.of(context)?.push(),
              ),
          "Developer": (context) => DeveloperPage(
                trailing: NavigationContext.of(context)?.exit,
                controller: PairingScrollController.of(context)?.push(),
              ),
        };

        final Map<String, MethodPageBuilder> general = {
          "Appearance": (context) => AppearancePage(
                trailing: NavigationContext.of(context)?.exit,
                controller: PairingScrollController.of(context)?.push(),
              ),
        };

        final List<Widget> items = [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Text(
              "GENERAL",
              style: Theme.of(context).textTheme.caption,
            ),
          ),
          ...general.entries.map((e) => ListTile(
                title: Text(e.key),
                trailing: const Icon(ElementIcon.chevronForward),
                onTap: () => show(context: context, builder: e.value),
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
            child: Text(
              "ABOUT",
              style: Theme.of(context).textTheme.caption,
            ),
          ),
          ...about.entries.map((e) => ListTile(
                title: Text(e.key),
                trailing: const Icon(ElementIcon.chevronForward),
                onTap: () => show(context: context, builder: e.value),
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

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: items,
          ),
        );
      });
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
        vertical: 72.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            name,
            style: Theme.of(context).textTheme.headline5,
            textAlign: TextAlign.start,
          ),
          if (icon != null)
            IconTheme(data: Theme.of(context).iconTheme, child: icon!),
          if (version != '')
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                version,
                style: Theme.of(context).textTheme.bodyText2,
                textAlign: TextAlign.start,
              ),
            ),
          if (buildInfo != '')
            Text(
              buildInfo,
              style: Theme.of(context).textTheme.caption,
              textAlign: TextAlign.start,
            ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
