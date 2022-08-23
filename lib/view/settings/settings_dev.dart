import 'package:flutter/material.dart';
import 'package:matter/button/button_tonal.dart';
import 'package:matter/preview.dart';
import 'package:method/view/task_preview.dart';

class SettingsDev extends StatefulWidget {
  const SettingsDev({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<SettingsDev> createState() => _SettingsDevState();
}

class _SettingsDevState extends State<SettingsDev> {
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
          ],
        ),
      ),
    );
  }
}

void showDev({
  required BuildContext context,
  bool useRootNavigator = false,
}) {
  Navigator.of(context, rootNavigator: useRootNavigator)
      .push(MaterialPageRoute<void>(
    builder: (BuildContext context) => const SettingsDev(
      title: "Developers",
    ),
  ));
}
