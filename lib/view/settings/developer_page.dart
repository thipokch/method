import 'package:element/element_symbol.dart';
import 'package:flutter/material.dart';
import 'package:matter/page/page.dart';
import 'package:matter/preview.dart';
import 'package:matter/scroll/pairing_scroll_controller.dart';
import 'package:method/view/task/task_preview.dart';

class DeveloperPage extends MethodPage {
  const DeveloperPage({
    Key? key,
    super.heroTag,
    super.leading,
    super.trailing,
    super.controller,
  }) : super(
          key: key,
          title: "Developer",
          child: const _DeveloperList(),
        );
}

class _DeveloperList extends StatelessWidget {
  const _DeveloperList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> items = [
      ListTile(
        title: const Text("Matter UI"),
        trailing: const Icon(ElementSymbol.chevronForward),
        onTap: () => showMatterPreview(context: context),
      ),
      ListTile(
        title: const Text("Task Component"),
        trailing: const Icon(ElementSymbol.chevronForward),
        onTap: () => show(
          context: context,
          builder: (context) => TaskPreview(
            controller: PairingScrollController.of(context)?.push(),
          ),
        ),
      ),
    ];

    return Column(
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
    //   itemCount: items.length,
    //   itemBuilder: (context, index) => items[index],
    // );
  }
}
