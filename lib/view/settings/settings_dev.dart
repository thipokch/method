import 'package:element/element_icon.dart';
import 'package:flutter/material.dart';
import 'package:matter/preview.dart';
import 'package:method/view/task_preview.dart';

import '../../patch/app_bar.dart';

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
    final List<Widget> items = [
      ListTile(
        title: const Text("Matter UI"),
        trailing: const Icon(ElementIcon.chevronForward),
        onTap: () => showMatterPreview(context: context),
      ),
      ListTile(
        title: const Text("Task Component"),
        trailing: const Icon(ElementIcon.chevronForward),
        onTap: () => showTaskPreview(context: context),
      ),
    ];

    return Material(
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => <Widget>[
          SliverAppBarPatch.medium(
            leading: IconButton(
              icon: const Icon(ElementIcon.chevronBack),
              onPressed: () => Navigator.of(context).pop(),
              highlightColor: Colors.transparent,
            ),
            title: const Text('Developer'),
          ),
        ],
        body: ListView.separated(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
          separatorBuilder: (context, index) => const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Divider(
              height: 0,
            ),
          ),
          itemCount: items.length,
          itemBuilder: (context, index) => items[index],
        ),
      ),
    );
  }
}

void showDeveloperPage({
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
