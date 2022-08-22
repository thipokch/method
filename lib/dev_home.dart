import 'package:flutter/material.dart';
import 'package:matter/button/button_tonal.dart';
import 'package:matter/preview.dart';
import 'package:method/patch/about.dart' as about;
import 'package:method/view/task_preview.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'view/settings_view.dart';

class DevHome extends StatefulWidget {
  const DevHome({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<DevHome> createState() => _DevHomeState();
}

class _DevHomeState extends State<DevHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            ButtonTonal(
              child: const Text("License"),
              onPressed: () async {
                PackageInfo packageInfo = await PackageInfo.fromPlatform();
                about.showLicensePage(
                  context: context,
                  applicationVersion:
                      "${packageInfo.version} - ${packageInfo.buildNumber}",
                  applicationName: packageInfo.appName.toLowerCase(),
                );
              },
            ),
            ButtonTonal(
              child: const Text("Matter"),
              onPressed: () {
                showMatterPreview(context: context);
              },
            ),
            ButtonTonal(
              child: const Text("Task"),
              onPressed: () {
                showTaskPreview(context: context);
              },
            ),
            ButtonTonal(
              child: const Text("Settings"),
              onPressed: () {
                showSettingsPreview(context: context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
