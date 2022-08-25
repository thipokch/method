import 'package:element/element_icon.dart';
import 'package:flutter/material.dart';
import 'package:matter/page/page.dart';
import 'package:matter/preview.dart';
import 'package:method/view/task/task_preview.dart';

class DeveloperPage extends MethodPage {
  const DeveloperPage({
    Key? key,
    super.title = "Developer",
  }) : super(key: key);

  @override
  MethodPageBuilder get builder => ((context) => const _DeveloperList());
}

class _DeveloperList extends StatelessWidget {
  const _DeveloperList({Key? key}) : super(key: key);

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
        onTap: () => const TaskPreview().show(context: context),
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
  }
}