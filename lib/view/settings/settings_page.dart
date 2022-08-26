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
    this.controller,
  }) : super(key: key);

  final ScrollController? controller;

  @override
  MethodPageBuilder get builder => ((context) => SettingsList(
        controller: controller,
      ));
}

class SettingsList extends StatelessWidget {
  const SettingsList({Key? key, this.controller}) : super(key: key);

  final ScrollController? controller;

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<SettingsBloc, SettingsState>(builder: (context, state) {
        // const divider = Padding(
        //   padding: EdgeInsets.symmetric(horizontal: 12),
        //   child: Divider(
        //     height: 0,
        //   ),
        // );

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
            child: Text("GENERAL"),
          ),
          ...general.entries.map((e) => ListTile(
                title: Text(e.key),
                trailing: const Icon(ElementIcon.chevronForward),
                onTap: e.value,
              )),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 24, 16, 8),
            child: Text("ABOUT"),
          ),
          ...about.entries.map((e) => ListTile(
                title: Text(e.key),
                trailing: const Icon(ElementIcon.chevronForward),
                onTap: e.value,
              )),
          // ConstrainedBox(
          //   constraints:
          //       BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          //   child: Expanded(child: const CupertinoActivityIndicator()),
          // ),
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

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: items,
        );

        // return ListView.separated(
        //   shrinkWrap: true,
        //   padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
        //   separatorBuilder: (context, index) => const Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 12),
        //     child: Divider(
        //       height: 0,
        //     ),
        //   ),
        //   controller: ModalScrollController.of(context),
        //   itemBuilder: (context, index) => items[index],
        //   itemCount: items.length,
        // );
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
        vertical: 36.0,
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
