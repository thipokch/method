import 'package:method_bloc/settings/settings_bloc.dart';
import 'package:method_style/element_scale.dart';
import 'package:method_style/element_symbol.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_ui/nav/nav_context.dart';
import 'package:method_ui/page/page.dart';
import 'package:method/view/settings/appearance_page.dart';
import 'package:method/view/settings/my_data_page.dart';

import 'package:package_info_plus/package_info_plus.dart';

import 'acknowlegements_page.dart';

class SettingsPage extends StatelessWidget {
  final Widget? leading;
  final Widget? trailing;

  const SettingsPage({
    super.key,
    this.leading,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) => MtAppPage(
        name: "Settings",
        leading: leading,
        trailing: trailing,
        slivers: const [
          SliverToBoxAdapter(
            child: SettingsList(),
          ),
        ],
      );
}

class SettingsList extends StatelessWidget {
  const SettingsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<SettingsBloc, SettingsState>(builder: (context, state) {
        final Map<String, WidgetBuilder> about = {
          "Acknowledgements":
              // When ShellRoute becomes available
              // (context) => AcknowledgementRoute().push(context),
              (context) => AcknowlegementsPage(
                    trailing: NavigationContext.of(context)?.exit,
                  ),
          // "Developer":
          //     // When ShellRoute becomes available
          //     // (context) => DeveloperRoute().push(context),
          //     (context) => DeveloperPage(
          //           trailing: NavigationContext.of(context)?.exit,
          //         ),
        };

        final Map<String, WidgetBuilder> general = {
          "Appearance":
              // When ShellRoute becomes available
              // (context) => AppearancePage().push(context),
              (context) => AppearancePage(
                    trailing: NavigationContext.of(context)?.exit,
                  ),
        };

        final Map<String, WidgetBuilder> security = {
          "My Data":
              // When ShellRoute becomes available
              // (context) => AppearancePage().push(context),
              (context) => MyDataPage(
                    trailing: NavigationContext.of(context)?.exit,
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
                trailing: const Icon(ElementSymbol.chevronForward),
                onTap: () => show(context: context, builder: e.value),
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
            child: Text(
              "SECURITY & PRIVACY",
              style: Theme.of(context).textTheme.caption,
            ),
          ),
          ...security.entries.map((e) => ListTile(
                title: Text(e.key),
                trailing: const Icon(ElementSymbol.chevronForward),
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
                trailing: const Icon(ElementSymbol.chevronForward),
                onTap: () => show(context: context, builder: e.value),
                // When ShellRoute becomes available
                // onTap: () => e.value.call(context),
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
          padding: const EdgeInsets.symmetric(vertical: ElementScale.spaceM),
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
              padding: const EdgeInsets.only(bottom: ElementScale.spaceM),
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
