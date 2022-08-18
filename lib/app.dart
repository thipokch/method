import 'package:element/element_color.dart';
import 'package:element/element_typography.dart';
import 'package:flutter/material.dart';
import 'package:matter/button/button_tonal.dart';
import 'package:matter/patch/ink_sparkle.dart';
import 'package:matter/preview.dart';
import 'package:method/patch/about.dart' as about;
import 'package:package_info_plus/package_info_plus.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: ElementTypography.textStyle,
        splashFactory: InkSparklePatch.splashFactory,
        colorScheme: ElementColor.lightColorStyle,
      ),
      home: const AppHome(title: 'App Home'),
    );
  }
}

class AppHome extends StatefulWidget {
  const AppHome({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
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
          ],
        ),
      ),
    );
  }
}
